.class abstract Lcom/itextpdf/layout/renderer/TableBorders;
.super Ljava/lang/Object;
.source "TableBorders.java"


# instance fields
.field protected finishRow:I

.field protected horizontalBorders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;>;"
        }
    .end annotation
.end field

.field protected largeTableIndexOffset:I

.field protected leftBorderMaxWidth:F

.field protected final numberOfColumns:I

.field protected rightBorderMaxWidth:F

.field protected rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Lcom/itextpdf/layout/renderer/CellRenderer;",
            ">;"
        }
    .end annotation
.end field

.field protected startRow:I

.field protected tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

.field protected verticalBorders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;)V
    .locals 1
    .param p2, "numberOfColumns"    # I
    .param p3, "tableBoundingBorders"    # [Lcom/itextpdf/layout/borders/Border;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Lcom/itextpdf/layout/renderer/CellRenderer;",
            ">;I[",
            "Lcom/itextpdf/layout/borders/Border;",
            ")V"
        }
    .end annotation

    .line 128
    .local p1, "rows":Ljava/util/List;, "Ljava/util/List<[Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->horizontalBorders:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->verticalBorders:Ljava/util/List;

    .line 86
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/itextpdf/layout/borders/Border;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->largeTableIndexOffset:I

    .line 129
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->rows:Ljava/util/List;

    .line 130
    iput p2, p0, Lcom/itextpdf/layout/renderer/TableBorders;->numberOfColumns:I

    .line 131
    invoke-virtual {p0, p3}, Lcom/itextpdf/layout/renderer/TableBorders;->setTableBoundingBorders([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;I)V
    .locals 0
    .param p2, "numberOfColumns"    # I
    .param p3, "tableBoundingBorders"    # [Lcom/itextpdf/layout/borders/Border;
    .param p4, "largeTableIndexOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Lcom/itextpdf/layout/renderer/CellRenderer;",
            ">;I[",
            "Lcom/itextpdf/layout/borders/Border;",
            "I)V"
        }
    .end annotation

    .line 135
    .local p1, "rows":Ljava/util/List;, "Ljava/util/List<[Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/renderer/TableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;)V

    .line 136
    iput p4, p0, Lcom/itextpdf/layout/renderer/TableBorders;->largeTableIndexOffset:I

    .line 137
    return-void
.end method

.method private removeRows(II)V
    .locals 4
    .param p1, "startRow"    # I
    .param p2, "numOfRows"    # I

    .line 245
    move v0, p1

    .local v0, "row":I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->rows:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 247
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->horizontalBorders:Ljava/util/List;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 248
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lcom/itextpdf/layout/renderer/TableBorders;->numberOfColumns:I

    if-gt v1, v2, :cond_0

    .line 249
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 245
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "row":I
    :cond_1
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->finishRow:I

    sub-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 253
    return-void
.end method


# virtual methods
.method protected abstract applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract applyCellIndents(Lcom/itextpdf/kernel/geom/Rectangle;FFFFZ)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract applyLeftAndRightTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract buildBordersArrays(Lcom/itextpdf/layout/renderer/CellRenderer;II[I)V
.end method

.method protected abstract collapseTableWithFooter(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract collapseTableWithHeader(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract drawHorizontalBorder(IFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;[F)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract drawVerticalBorder(IFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Ljava/util/List;)Lcom/itextpdf/layout/renderer/TableBorders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/itextpdf/layout/renderer/TableBorders;"
        }
    .end annotation
.end method

.method protected abstract fixHeaderOccupiedArea(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method public getCellBorderIndents(IIII)[F
    .locals 8
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "rowspan"    # I
    .param p4, "colspan"    # I

    .line 400
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 404
    .local v0, "indents":[F
    iget v1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    add-int/2addr v1, p1

    sub-int/2addr v1, p3

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v1

    .line 405
    .local v1, "borderList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    move v3, p2

    .local v3, "i":I
    :goto_0
    add-int v4, p2, p4

    if-ge v3, v4, :cond_1

    .line 406
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    .line 407
    .local v4, "border":Lcom/itextpdf/layout/borders/Border;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    const/4 v6, 0x0

    aget v7, v0, v6

    cmpl-float v5, v5, v7

    if-lez v5, :cond_0

    .line 408
    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    aput v5, v0, v6

    .line 405
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 412
    .end local v3    # "i":I
    .end local v4    # "border":Lcom/itextpdf/layout/borders/Border;
    :cond_1
    add-int v3, p2, p4

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/TableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object v1

    .line 413
    iget v3, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    add-int/2addr v3, p1

    sub-int/2addr v3, p3

    add-int/2addr v3, v2

    .restart local v3    # "i":I
    :goto_1
    iget v4, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    add-int v5, v4, p1

    add-int/2addr v5, v2

    if-ge v3, v5, :cond_3

    .line 414
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    .line 415
    .restart local v4    # "border":Lcom/itextpdf/layout/borders/Border;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    aget v6, v0, v2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 416
    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    aput v5, v0, v2

    .line 413
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 420
    .end local v3    # "i":I
    .end local v4    # "border":Lcom/itextpdf/layout/borders/Border;
    :cond_3
    add-int/2addr v4, p1

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/TableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v1

    .line 421
    move v3, p2

    .restart local v3    # "i":I
    :goto_2
    add-int v4, p2, p4

    if-ge v3, v4, :cond_5

    .line 422
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    .line 423
    .restart local v4    # "border":Lcom/itextpdf/layout/borders/Border;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    const/4 v6, 0x2

    aget v7, v0, v6

    cmpl-float v5, v5, v7

    if-lez v5, :cond_4

    .line 424
    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    aput v5, v0, v6

    .line 421
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 428
    .end local v3    # "i":I
    .end local v4    # "border":Lcom/itextpdf/layout/borders/Border;
    :cond_5
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/TableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object v1

    .line 429
    iget v3, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    add-int/2addr v3, p1

    sub-int/2addr v3, p3

    add-int/2addr v3, v2

    .restart local v3    # "i":I
    :goto_3
    iget v4, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    add-int/2addr v4, p1

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_7

    .line 430
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    .line 431
    .restart local v4    # "border":Lcom/itextpdf/layout/borders/Border;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    const/4 v6, 0x3

    aget v7, v0, v6

    cmpl-float v5, v5, v7

    if-lez v5, :cond_6

    .line 432
    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    aput v5, v0, v6

    .line 429
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 435
    .end local v3    # "i":I
    .end local v4    # "border":Lcom/itextpdf/layout/borders/Border;
    :cond_7
    return-object v0
.end method

.method protected abstract getCellVerticalAddition([F)F
.end method

.method public getFinishRow()I
    .locals 1

    .line 392
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->finishRow:I

    return v0
.end method

.method public getFirstHorizontalBorder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 368
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirstVerticalBorder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getHorizontalBorder(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation
.end method

.method public getLastHorizontalBorder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 372
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->finishRow:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastVerticalBorder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLeftBorderMaxWidth()F
    .locals 1

    .line 308
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->leftBorderMaxWidth:F

    return v0
.end method

.method public getMaxBottomWidth()F
    .locals 3

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "width":F
    iget v1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->finishRow:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getWidestHorizontalBorder(I)Lcom/itextpdf/layout/borders/Border;

    move-result-object v1

    .line 327
    .local v1, "widestBorder":Lcom/itextpdf/layout/borders/Border;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_0

    .line 328
    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    .line 330
    :cond_0
    return v0
.end method

.method public getMaxLeftWidth()F
    .locals 3

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "width":F
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getWidestVerticalBorder(I)Lcom/itextpdf/layout/borders/Border;

    move-result-object v1

    .line 345
    .local v1, "widestBorder":Lcom/itextpdf/layout/borders/Border;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_0

    .line 346
    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    .line 348
    :cond_0
    return v0
.end method

.method public getMaxRightWidth()F
    .locals 3

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "width":F
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getWidestVerticalBorder(I)Lcom/itextpdf/layout/borders/Border;

    move-result-object v1

    .line 336
    .local v1, "widestBorder":Lcom/itextpdf/layout/borders/Border;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_0

    .line 337
    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    .line 339
    :cond_0
    return v0
.end method

.method public getMaxTopWidth()F
    .locals 3

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "width":F
    iget v1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getWidestHorizontalBorder(I)Lcom/itextpdf/layout/borders/Border;

    move-result-object v1

    .line 318
    .local v1, "widestBorder":Lcom/itextpdf/layout/borders/Border;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_0

    .line 319
    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    .line 321
    :cond_0
    return v0
.end method

.method public getNumberOfColumns()I
    .locals 1

    .line 384
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->numberOfColumns:I

    return v0
.end method

.method public getRightBorderMaxWidth()F
    .locals 1

    .line 312
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->rightBorderMaxWidth:F

    return v0
.end method

.method public getStartRow()I
    .locals 1

    .line 388
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    return v0
.end method

.method public getTableBoundingBorders()[Lcom/itextpdf/layout/borders/Border;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    return-object v0
.end method

.method public abstract getVerticalBorder(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation
.end method

.method public getWidestHorizontalBorder(I)Lcom/itextpdf/layout/borders/Border;
    .locals 1
    .param p1, "row"    # I

    .line 360
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->getWidestBorder(Ljava/util/List;)Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    return-object v0
.end method

.method public getWidestHorizontalBorder(III)Lcom/itextpdf/layout/borders/Border;
    .locals 1
    .param p1, "row"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 364
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->getWidestBorder(Ljava/util/List;II)Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    return-object v0
.end method

.method public getWidestVerticalBorder(I)Lcom/itextpdf/layout/borders/Border;
    .locals 1
    .param p1, "col"    # I

    .line 352
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->getWidestBorder(Ljava/util/List;)Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    return-object v0
.end method

.method public getWidestVerticalBorder(III)Lcom/itextpdf/layout/borders/Border;
    .locals 1
    .param p1, "col"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 356
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->getWidestBorder(Ljava/util/List;II)Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    return-object v0
.end method

.method protected initializeBorders()Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 5

    .line 259
    :goto_0
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->numberOfColumns:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-le v0, v2, :cond_1

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v0, "tempBorders":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableBorders;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v2, v4, :cond_0

    .line 262
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    .end local v0    # "tempBorders":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableBorders;->horizontalBorders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .restart local v0    # "tempBorders":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    :goto_3
    iget v2, p0, Lcom/itextpdf/layout/renderer/TableBorders;->numberOfColumns:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v2, v4, :cond_2

    .line 270
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 272
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableBorders;->horizontalBorders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 274
    .end local v0    # "tempBorders":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    :cond_3
    return-object p0
.end method

.method protected processAllBordersAndEmptyRows()Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 13

    .line 185
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->numberOfColumns:I

    new-array v0, v0, [I

    .line 186
    .local v0, "rowspansToDeduct":[I
    const/4 v1, 0x0

    .line 187
    .local v1, "numOfRowsToRemove":I
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableBorders;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 188
    iget v2, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    iget v3, p0, Lcom/itextpdf/layout/renderer/TableBorders;->largeTableIndexOffset:I

    sub-int/2addr v2, v3

    .local v2, "row":I
    :goto_0
    iget v3, p0, Lcom/itextpdf/layout/renderer/TableBorders;->finishRow:I

    iget v4, p0, Lcom/itextpdf/layout/renderer/TableBorders;->largeTableIndexOffset:I

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_9

    .line 189
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableBorders;->rows:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 190
    .local v3, "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    const/4 v4, 0x0

    .line 191
    .local v4, "hasCells":Z
    const/4 v5, 0x0

    .local v5, "col":I
    :goto_1
    iget v6, p0, Lcom/itextpdf/layout/renderer/TableBorders;->numberOfColumns:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v5, v6, :cond_5

    .line 192
    aget-object v6, v3, v5

    if-eqz v6, :cond_3

    .line 193
    aget-object v6, v3, v5

    const/16 v9, 0x10

    invoke-virtual {v6, v9}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 194
    .local v6, "colspan":I
    aget v9, v0, v5

    if-lez v9, :cond_1

    .line 195
    aget-object v9, v3, v5

    const/16 v10, 0x3c

    invoke-virtual {v9, v10}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget v11, v0, v5

    sub-int/2addr v9, v11

    .line 196
    .local v9, "rowspan":I
    if-ge v9, v8, :cond_0

    .line 197
    const-class v11, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-static {v11}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v11

    .line 198
    .local v11, "logger":Lorg/slf4j/Logger;
    const-string v12, "Unexpected behaviour during table row collapsing. Calculated rowspan was less then 1."

    invoke-interface {v11, v12}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 199
    const/4 v9, 0x1

    .line 201
    .end local v11    # "logger":Lorg/slf4j/Logger;
    :cond_0
    aget-object v11, v3, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    .line 202
    if-eqz v1, :cond_1

    .line 203
    sub-int v10, v2, v1

    invoke-direct {p0, v10, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->removeRows(II)V

    .line 204
    sub-int/2addr v2, v1

    .line 205
    const/4 v1, 0x0

    .line 208
    .end local v9    # "rowspan":I
    :cond_1
    aget-object v9, v3, v5

    invoke-virtual {p0, v9, v2, v5, v0}, Lcom/itextpdf/layout/renderer/TableBorders;->buildBordersArrays(Lcom/itextpdf/layout/renderer/CellRenderer;II[I)V

    .line 209
    const/4 v4, 0x1

    .line 210
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v6, :cond_2

    .line 211
    add-int v10, v5, v9

    aput v7, v0, v10

    .line 210
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 213
    .end local v9    # "i":I
    :cond_2
    add-int/lit8 v7, v6, -0x1

    add-int/2addr v5, v7

    .line 214
    .end local v6    # "colspan":I
    goto :goto_3

    .line 215
    :cond_3
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableBorders;->horizontalBorders:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v5, :cond_4

    .line 216
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableBorders;->horizontalBorders:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_4
    :goto_3
    add-int/2addr v5, v8

    goto :goto_1

    .line 220
    .end local v5    # "col":I
    :cond_5
    if-nez v4, :cond_8

    .line 221
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableBorders;->rows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v8

    if-ne v2, v5, :cond_6

    .line 222
    aget v5, v0, v7

    sub-int v5, v2, v5

    aget v6, v0, v7

    invoke-direct {p0, v5, v6}, Lcom/itextpdf/layout/renderer/TableBorders;->removeRows(II)V

    .line 224
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableBorders;->rows:Ljava/util/List;

    aget v6, v0, v7

    sub-int v6, v2, v6

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 225
    iget v5, p0, Lcom/itextpdf/layout/renderer/TableBorders;->finishRow:I

    sub-int/2addr v5, v8

    invoke-virtual {p0, v5}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 227
    const-class v5, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-static {v5}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    .line 228
    .local v5, "logger":Lorg/slf4j/Logger;
    const-string v6, "Last row is not completed. Table bottom border may collapse as you do not expect it"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 229
    .end local v5    # "logger":Lorg/slf4j/Logger;
    goto :goto_5

    .line 230
    :cond_6
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    iget v6, p0, Lcom/itextpdf/layout/renderer/TableBorders;->numberOfColumns:I

    if-ge v5, v6, :cond_7

    .line 231
    aget v6, v0, v5

    add-int/2addr v6, v8

    aput v6, v0, v5

    .line 230
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 233
    .end local v5    # "i":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 188
    .end local v4    # "hasCells":Z
    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 238
    .end local v2    # "row":I
    .end local v3    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    :cond_9
    iget v2, p0, Lcom/itextpdf/layout/renderer/TableBorders;->finishRow:I

    iget v3, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    if-ge v2, v3, :cond_a

    .line 239
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 241
    :cond_a
    return-object p0
.end method

.method protected setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0
    .param p1, "row"    # I

    .line 301
    iput p1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->finishRow:I

    .line 302
    return-object p0
.end method

.method protected setRowRange(II)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0
    .param p1, "startRow"    # I
    .param p2, "finishRow"    # I

    .line 290
    iput p1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    .line 291
    iput p2, p0, Lcom/itextpdf/layout/renderer/TableBorders;->finishRow:I

    .line 292
    return-object p0
.end method

.method protected setStartRow(I)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0
    .param p1, "row"    # I

    .line 296
    iput p1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    .line 297
    return-object p0
.end method

.method protected setTableBoundingBorders([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 3
    .param p1, "borders"    # [Lcom/itextpdf/layout/borders/Border;

    .line 280
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/itextpdf/layout/borders/Border;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    .line 281
    if-eqz p1, :cond_0

    .line 282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method protected abstract skipFooter([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract skipHeader([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract updateBordersOnNewPage(ZZLcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/layout/renderer/TableRenderer;)Lcom/itextpdf/layout/renderer/TableBorders;
.end method
