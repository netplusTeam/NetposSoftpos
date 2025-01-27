.class public Lcom/itextpdf/layout/renderer/TableRenderer;
.super Lcom/itextpdf/layout/renderer/AbstractRenderer;
.source "TableRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;,
        Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;
    }
.end annotation


# instance fields
.field bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

.field protected captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

.field private columnWidths:[F

.field private countedColumnWidth:[F

.field protected footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

.field protected headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

.field private heights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected isOriginalNonSplitRenderer:Z

.field protected rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

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

.field private topBorderMaxWidth:F

.field private totalWidthForColumns:F


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->columnWidths:[F

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    .line 99
    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/element/Table;)V
    .locals 3
    .param p1, "modelElement"    # Lcom/itextpdf/layout/element/Table;

    .line 124
    new-instance v0, Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Table;->getNumberOfRows()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/layout/element/Table$RowRange;-><init>(II)V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;-><init>(Lcom/itextpdf/layout/element/Table;Lcom/itextpdf/layout/element/Table$RowRange;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/element/Table;Lcom/itextpdf/layout/element/Table$RowRange;)V
    .locals 2
    .param p1, "modelElement"    # Lcom/itextpdf/layout/element/Table;
    .param p2, "rowRange"    # Lcom/itextpdf/layout/element/Table$RowRange;

    .line 114
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;-><init>(Lcom/itextpdf/layout/element/IElement;)V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->columnWidths:[F

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    .line 99
    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    .line 115
    invoke-direct {p0, p2}, Lcom/itextpdf/layout/renderer/TableRenderer;->setRowRange(Lcom/itextpdf/layout/element/Table$RowRange;)V

    .line 116
    return-void
.end method

.method private adjustCaptionAndFixOccupiedArea(Lcom/itextpdf/kernel/geom/Rectangle;F)V
    .locals 4
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "verticalBorderSpacing"    # F

    .line 1539
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    if-eqz v0, :cond_1

    .line 1540
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/DivRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    .line 1541
    .local v0, "captionHeight":F
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1542
    sget-object v1, Lcom/itextpdf/layout/property/CaptionSide;->BOTTOM:Lcom/itextpdf/layout/property/CaptionSide;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    const/16 v3, 0x77

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/DivRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/property/CaptionSide;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1543
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    add-float/2addr v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/layout/renderer/DivRenderer;->move(FF)V

    goto :goto_0

    .line 1545
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1548
    .end local v0    # "captionHeight":F
    :cond_1
    :goto_0
    return-void
.end method

.method private adjustFooterAndFixOccupiedArea(Lcom/itextpdf/kernel/geom/Rectangle;F)V
    .locals 3
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "verticalBorderSpacing"    # F

    .line 1525
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_0

    .line 1526
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    add-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->move(FF)V

    .line 1527
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    sub-float/2addr v0, p2

    .line 1528
    .local v0, "footerHeight":F
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1530
    .end local v0    # "footerHeight":F
    :cond_0
    return-void
.end method

.method private applyFixedXOrYPosition(ZLcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 3
    .param p1, "isXPosition"    # Z
    .param p2, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1505
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1506
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFixedLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1507
    if-eqz p1, :cond_0

    .line 1508
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1509
    .local v0, "x":F
    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1510
    .end local v0    # "x":F
    goto :goto_0

    .line 1511
    :cond_0
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1512
    .local v0, "y":F
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    sub-float v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->move(FF)V

    .line 1516
    .end local v0    # "y":F
    :cond_1
    :goto_0
    return-void
.end method

.method private applySingleSpacing(Lcom/itextpdf/kernel/geom/Rectangle;FZZ)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 7
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "spacing"    # F
    .param p3, "isHorizontal"    # Z
    .param p4, "reverse"    # Z

    .line 203
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v0, :cond_1

    .line 204
    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p3, :cond_0

    .line 205
    const/4 v2, 0x0

    div-float v3, p2, v0

    const/4 v4, 0x0

    div-float v5, p2, v0

    move-object v1, p1

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0

    .line 207
    :cond_0
    div-float v2, p2, v0

    const/4 v3, 0x0

    div-float v4, p2, v0

    const/4 v5, 0x0

    move-object v1, p1

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0

    .line 212
    :cond_1
    return-object p1
.end method

.method private applySpacing(Lcom/itextpdf/kernel/geom/Rectangle;FFZ)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 7
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "horizontalSpacing"    # F
    .param p3, "verticalSpacing"    # F
    .param p4, "reverse"    # Z

    .line 184
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v0, :cond_0

    .line 185
    const/high16 v0, 0x40000000    # 2.0f

    div-float v2, p3, v0

    div-float v3, p2, v0

    div-float v4, p3, v0

    div-float v5, p2, v0

    move-object v1, p1

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0

    .line 189
    :cond_0
    return-object p1
.end method

.method private calculateColumnWidths(F)V
    .locals 7
    .param p1, "availableWidth"    # F

    .line 1812
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->totalWidthForColumns:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 1813
    :cond_0
    new-instance v0, Lcom/itextpdf/layout/renderer/TableWidths;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget v5, v1, Lcom/itextpdf/layout/renderer/TableBorders;->rightBorderMaxWidth:F

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget v6, v1, Lcom/itextpdf/layout/renderer/TableBorders;->leftBorderMaxWidth:F

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/layout/renderer/TableWidths;-><init>(Lcom/itextpdf/layout/renderer/TableRenderer;FZFF)V

    .line 1814
    .local v0, "tableWidths":Lcom/itextpdf/layout/renderer/TableWidths;
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableWidths;->layout()[F

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    .line 1816
    .end local v0    # "tableWidths":Lcom/itextpdf/layout/renderer/TableWidths;
    :cond_1
    return-void
.end method

.method private correctLayoutedCellsOccupiedAreas([Lcom/itextpdf/layout/layout/LayoutResult;I[ILjava/lang/Float;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/List;ZZZ)V
    .locals 20
    .param p1, "splits"    # [Lcom/itextpdf/layout/layout/LayoutResult;
    .param p2, "row"    # I
    .param p3, "targetOverflowRowIndex"    # [I
    .param p4, "blockMinHeight"    # Ljava/lang/Float;
    .param p5, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p7, "isLastRenderer"    # Z
    .param p8, "processBigRowspan"    # Z
    .param p9, "skip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            "I[I",
            "Ljava/lang/Float;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 1556
    .local p6, "rowsHasCellWithSetHeight":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    iget-object v0, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getFinishRow()I

    move-result v11

    .line 1557
    .local v11, "finish":I
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1560
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    add-int/lit8 v1, v11, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getWidestHorizontalBorder(I)Lcom/itextpdf/layout/borders/Border;

    move-result-object v12

    .line 1561
    .local v12, "currentBorder":Lcom/itextpdf/layout/borders/Border;
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0, v11}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1562
    const/4 v0, 0x2

    if-eqz p9, :cond_0

    .line 1564
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 1565
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v2, v1, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->skipFooter([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1567
    :cond_0
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v1, v1, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez v12, :cond_1

    move v1, v2

    goto :goto_0

    .line 1568
    :cond_1
    invoke-virtual {v12}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    move v13, v1

    .line 1570
    .local v13, "currentBottomIndent":F
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v3, v1, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    if-eqz v3, :cond_3

    .line 1571
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxBottomWidth()F

    move-result v2

    goto :goto_1

    :cond_3
    nop

    :goto_1
    move v14, v2

    .line 1573
    .local v14, "realBottomIndent":F
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_b

    .line 1574
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float v5, v14, v13

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1576
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    sub-float v3, v14, v13

    div-float/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    sub-float v3, v14, v13

    div-float/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1577
    sub-float v1, v14, v13

    div-float/2addr v1, v2

    invoke-virtual {v9, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1578
    if-eqz p8, :cond_b

    .line 1580
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    iget-object v3, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 1581
    .local v1, "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    const/4 v3, 0x0

    .local v3, "col":I
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_a

    .line 1582
    aget-object v4, p1, v3

    if-nez v4, :cond_4

    aget-object v4, v1, v3

    goto :goto_3

    :cond_4
    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 1583
    .local v4, "cell":Lcom/itextpdf/layout/renderer/CellRenderer;
    :goto_3
    if-nez v4, :cond_5

    .line 1584
    move/from16 v16, v0

    move-object/from16 v18, v1

    goto/16 :goto_6

    .line 1586
    :cond_5
    const/4 v5, 0x0

    .line 1587
    .local v5, "height":F
    const/16 v6, 0x3c

    invoke-virtual {v4, v6}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1588
    .local v6, "rowspan":I
    const/16 v7, 0x10

    invoke-virtual {v4, v7}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1589
    .local v7, "colspan":I
    iget-object v15, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    add-int/lit8 v15, v15, -0x1

    .local v15, "l":I
    :goto_4
    aget v16, p3, v3

    sub-int v0, v16, v6

    if-le v15, v0, :cond_6

    if-ltz v15, :cond_6

    .line 1590
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v5, v0

    .line 1589
    add-int/lit8 v15, v15, -0x1

    const/4 v0, 0x2

    goto :goto_4

    .line 1593
    .end local v15    # "l":I
    :cond_6
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v15, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v15, :cond_7

    move/from16 v15, p2

    goto :goto_5

    :cond_7
    aget v15, p3, v3

    :goto_5
    invoke-virtual {v0, v15, v3, v6, v7}, Lcom/itextpdf/layout/renderer/TableBorders;->getCellBorderIndents(IIII)[F

    move-result-object v0

    .line 1595
    .local v0, "indents":[F
    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/CellRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v15

    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v15

    invoke-virtual {v15}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v15

    sub-float/2addr v15, v5

    const/16 v16, 0x0

    aget v16, v0, v16

    div-float v16, v16, v2

    add-float v15, v15, v16

    const/16 v16, 0x2

    aget v17, v0, v16

    div-float v17, v17, v2

    add-float v15, v15, v17

    .line 1597
    .local v15, "cellHeightInLastRow":F
    iget-object v2, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v19, v0

    .end local v0    # "indents":[F
    .local v19, "indents":[F
    add-int/lit8 v0, v18, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v0, v15

    if-gez v0, :cond_9

    .line 1598
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v0, :cond_8

    .line 1599
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v15, v0

    .line 1600
    .local v0, "differenceToConsider":F
    iget-object v2, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1601
    iget-object v2, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1603
    .end local v0    # "differenceToConsider":F
    :cond_8
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v18, v1

    .end local v1    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .local v18, "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1597
    .end local v18    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .restart local v1    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    :cond_9
    move-object/from16 v18, v1

    .line 1581
    .end local v1    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v4    # "cell":Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v5    # "height":F
    .end local v6    # "rowspan":I
    .end local v7    # "colspan":I
    .end local v15    # "cellHeightInLastRow":F
    .end local v19    # "indents":[F
    .restart local v18    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    :goto_6
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v16

    move-object/from16 v1, v18

    const/high16 v2, 0x40000000    # 2.0f

    goto/16 :goto_2

    .end local v18    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .restart local v1    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    :cond_a
    move-object/from16 v18, v1

    .line 1608
    .end local v1    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v3    # "col":I
    :cond_b
    const/4 v0, 0x0

    .line 1609
    .local v0, "additionalCellHeight":F
    const/4 v1, 0x0

    .line 1610
    .local v1, "numOfRowsWithFloatHeight":I
    if-eqz p7, :cond_12

    .line 1611
    const/4 v2, 0x0

    .line 1612
    .local v2, "additionalHeight":F
    if-eqz p4, :cond_d

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v14, v5

    add-float/2addr v4, v6

    cmpl-float v3, v3, v4

    if-lez v3, :cond_d

    .line 1613
    invoke-virtual/range {p5 .. p5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    div-float v4, v14, v5

    sub-float/2addr v3, v4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v6, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    sub-float/2addr v4, v6

    div-float v5, v14, v5

    sub-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1614
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_7
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    .line 1615
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1616
    add-int/lit8 v1, v1, 0x1

    .line 1614
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1620
    .end local v3    # "k":I
    :cond_d
    if-nez v1, :cond_e

    iget-object v3, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_8

    :cond_e
    move v3, v1

    :goto_8
    int-to-float v3, v3

    div-float v0, v2, v3

    .line 1621
    const/4 v3, 0x0

    .restart local v3    # "k":I
    :goto_9
    iget-object v4, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_11

    .line 1622
    if-eqz v1, :cond_f

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1623
    :cond_f
    iget-object v4, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1621
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_11
    move v15, v0

    move/from16 v16, v1

    goto :goto_a

    .line 1610
    .end local v2    # "additionalHeight":F
    .end local v3    # "k":I
    :cond_12
    move v15, v0

    move/from16 v16, v1

    .line 1627
    .end local v0    # "additionalCellHeight":F
    .end local v1    # "numOfRowsWithFloatHeight":I
    .local v15, "additionalCellHeight":F
    .local v16, "numOfRowsWithFloatHeight":I
    :goto_a
    const/4 v0, 0x0

    .line 1629
    .local v0, "cumulativeShift":F
    const/4 v1, 0x0

    move v7, v0

    move v6, v1

    .end local v0    # "cumulativeShift":F
    .local v6, "k":I
    .local v7, "cumulativeShift":F
    :goto_b
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_15

    .line 1630
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v6

    move-object/from16 v5, p6

    move/from16 v17, v11

    move v11, v6

    .end local v6    # "k":I
    .local v11, "k":I
    .local v17, "finish":I
    move v6, v7

    move-object/from16 v18, v12

    move v12, v7

    .end local v7    # "cumulativeShift":F
    .local v12, "cumulativeShift":F
    .local v18, "currentBorder":Lcom/itextpdf/layout/borders/Border;
    move v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->correctRowCellsOccupiedAreas([Lcom/itextpdf/layout/layout/LayoutResult;I[IILjava/util/List;FF)V

    .line 1631
    if-eqz p7, :cond_14

    .line 1632
    if-eqz v16, :cond_13

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1633
    :cond_13
    add-float v7, v12, v15

    .end local v12    # "cumulativeShift":F
    .restart local v7    # "cumulativeShift":F
    goto :goto_c

    .line 1629
    .end local v7    # "cumulativeShift":F
    .restart local v12    # "cumulativeShift":F
    :cond_14
    move v7, v12

    .end local v12    # "cumulativeShift":F
    .restart local v7    # "cumulativeShift":F
    :goto_c
    add-int/lit8 v6, v11, 0x1

    move/from16 v11, v17

    move-object/from16 v12, v18

    .end local v11    # "k":I
    .restart local v6    # "k":I
    goto :goto_b

    .end local v17    # "finish":I
    .end local v18    # "currentBorder":Lcom/itextpdf/layout/borders/Border;
    .local v11, "finish":I
    .local v12, "currentBorder":Lcom/itextpdf/layout/borders/Border;
    :cond_15
    move-object/from16 v18, v12

    move v12, v7

    .line 1638
    .end local v6    # "k":I
    .end local v7    # "cumulativeShift":F
    .local v12, "cumulativeShift":F
    .restart local v18    # "currentBorder":Lcom/itextpdf/layout/borders/Border;
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1639
    invoke-virtual {v9, v12}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1640
    return-void
.end method

.method private correctRowCellsOccupiedAreas([Lcom/itextpdf/layout/layout/LayoutResult;I[IILjava/util/List;FF)V
    .locals 18
    .param p1, "splits"    # [Lcom/itextpdf/layout/layout/LayoutResult;
    .param p2, "row"    # I
    .param p3, "targetOverflowRowIndex"    # [I
    .param p4, "currentRowIndex"    # I
    .param p6, "cumulativeShift"    # F
    .param p7, "additionalCellHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            "I[II",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;FF)V"
        }
    .end annotation

    .line 1644
    .local p5, "rowsHasCellWithSetHeight":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p4

    iget-object v0, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 1645
    .local v4, "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    const/4 v0, 0x0

    move v5, v0

    .local v5, "col":I
    :goto_0
    array-length v0, v4

    if-ge v5, v0, :cond_a

    .line 1646
    if-lt v3, v2, :cond_1

    aget-object v0, p1, v5

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v0, p1, v5

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/CellRenderer;

    goto :goto_2

    :cond_1
    :goto_1
    aget-object v0, v4, v5

    :goto_2
    move-object v6, v0

    .line 1647
    .local v6, "cell":Lcom/itextpdf/layout/renderer/CellRenderer;
    if-nez v6, :cond_2

    .line 1648
    move-object/from16 v13, p5

    goto/16 :goto_9

    .line 1650
    :cond_2
    const/4 v0, 0x0

    .line 1651
    .local v0, "height":F
    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1652
    .local v7, "colspan":I
    const/16 v8, 0x3c

    invoke-virtual {v6, v8}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1653
    .local v8, "rowspan":I
    const/4 v9, 0x0

    .line 1655
    .local v9, "rowspanOffset":F
    const/4 v10, 0x1

    if-ge v3, v2, :cond_3

    move v11, v3

    goto :goto_3

    :cond_3
    iget-object v11, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v10

    :goto_3
    sub-int/2addr v11, v10

    .local v11, "l":I
    :goto_4
    if-ge v3, v2, :cond_4

    move v12, v3

    goto :goto_5

    :cond_4
    aget v12, p3, v5

    :goto_5
    sub-int/2addr v12, v8

    if-le v11, v12, :cond_6

    if-ltz v11, :cond_6

    .line 1656
    iget-object v12, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v0, v12

    .line 1657
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v13, p5

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1658
    add-float v9, v9, p7

    .line 1655
    :cond_5
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    :cond_6
    move-object/from16 v13, p5

    .line 1661
    .end local v11    # "l":I
    iget-object v11, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    if-ge v3, v2, :cond_7

    move v12, v3

    goto :goto_6

    :cond_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v10

    :goto_6
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    add-float/2addr v0, v11

    .line 1662
    iget-object v11, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    if-lt v3, v2, :cond_9

    instance-of v12, v11, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v12, :cond_8

    goto :goto_7

    :cond_8
    aget v12, p3, v5

    goto :goto_8

    :cond_9
    :goto_7
    move v12, v3

    :goto_8
    invoke-virtual {v11, v12, v5, v8, v7}, Lcom/itextpdf/layout/renderer/TableBorders;->getCellBorderIndents(IIII)[F

    move-result-object v11

    .line 1665
    .local v11, "indents":[F
    const/4 v12, 0x0

    aget v14, v11, v12

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    const/16 v16, 0x2

    aget v16, v11, v16

    div-float v16, v16, v15

    add-float v14, v14, v16

    sub-float v14, v0, v14

    .line 1668
    .end local v0    # "height":F
    .local v14, "height":F
    invoke-virtual {v6}, Lcom/itextpdf/layout/renderer/CellRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    sub-float v15, v14, v0

    .line 1669
    .local v15, "shift":F
    invoke-virtual {v6}, Lcom/itextpdf/layout/renderer/CellRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v12

    .line 1670
    .local v12, "bBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v12, v15}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1672
    const/4 v0, 0x0

    sub-float v10, p6, v9

    neg-float v10, v10

    :try_start_0
    invoke-virtual {v6, v0, v10}, Lcom/itextpdf/layout/renderer/CellRenderer;->move(FF)V

    .line 1673
    invoke-virtual {v12, v14}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1674
    invoke-virtual {v6}, Lcom/itextpdf/layout/renderer/CellRenderer;->applyVerticalAlignment()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    goto :goto_9

    .line 1677
    :catch_0
    move-exception v0

    .line 1678
    .local v0, "e":Ljava/lang/NullPointerException;
    const-class v10, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-static {v10}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v10

    .line 1679
    .local v10, "logger":Lorg/slf4j/Logger;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v17, "Some of the cell\'s content might not end up placed correctly."

    const/16 v16, 0x0

    aput-object v17, v1, v16

    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/lang/NullPointerException;
    .local v16, "e":Ljava/lang/NullPointerException;
    const-string v0, "Occupied area has not been initialized. {0}"

    invoke-static {v0, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1645
    .end local v6    # "cell":Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v7    # "colspan":I
    .end local v8    # "rowspan":I
    .end local v9    # "rowspanOffset":F
    .end local v10    # "logger":Lorg/slf4j/Logger;
    .end local v11    # "indents":[F
    .end local v12    # "bBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v14    # "height":F
    .end local v15    # "shift":F
    .end local v16    # "e":Ljava/lang/NullPointerException;
    :goto_9
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_a
    move-object/from16 v13, p5

    .line 1682
    .end local v5    # "col":I
    return-void
.end method

.method private correctRowRange()V
    .locals 4

    .line 1356
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1357
    new-instance v0, Lcom/itextpdf/layout/element/Table$RowRange;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/element/Table$RowRange;-><init>(II)V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    .line 1359
    :cond_0
    return-void
.end method

.method private drawBorders(Lcom/itextpdf/layout/renderer/DrawContext;ZZ)V
    .locals 19
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;
    .param p2, "hasHeader"    # Z
    .param p3, "hasFooter"    # Z

    .line 1375
    move-object/from16 v0, p0

    const-class v1, Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v2, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    .line 1376
    .local v2, "height":F
    iget-object v3, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v3, :cond_0

    .line 1377
    iget-object v3, v3, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    .line 1379
    :cond_0
    iget-object v3, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v3, :cond_1

    .line 1380
    iget-object v3, v3, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    .line 1382
    :cond_1
    const v3, 0x38d1b717    # 1.0E-4f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    .line 1383
    return-void

    .line 1386
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v3

    iget-object v4, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/TableBorders;->getLeftBorderMaxWidth()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 1387
    .local v3, "startX":F
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    add-float/2addr v4, v6

    .line 1388
    .local v4, "startY":F
    iget-object v6, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v6, :cond_3

    .line 1389
    iget-object v6, v6, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    sub-float/2addr v4, v6

    .line 1390
    iget v6, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->topBorderMaxWidth:F

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    goto :goto_0

    .line 1392
    :cond_3
    iget v6, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->topBorderMaxWidth:F

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    .line 1394
    :goto_0
    const/16 v6, 0x2e

    invoke-virtual {v0, v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->hasProperty(I)Z

    move-result v7

    const-string v8, "Property {0} in percents is not supported"

    const/4 v9, 0x0

    const/16 v10, 0x2c

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v7, :cond_6

    .line 1395
    invoke-virtual {v0, v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v6

    .line 1396
    .local v6, "topMargin":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1397
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v7

    .line 1398
    .local v7, "logger":Lorg/slf4j/Logger;
    new-array v13, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v12

    invoke-static {v8, v13}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1400
    .end local v7    # "logger":Lorg/slf4j/Logger;
    :cond_4
    if-nez v6, :cond_5

    move v7, v9

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v7

    :goto_1
    sub-float/2addr v4, v7

    .line 1402
    .end local v6    # "topMargin":Lcom/itextpdf/layout/property/UnitValue;
    :cond_6
    invoke-virtual {v0, v10}, Lcom/itextpdf/layout/renderer/TableRenderer;->hasProperty(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1403
    invoke-virtual {v0, v10}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v6

    .line 1404
    .local v6, "leftMargin":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1405
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 1406
    .local v1, "logger":Lorg/slf4j/Logger;
    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v12

    invoke-static {v8, v7}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1408
    .end local v1    # "logger":Lorg/slf4j/Logger;
    :cond_7
    if-nez v6, :cond_8

    move v1, v9

    goto :goto_2

    :cond_8
    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    :goto_2
    add-float/2addr v3, v1

    .line 1413
    .end local v6    # "leftMargin":Lcom/itextpdf/layout/property/UnitValue;
    :cond_9
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 1414
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    .line 1415
    .local v1, "borders":[Lcom/itextpdf/layout/borders/Border;
    aget-object v6, v1, v12

    const/4 v7, 0x2

    if-eqz v6, :cond_a

    .line 1416
    aget-object v6, v1, v7

    if-eqz v6, :cond_b

    .line 1417
    iget-object v6, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_b

    .line 1418
    iget-object v6, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    aget-object v8, v1, v12

    invoke-virtual {v8}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v8

    div-float/2addr v8, v5

    aget-object v7, v1, v7

    invoke-virtual {v7}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v7

    div-float/2addr v7, v5

    add-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v6, v12, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 1421
    :cond_a
    aget-object v6, v1, v7

    if-eqz v6, :cond_b

    .line 1422
    aget-object v6, v1, v7

    invoke-virtual {v6}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v6

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    .line 1424
    :cond_b
    :goto_3
    iget-object v5, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_c

    .line 1425
    iget-object v5, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1429
    .end local v1    # "borders":[Lcom/itextpdf/layout/borders/Border;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->isTaggingEnabled()Z

    move-result v1

    .line 1430
    .local v1, "isTagged":Z
    if-eqz v1, :cond_d

    .line 1431
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;

    invoke-direct {v6}, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;-><init>()V

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1435
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isTopTablePart()Z

    move-result v5

    .line 1436
    .local v5, "isTopTablePart":Z
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isBottomTablePart()Z

    move-result v6

    .line 1437
    .local v6, "isBottomTablePart":Z
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v7

    .line 1438
    .local v7, "isComplete":Z
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRendererOfLargeTable()Z

    move-result v8

    .line 1440
    .local v8, "isFooterRendererOfLargeTable":Z
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v10, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v10}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v10

    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v13}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v13

    iget-object v14, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    add-int/2addr v13, v14

    sub-int/2addr v13, v11

    invoke-virtual {v9, v10, v13}, Lcom/itextpdf/layout/renderer/TableBorders;->setRowRange(II)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1442
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v10, v9, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    if-eqz v10, :cond_f

    .line 1443
    if-eqz p3, :cond_e

    .line 1444
    check-cast v9, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    iget-object v10, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v10, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v10}, Lcom/itextpdf/layout/renderer/TableBorders;->getFirstHorizontalBorder()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setBottomBorderCollapseWith(Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    goto :goto_4

    .line 1445
    :cond_e
    if-eqz v6, :cond_f

    .line 1446
    check-cast v9, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setBottomBorderCollapseWith(Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    .line 1450
    :cond_f
    :goto_4
    move v9, v4

    .line 1451
    .local v9, "y1":F
    if-eqz v8, :cond_10

    .line 1452
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v17

    iget-object v10, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    move v15, v3

    move/from16 v16, v9

    move-object/from16 v18, v10

    invoke-virtual/range {v13 .. v18}, Lcom/itextpdf/layout/renderer/TableBorders;->drawHorizontalBorder(IFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;[F)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1454
    :cond_10
    iget-object v10, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_11

    .line 1455
    iget-object v10, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    sub-float/2addr v9, v10

    .line 1457
    :cond_11
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_5
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_13

    .line 1458
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v17

    iget-object v11, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    move v14, v10

    move v15, v3

    move/from16 v16, v9

    move-object/from16 v18, v11

    invoke-virtual/range {v13 .. v18}, Lcom/itextpdf/layout/renderer/TableBorders;->drawHorizontalBorder(IFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;[F)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1459
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_12

    .line 1460
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    sub-float/2addr v9, v11

    .line 1457
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1463
    .end local v10    # "i":I
    :cond_13
    if-nez v6, :cond_14

    if-eqz v7, :cond_14

    .line 1464
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v10, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v17

    iget-object v10, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    move v15, v3

    move/from16 v16, v9

    move-object/from16 v18, v10

    invoke-virtual/range {v13 .. v18}, Lcom/itextpdf/layout/renderer/TableBorders;->drawHorizontalBorder(IFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;[F)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1467
    :cond_14
    move v10, v3

    .line 1468
    .local v10, "x1":F
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    array-length v13, v11

    if-lez v13, :cond_15

    .line 1469
    aget v11, v11, v12

    add-float/2addr v10, v11

    .line 1471
    :cond_15
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_6
    iget-object v12, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v12}, Lcom/itextpdf/layout/renderer/TableBorders;->getNumberOfColumns()I

    move-result v12

    if-ge v11, v12, :cond_17

    .line 1472
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v17

    iget-object v12, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    move v14, v11

    move v15, v4

    move/from16 v16, v10

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Lcom/itextpdf/layout/renderer/TableBorders;->drawVerticalBorder(IFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Ljava/util/List;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1473
    iget-object v12, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    array-length v13, v12

    if-ge v11, v13, :cond_16

    .line 1474
    aget v12, v12, v11

    add-float/2addr v10, v12

    .line 1471
    :cond_16
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1479
    .end local v11    # "i":I
    :cond_17
    if-eqz v5, :cond_18

    .line 1480
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v17

    iget-object v11, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    move v15, v3

    move/from16 v16, v4

    move-object/from16 v18, v11

    invoke-virtual/range {v13 .. v18}, Lcom/itextpdf/layout/renderer/TableBorders;->drawHorizontalBorder(IFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;[F)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1487
    :cond_18
    if-eqz v6, :cond_1a

    if-nez v7, :cond_19

    iget-boolean v11, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->isLastRendererForModelElement:Z

    if-nez v11, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isEmptyTableRenderer()Z

    move-result v11

    if-nez v11, :cond_1a

    .line 1488
    :cond_19
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v11, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v17

    iget-object v11, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    move v15, v3

    move/from16 v16, v9

    move-object/from16 v18, v11

    invoke-virtual/range {v13 .. v18}, Lcom/itextpdf/layout/renderer/TableBorders;->drawHorizontalBorder(IFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;[F)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1491
    :cond_1a
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v17

    iget-object v11, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    move v15, v4

    move/from16 v16, v3

    move-object/from16 v18, v11

    invoke-virtual/range {v13 .. v18}, Lcom/itextpdf/layout/renderer/TableBorders;->drawVerticalBorder(IFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Ljava/util/List;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1493
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v13}, Lcom/itextpdf/layout/renderer/TableBorders;->getNumberOfColumns()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v17

    iget-object v11, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    move/from16 v16, v10

    move-object/from16 v18, v11

    invoke-virtual/range {v13 .. v18}, Lcom/itextpdf/layout/renderer/TableBorders;->drawVerticalBorder(IFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Ljava/util/List;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1495
    if-eqz v1, :cond_1b

    .line 1496
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closeTag()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1498
    :cond_1b
    return-void
.end method

.method private enlargeCell(III[Lcom/itextpdf/layout/renderer/CellRenderer;Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;[I[Lcom/itextpdf/layout/renderer/TableRenderer;)V
    .locals 13
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "minRowspan"    # I
    .param p4, "currentRow"    # [Lcom/itextpdf/layout/renderer/CellRenderer;
    .param p5, "overflowRows"    # Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .param p6, "targetOverflowRowIndex"    # [I
    .param p7, "splitResult"    # [Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 1906
    move-object v8, p0

    move v9, p1

    move-object/from16 v10, p5

    aget-object v0, p4, v9

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v11

    .line 1907
    .local v11, "cellOccupiedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    const/4 v0, 0x1

    move/from16 v12, p3

    if-ne v0, v12, :cond_0

    .line 1912
    aget-object v1, p4, v9

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/element/Cell;->clone(Z)Lcom/itextpdf/layout/element/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Cell;->getRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 1913
    .local v0, "overflowCell":Lcom/itextpdf/layout/renderer/CellRenderer;
    invoke-virtual {v0, p0}, Lcom/itextpdf/layout/renderer/CellRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1914
    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->deleteProperty(I)V

    .line 1915
    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->deleteProperty(I)V

    .line 1916
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->deleteProperty(I)V

    .line 1917
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v10, v1, p1, v2}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 1918
    aget v3, p6, v9

    sub-int/2addr v3, p2

    invoke-virtual {v10, v3, p1, v0}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 1919
    iget-object v3, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    aget-object v4, p4, v9

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1920
    aget-object v3, p4, v9

    .line 1921
    .local v3, "originalCell":Lcom/itextpdf/layout/renderer/CellRenderer;
    aput-object v2, p4, v9

    .line 1922
    iget-object v2, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    aget v4, p6, v9

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aput-object v3, v2, v9

    .line 1923
    iput-boolean v1, v3, Lcom/itextpdf/layout/renderer/CellRenderer;->isLastRendererForModelElement:Z

    .line 1924
    const/16 v1, 0x6d

    invoke-virtual {v3, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1925
    .end local v0    # "overflowCell":Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v3    # "originalCell":Lcom/itextpdf/layout/renderer/CellRenderer;
    goto :goto_0

    .line 1926
    :cond_0
    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move v3, p2

    move v4, p1

    move/from16 v5, p3

    move-object/from16 v6, p7

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->enlargeCellWithBigRowspan([Lcom/itextpdf/layout/renderer/CellRenderer;Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;III[Lcom/itextpdf/layout/renderer/TableRenderer;[I)V

    .line 1928
    :goto_0
    aget v0, p6, v9

    sub-int/2addr v0, p2

    invoke-virtual {v10, v0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->getCell(II)Lcom/itextpdf/layout/renderer/CellRenderer;

    move-result-object v0

    iput-object v11, v0, Lcom/itextpdf/layout/renderer/CellRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 1929
    return-void
.end method

.method private enlargeCellWithBigRowspan([Lcom/itextpdf/layout/renderer/CellRenderer;Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;III[Lcom/itextpdf/layout/renderer/TableRenderer;[I)V
    .locals 5
    .param p1, "currentRow"    # [Lcom/itextpdf/layout/renderer/CellRenderer;
    .param p2, "overflowRows"    # Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .param p3, "row"    # I
    .param p4, "col"    # I
    .param p5, "minRowspan"    # I
    .param p6, "splitResult"    # [Lcom/itextpdf/layout/renderer/TableRenderer;
    .param p7, "targetOverflowRowIndex"    # [I

    .line 1881
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    aget-object v1, p1, p4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1883
    move v0, p3

    .line 1884
    .local v0, "i":I
    :goto_0
    add-int v1, p3, p5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    aget-object v1, p6, v3

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr v4, p3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v1, v1, p4

    if-eqz v1, :cond_0

    .line 1885
    sub-int v1, v0, p3

    aget-object v3, p6, v3

    iget-object v3, v3, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr v4, p3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v3, v3, p4

    invoke-virtual {p2, v1, p4, v3}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 1886
    add-int/lit8 v1, v0, 0x1

    sub-int/2addr v1, p3

    invoke-virtual {p2, v1, p4, v2}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 1887
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itextpdf/layout/renderer/CellRenderer;

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v3, v3, p4

    aput-object v3, v1, p4

    .line 1888
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aput-object v2, v1, p4

    .line 1884
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1892
    :cond_0
    add-int v1, p3, p5

    sub-int/2addr v1, v3

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v1, v1, p4

    if-eqz v1, :cond_1

    .line 1893
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v1, v1, p4

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Cell;->getRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 1894
    .local v1, "overflowCell":Lcom/itextpdf/layout/renderer/CellRenderer;
    sub-int v3, v0, p3

    invoke-virtual {p2, v3, p4, v2}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 1895
    aget v3, p7, p4

    sub-int/2addr v3, p3

    invoke-virtual {p2, v3, p4, v1}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 1896
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v3, v3, p4

    .line 1897
    .local v3, "originalCell":Lcom/itextpdf/layout/renderer/CellRenderer;
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aput-object v2, v4, p4

    .line 1898
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    aget v4, p7, p4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aput-object v3, v2, p4

    .line 1899
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/itextpdf/layout/renderer/CellRenderer;->isLastRendererForModelElement:Z

    .line 1900
    const/16 v2, 0x6d

    invoke-virtual {v3, v2}, Lcom/itextpdf/layout/renderer/CellRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1902
    .end local v1    # "overflowCell":Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v3    # "originalCell":Lcom/itextpdf/layout/renderer/CellRenderer;
    :cond_1
    return-void
.end method

.method private ensureFooterOrHeaderHasTheSamePropertiesAsParentTableRenderer(Lcom/itextpdf/layout/renderer/TableRenderer;)V
    .locals 2
    .param p1, "headerOrFooterRenderer"    # Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 1764
    const/16 v0, 0x72

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1765
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v0, :cond_0

    .line 1766
    const/16 v0, 0x73

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1767
    const/16 v0, 0x74

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1768
    const/16 v0, 0x9

    sget-object v1, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1769
    const/16 v0, 0xb

    sget-object v1, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1770
    const/16 v0, 0xd

    sget-object v1, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1771
    const/16 v0, 0xc

    sget-object v1, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1772
    const/16 v0, 0xa

    sget-object v1, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1774
    :cond_0
    return-void
.end method

.method private getTableWidth()F
    .locals 5

    .line 1819
    const/4 v0, 0x0

    .line 1820
    .local v0, "sum":F
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 1821
    .local v4, "column":F
    add-float/2addr v0, v4

    .line 1820
    .end local v4    # "column":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1823
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v2, v1, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v2, :cond_2

    .line 1824
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getRightBorderMaxWidth()F

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableBorders;->getLeftBorderMaxWidth()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 1825
    const/16 v1, 0x73

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    .line 1826
    .local v1, "horizontalSpacing":Ljava/lang/Float;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_1
    add-float/2addr v0, v2

    .line 1827
    .end local v1    # "horizontalSpacing":Ljava/lang/Float;
    goto :goto_2

    .line 1828
    :cond_2
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getRightBorderMaxWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableBorders;->getLeftBorderMaxWidth()F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 1830
    :goto_2
    return v0
.end method

.method private initFooterOrHeaderRenderer(Z[Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableRenderer;
    .locals 13
    .param p1, "footer"    # Z
    .param p2, "tableBorders"    # [Lcom/itextpdf/layout/borders/Border;

    .line 1710
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Table;

    .line 1711
    .local v0, "table":Lcom/itextpdf/layout/element/Table;
    sget-object v1, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;->SEPARATE:Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;

    const/16 v2, 0x72

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1712
    .local v1, "isSeparated":Z
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getFooter()Lcom/itextpdf/layout/element/Table;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getHeader()Lcom/itextpdf/layout/element/Table;

    move-result-object v2

    .line 1713
    .local v2, "footerOrHeader":Lcom/itextpdf/layout/element/Table;
    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    .line 1714
    .local v5, "innerBorder":I
    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    .line 1715
    .local v3, "outerBorder":I
    :goto_2
    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table;->createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v6

    invoke-interface {v6, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 1716
    .local v6, "renderer":Lcom/itextpdf/layout/renderer/TableRenderer;
    invoke-direct {p0, v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->ensureFooterOrHeaderHasTheSamePropertiesAsParentTableRenderer(Lcom/itextpdf/layout/renderer/TableRenderer;)V

    .line 1717
    const/4 v7, 0x1

    if-nez p1, :cond_3

    iget-object v8, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v8}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v8

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    if-eqz v8, :cond_3

    move v4, v7

    .line 1718
    .local v4, "firstHeader":Z
    :cond_3
    const/16 v8, 0x6c

    invoke-virtual {p0, v8}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    .line 1719
    .local v8, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    if-eqz v8, :cond_4

    .line 1720
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, p0, v9}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;)V

    .line 1721
    invoke-static {v8, v6}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addTreeHints(Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 1724
    if-nez p1, :cond_4

    if-nez v4, :cond_4

    .line 1725
    invoke-virtual {v8, v6}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->markArtifactHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    .line 1729
    :cond_4
    iget-object v9, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v10, v9, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    const/4 v11, 0x3

    if-eqz v10, :cond_8

    .line 1730
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1732
    if-eqz p1, :cond_5

    iget-object v9, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v9, :cond_6

    .line 1733
    :cond_5
    aget-object v9, p2, v5

    invoke-virtual {v6, v9, v5}, Lcom/itextpdf/layout/renderer/TableRenderer;->setBorders(Lcom/itextpdf/layout/borders/Border;I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 1735
    :cond_6
    iget-object v9, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v9, v9, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    sget-object v10, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    aput-object v10, v9, v5

    .line 1737
    :cond_7
    aget-object v9, p2, v7

    invoke-virtual {v6, v9, v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->setBorders(Lcom/itextpdf/layout/borders/Border;I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 1738
    aget-object v7, p2, v11

    invoke-virtual {v6, v7, v11}, Lcom/itextpdf/layout/renderer/TableRenderer;->setBorders(Lcom/itextpdf/layout/borders/Border;I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 1739
    aget-object v7, p2, v3

    invoke-virtual {v6, v7, v3}, Lcom/itextpdf/layout/renderer/TableRenderer;->setBorders(Lcom/itextpdf/layout/borders/Border;I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 1740
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v7, v7, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    sget-object v9, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    aput-object v9, v7, v3

    goto :goto_3

    .line 1741
    :cond_8
    instance-of v9, v9, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    if-eqz v9, :cond_a

    .line 1742
    invoke-virtual {v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v9

    .line 1743
    .local v9, "borders":[Lcom/itextpdf/layout/borders/Border;
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1744
    aget-object v10, v9, v5

    aget-object v12, p2, v5

    invoke-static {v10, v12}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCollapsedBorder(Lcom/itextpdf/layout/borders/Border;Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/borders/Border;

    move-result-object v10

    invoke-virtual {v6, v10, v5}, Lcom/itextpdf/layout/renderer/TableRenderer;->setBorders(Lcom/itextpdf/layout/borders/Border;I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 1745
    iget-object v10, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v10, v10, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    sget-object v12, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    aput-object v12, v10, v5

    .line 1747
    :cond_9
    aget-object v10, v9, v7

    aget-object v12, p2, v7

    invoke-static {v10, v12}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCollapsedBorder(Lcom/itextpdf/layout/borders/Border;Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/borders/Border;

    move-result-object v10

    invoke-virtual {v6, v10, v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->setBorders(Lcom/itextpdf/layout/borders/Border;I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 1748
    aget-object v7, v9, v11

    aget-object v10, p2, v11

    invoke-static {v7, v10}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCollapsedBorder(Lcom/itextpdf/layout/borders/Border;Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/borders/Border;

    move-result-object v7

    invoke-virtual {v6, v7, v11}, Lcom/itextpdf/layout/renderer/TableRenderer;->setBorders(Lcom/itextpdf/layout/borders/Border;I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 1749
    aget-object v7, v9, v3

    aget-object v10, p2, v3

    invoke-static {v7, v10}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCollapsedBorder(Lcom/itextpdf/layout/borders/Border;Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/borders/Border;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/itextpdf/layout/renderer/TableRenderer;->setBorders(Lcom/itextpdf/layout/borders/Border;I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 1750
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v7, v7, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    sget-object v10, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    aput-object v10, v7, v3

    .line 1753
    .end local v9    # "borders":[Lcom/itextpdf/layout/borders/Border;
    :cond_a
    :goto_3
    if-eqz v1, :cond_b

    new-instance v7, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    iget-object v9, v6, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    .line 1754
    invoke-virtual {v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v10}, Lcom/itextpdf/layout/element/Table;->getNumberOfColumns()I

    move-result v10

    invoke-virtual {v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v11

    invoke-direct {v7, v9, v10, v11}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;)V

    goto :goto_4

    :cond_b
    new-instance v7, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    iget-object v9, v6, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    .line 1755
    invoke-virtual {v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v10}, Lcom/itextpdf/layout/element/Table;->getNumberOfColumns()I

    move-result v10

    invoke-virtual {v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v11

    invoke-direct {v7, v9, v10, v11}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;)V

    :goto_4
    iput-object v7, v6, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1756
    invoke-virtual {v7}, Lcom/itextpdf/layout/renderer/TableBorders;->initializeBorders()Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1757
    iget-object v7, v6, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v9, v6, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v9}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v9

    iget-object v10, v6, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v10}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Lcom/itextpdf/layout/renderer/TableBorders;->setRowRange(II)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1758
    iget-object v7, v6, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v7}, Lcom/itextpdf/layout/renderer/TableBorders;->processAllBordersAndEmptyRows()Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1759
    invoke-direct {v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->correctRowRange()V

    .line 1760
    return-object v6
.end method

.method private initializeCaptionRenderer(Lcom/itextpdf/layout/element/Div;)V
    .locals 2
    .param p1, "caption"    # Lcom/itextpdf/layout/element/Div;

    .line 241
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Div;->createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/DivRenderer;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    .line 243
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/DivRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 244
    const/16 v0, 0x6c

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    .line 245
    .local v0, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;)V

    .line 247
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    invoke-static {v0, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addTreeHints(Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 250
    .end local v0    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    :cond_0
    return-void
.end method

.method private initializeHeaderAndFooter(Z)V
    .locals 10
    .param p1, "isFirstOnThePage"    # Z

    .line 220
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Table;

    .line 221
    .local v0, "table":Lcom/itextpdf/layout/element/Table;
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v1

    .line 223
    .local v1, "tableBorder":[Lcom/itextpdf/layout/borders/Border;
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getHeader()Lcom/itextpdf/layout/element/Table;

    move-result-object v2

    .line 224
    .local v2, "headerElement":Lcom/itextpdf/layout/element/Table;
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 225
    .local v3, "isFirstHeader":Z
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->isSkipFirstHeader()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v3, :cond_3

    :cond_2
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v7, 0x61

    .line 226
    invoke-virtual {p0, v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v5

    .line 227
    .local v6, "headerShouldBeApplied":Z
    :goto_1
    if-eqz v2, :cond_4

    if-eqz v6, :cond_4

    .line 228
    invoke-direct {p0, v5, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->initFooterOrHeaderRenderer(Z[Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableRenderer;

    move-result-object v7

    iput-object v7, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 231
    :cond_4
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getFooter()Lcom/itextpdf/layout/element/Table;

    move-result-object v7

    .line 233
    .local v7, "footerElement":Lcom/itextpdf/layout/element/Table;
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getLastRowBottomBorder()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->isSkipLastFooter()Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v9, 0x60

    .line 234
    invoke-virtual {p0, v9}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    move v5, v4

    goto :goto_2

    :cond_6
    nop

    .line 235
    .local v5, "footerShouldBeApplied":Z
    :goto_2
    if-eqz v7, :cond_7

    if-eqz v5, :cond_7

    .line 236
    invoke-direct {p0, v4, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->initFooterOrHeaderRenderer(Z[Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableRenderer;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 238
    :cond_7
    return-void
.end method

.method private initializeTableLayoutBorders()V
    .locals 8

    .line 1343
    sget-object v0, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;->SEPARATE:Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;

    const/16 v1, 0x72

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1344
    .local v0, "isSeparated":Z
    if-eqz v0, :cond_0

    new-instance v1, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    .line 1345
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Table;->getNumberOfColumns()I

    move-result v3

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    .line 1346
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Table;->getNumberOfColumns()I

    move-result v3

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;)V

    :goto_0
    iput-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1347
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TableBorders;->initializeBorders()Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1348
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->setTableBoundingBorders([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1349
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/layout/renderer/TableBorders;->setRowRange(II)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1350
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->initializeHeaderAndFooter(Z)V

    .line 1351
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-boolean v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRenderer()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isHeaderRenderer()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    move v4, v1

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    move-object v5, p0

    invoke-virtual/range {v2 .. v7}, Lcom/itextpdf/layout/renderer/TableBorders;->updateBordersOnNewPage(ZZLcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/layout/renderer/TableRenderer;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1352
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->correctRowRange()V

    .line 1353
    return-void
.end method

.method private isBottomTablePart()Z
    .locals 1

    .line 1804
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_1

    .line 1805
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isHeaderRenderer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1804
    :goto_0
    return v0
.end method

.method private isEmptyTableRenderer()Z
    .locals 4

    .line 1501
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isFooterRenderer()Z
    .locals 1

    .line 1791
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFooterRendererOfLargeTable()Z
    .locals 1

    .line 1795
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRenderer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getLastRowBottomBorder()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isHeaderRenderer()Z
    .locals 1

    .line 1787
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOriginalRenderer()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRenderer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isHeaderRenderer()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTopTablePart()Z
    .locals 1

    .line 1799
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_1

    .line 1800
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRenderer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1799
    :goto_0
    return v0
.end method

.method private prepareFooterOrHeaderRendererForLayout(Lcom/itextpdf/layout/renderer/TableRenderer;F)Lcom/itextpdf/layout/renderer/TableRenderer;
    .locals 2
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/TableRenderer;
    .param p2, "layoutBoxWidth"    # F

    .line 1777
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    iput-object v0, p1, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    .line 1778
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getLeftBorderMaxWidth()F

    move-result v1

    iput v1, v0, Lcom/itextpdf/layout/renderer/TableBorders;->leftBorderMaxWidth:F

    .line 1779
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getRightBorderMaxWidth()F

    move-result v1

    iput v1, v0, Lcom/itextpdf/layout/renderer/TableBorders;->rightBorderMaxWidth:F

    .line 1780
    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1781
    invoke-static {p2}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1783
    :cond_0
    return-object p0
.end method

.method private setRowRange(Lcom/itextpdf/layout/element/Table$RowRange;)V
    .locals 3
    .param p1, "rowRange"    # Lcom/itextpdf/layout/element/Table$RowRange;

    .line 1703
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    .line 1704
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v0

    .local v0, "row":I
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1705
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    check-cast v2, Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table;->getNumberOfColumns()I

    move-result v2

    new-array v2, v2, [Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1704
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1707
    .end local v0    # "row":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 4
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 132
    instance-of v0, p1, Lcom/itextpdf/layout/renderer/CellRenderer;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Cell;

    .line 136
    .local v0, "cell":Lcom/itextpdf/layout/element/Cell;
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Cell;->getRow()I

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Cell;->getCol()I

    move-result v2

    move-object v3, p1

    check-cast v3, Lcom/itextpdf/layout/renderer/CellRenderer;

    aput-object v3, v1, v2

    .line 137
    .end local v0    # "cell":Lcom/itextpdf/layout/element/Cell;
    goto :goto_0

    .line 138
    :cond_0
    const-class v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 139
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "Only CellRenderer could be added"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 141
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :goto_0
    return-void
.end method

.method protected allowLastYLineRecursiveExtraction()Z
    .locals 1

    .line 1339
    const/4 v0, 0x0

    return v0
.end method

.method protected applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "borders"    # [Lcom/itextpdf/layout/borders/Border;
    .param p3, "reverse"    # Z

    .line 145
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v0, :cond_0

    .line 146
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 150
    :cond_0
    return-object p1
.end method

.method applyMarginsAndPaddingsAndCalculateColumnWidths(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 10
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1932
    const-class v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getMargins()[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v1

    .line 1933
    .local v1, "margins":[Lcom/itextpdf/layout/property/UnitValue;
    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "Property {0} in percents is not supported"

    if-nez v3, :cond_0

    .line 1934
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 1935
    .local v3, "logger":Lorg/slf4j/Logger;
    new-array v6, v2, [Ljava/lang/Object;

    const/16 v7, 0x2d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1937
    .end local v3    # "logger":Lorg/slf4j/Logger;
    :cond_0
    const/4 v3, 0x3

    aget-object v6, v1, v3

    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1938
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v6

    .line 1939
    .local v6, "logger":Lorg/slf4j/Logger;
    new-array v7, v2, [Ljava/lang/Object;

    const/16 v8, 0x2c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v5, v7}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1941
    .end local v6    # "logger":Lorg/slf4j/Logger;
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPaddings()[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v6

    .line 1942
    .local v6, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    aget-object v7, v6, v2

    invoke-virtual {v7}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1943
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v7

    .line 1944
    .local v7, "logger":Lorg/slf4j/Logger;
    new-array v8, v2, [Ljava/lang/Object;

    const/16 v9, 0x31

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v5, v8}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1946
    .end local v7    # "logger":Lorg/slf4j/Logger;
    :cond_2
    aget-object v7, v6, v3

    invoke-virtual {v7}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1947
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 1948
    .local v0, "logger":Lorg/slf4j/Logger;
    new-array v7, v2, [Ljava/lang/Object;

    const/16 v8, 0x30

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v5, v7}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1950
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    aget-object v4, v1, v2

    .line 1951
    invoke-virtual {v4}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v4

    sub-float/2addr v0, v4

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v4

    sub-float/2addr v0, v4

    aget-object v2, v6, v2

    .line 1952
    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    sub-float/2addr v0, v2

    aget-object v2, v6, v3

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    sub-float/2addr v0, v2

    .line 1950
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->calculateColumnWidths(F)V

    .line 1953
    return-void
.end method

.method public applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "reverse"    # Z

    .line 165
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v0, :cond_0

    .line 166
    invoke-super {p0, p1, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 170
    :cond_0
    return-object p1
.end method

.method protected applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "paddings"    # [Lcom/itextpdf/layout/property/UnitValue;
    .param p3, "reverse"    # Z

    .line 155
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v0, :cond_0

    .line 156
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 160
    :cond_0
    return-object p1
.end method

.method protected createOverflowRenderer(Lcom/itextpdf/layout/element/Table$RowRange;)Lcom/itextpdf/layout/renderer/TableRenderer;
    .locals 2
    .param p1, "rowRange"    # Lcom/itextpdf/layout/element/Table$RowRange;

    .line 1269
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 1270
    .local v0, "overflowRenderer":Lcom/itextpdf/layout/renderer/TableRenderer;
    invoke-direct {v0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setRowRange(Lcom/itextpdf/layout/element/Table$RowRange;)V

    .line 1271
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1272
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 1273
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 1274
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    .line 1275
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    .line 1276
    return-object v0
.end method

.method protected createSplitRenderer(Lcom/itextpdf/layout/element/Table$RowRange;)Lcom/itextpdf/layout/renderer/TableRenderer;
    .locals 2
    .param p1, "rowRange"    # Lcom/itextpdf/layout/element/Table$RowRange;

    .line 1252
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 1253
    .local v0, "splitRenderer":Lcom/itextpdf/layout/renderer/TableRenderer;
    iput-object p1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    .line 1254
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1255
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 1256
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    .line 1257
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 1258
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 1259
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 1260
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->isLastRendererForModelElement:Z

    .line 1261
    iget v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->topBorderMaxWidth:F

    iput v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->topBorderMaxWidth:F

    .line 1262
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    .line 1263
    iget-boolean v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    iput-boolean v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    .line 1265
    return-object v0
.end method

.method public draw(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 13
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 1083
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->isTaggingEnabled()Z

    move-result v0

    .line 1084
    .local v0, "isTagged":Z
    const/4 v1, 0x0

    .line 1085
    .local v1, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1086
    const/16 v3, 0x6c

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    .line 1087
    if-nez v1, :cond_0

    .line 1088
    const/4 v0, 0x0

    goto :goto_0

    .line 1090
    :cond_0
    invoke-virtual {v1, p0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->useAutoTaggingPointerAndRememberItsPosition(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v3

    .line 1091
    .local v3, "tagPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    invoke-virtual {v1, p0, v3}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->createTag(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1092
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v4

    invoke-static {p0, v3}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->getLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->addAttributes(ILcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    .line 1097
    .end local v3    # "tagPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/TableRenderer;->beginTransformationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 1099
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyDestinationsAndAnnotation(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1101
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isRelativePosition()Z

    move-result v3

    .line 1102
    .local v3, "relativePosition":Z
    if-eqz v3, :cond_2

    .line 1103
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyRelativePositioningTranslation(Z)V

    .line 1106
    :cond_2
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->beginElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1107
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/DivRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v4

    .line 1108
    .local v2, "captionHeight":F
    :goto_1
    sget-object v5, Lcom/itextpdf/layout/property/CaptionSide;->BOTTOM:Lcom/itextpdf/layout/property/CaptionSide;

    cmpl-float v6, v4, v2

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    const/16 v7, 0x77

    invoke-virtual {v6, v7}, Lcom/itextpdf/layout/renderer/DivRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5, v6}, Lcom/itextpdf/layout/property/CaptionSide;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1109
    .local v5, "isBottomCaption":Z
    cmpl-float v6, v4, v2

    if-eqz v6, :cond_7

    .line 1110
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    if-eqz v5, :cond_5

    move v8, v4

    goto :goto_3

    :cond_5
    move v8, v2

    :goto_3
    const/4 v9, 0x0

    if-eqz v5, :cond_6

    move v10, v2

    goto :goto_4

    :cond_6
    move v10, v4

    :goto_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1112
    :cond_7
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->drawBackground(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1113
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v6, v6, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v6, :cond_8

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isHeaderRenderer()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRenderer()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1114
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->drawBorder(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1116
    :cond_8
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->drawChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1117
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->drawPositionedChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1118
    cmpl-float v6, v4, v2

    if-eqz v6, :cond_b

    .line 1119
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    if-eqz v5, :cond_9

    move v8, v4

    goto :goto_5

    :cond_9
    move v8, v2

    :goto_5
    const/4 v9, 0x0

    if-eqz v5, :cond_a

    move v10, v2

    goto :goto_6

    :cond_a
    move v10, v4

    :goto_6
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1121
    :cond_b
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->drawCaption(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1122
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->endElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1124
    const/4 v4, 0x1

    if-eqz v3, :cond_c

    .line 1125
    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyRelativePositioningTranslation(Z)V

    .line 1128
    :cond_c
    iput-boolean v4, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->flushed:Z

    .line 1130
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/TableRenderer;->endTransformationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 1132
    if-eqz v0, :cond_e

    .line 1133
    iget-boolean v4, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isLastRendererForModelElement:Z

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v4}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1134
    invoke-virtual {v1, p0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->finishTaggingHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    .line 1136
    :cond_d
    invoke-virtual {v1, p0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->restoreAutoTaggingPointerPosition(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 1138
    :cond_e
    return-void
.end method

.method public drawBackground(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 1
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 1191
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRenderer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isHeaderRenderer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1192
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->drawBackgrounds(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1194
    :cond_0
    return-void
.end method

.method protected drawBackgrounds(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 9
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 1163
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isHeaderRenderer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRenderer()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1164
    .local v0, "shrinkBackgroundArea":Z
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    .line 1165
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxTopWidth()F

    move-result v2

    div-float v4, v2, v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableBorders;->getRightBorderMaxWidth()F

    move-result v2

    div-float v5, v2, v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1166
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxBottomWidth()F

    move-result v2

    div-float v6, v2, v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableBorders;->getLeftBorderMaxWidth()F

    move-result v2

    div-float v7, v2, v1

    const/4 v8, 0x0

    .line 1165
    invoke-virtual/range {v3 .. v8}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1168
    :cond_2
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawBackground(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1169
    if-eqz v0, :cond_3

    .line 1170
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxTopWidth()F

    move-result v2

    div-float v4, v2, v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableBorders;->getRightBorderMaxWidth()F

    move-result v2

    div-float v5, v2, v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1171
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxBottomWidth()F

    move-result v2

    div-float v6, v2, v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableBorders;->getLeftBorderMaxWidth()F

    move-result v2

    div-float v7, v2, v1

    const/4 v8, 0x1

    .line 1170
    invoke-virtual/range {v3 .. v8}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1173
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v1, :cond_4

    .line 1174
    invoke-virtual {v1, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->drawBackgrounds(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1176
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v1, :cond_5

    .line 1177
    invoke-virtual {v1, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->drawBackgrounds(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1179
    :cond_5
    return-void
.end method

.method public drawBorder(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 1
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 1363
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v0, :cond_0

    .line 1364
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawBorder(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1368
    :cond_0
    return-void
.end method

.method protected drawBorders(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 4
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 1371
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->drawBorders(Lcom/itextpdf/layout/renderer/DrawContext;ZZ)V

    .line 1372
    return-void
.end method

.method protected drawCaption(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 1
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 1183
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRenderer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isHeaderRenderer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/DivRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1186
    :cond_0
    return-void
.end method

.method public drawChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 2
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 1145
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_0

    .line 1146
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1150
    .local v1, "child":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-interface {v1, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1151
    .end local v1    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_0

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    if-eqz v0, :cond_2

    .line 1154
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->drawBorders(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1157
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_3

    .line 1158
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1160
    :cond_3
    return-void
.end method

.method protected extendLastRow([Lcom/itextpdf/layout/renderer/CellRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 5
    .param p1, "lastRow"    # [Lcom/itextpdf/layout/renderer/CellRenderer;
    .param p2, "freeBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1685
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1686
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1687
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1688
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1689
    .local v2, "cell":Lcom/itextpdf/layout/renderer/CellRenderer;
    if-eqz v2, :cond_0

    .line 1690
    iget-object v3, v2, Lcom/itextpdf/layout/renderer/CellRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1688
    .end local v2    # "cell":Lcom/itextpdf/layout/renderer/CellRenderer;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1693
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1695
    :cond_2
    return-void
.end method

.method protected getLastYLineRecursively()Ljava/lang/Float;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1334
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 14

    .line 1301
    const-class v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-boolean v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    if-eqz v1, :cond_0

    .line 1302
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->initializeTableLayoutBorders()V

    .line 1304
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getRightBorderMaxWidth()F

    move-result v1

    .line 1305
    .local v1, "rightMaxBorder":F
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableBorders;->getLeftBorderMaxWidth()F

    move-result v8

    .line 1306
    .local v8, "leftMaxBorder":F
    new-instance v9, Lcom/itextpdf/layout/renderer/TableWidths;

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getInfWidth()F

    move-result v4

    const/4 v5, 0x1

    move-object v2, v9

    move-object v3, p0

    move v6, v1

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/itextpdf/layout/renderer/TableWidths;-><init>(Lcom/itextpdf/layout/renderer/TableRenderer;FZFF)V

    .line 1307
    .local v2, "tableWidths":Lcom/itextpdf/layout/renderer/TableWidths;
    const/4 v3, 0x0

    .line 1308
    .local v3, "maxColTotalWidth":F
    iget-boolean v4, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableWidths;->layout()[F

    move-result-object v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    .line 1309
    .local v4, "columns":[F
    :goto_0
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_2

    aget v9, v4, v7

    .line 1310
    .local v9, "column":F
    add-float/2addr v3, v9

    .line 1309
    .end local v9    # "column":F
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1312
    :cond_2
    iget-boolean v5, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableWidths;->getMinWidth()F

    move-result v5

    goto :goto_2

    :cond_3
    move v5, v3

    .line 1313
    .local v5, "minWidth":F
    :goto_2
    const/16 v7, 0x2d

    invoke-virtual {p0, v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v9

    .line 1314
    .local v9, "marginRightUV":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v9}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v10

    const-string v11, "Property {0} in percents is not supported"

    const/4 v12, 0x1

    if-nez v10, :cond_4

    .line 1315
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v10

    .line 1316
    .local v10, "logger":Lorg/slf4j/Logger;
    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v13, v6

    invoke-static {v11, v13}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1318
    .end local v10    # "logger":Lorg/slf4j/Logger;
    :cond_4
    const/16 v7, 0x2c

    invoke-virtual {p0, v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v10

    .line 1319
    .local v10, "marginLefttUV":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v10}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v13

    if-nez v13, :cond_5

    .line 1320
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 1321
    .local v0, "logger":Lorg/slf4j/Logger;
    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v6

    invoke-static {v11, v12}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1323
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_5
    invoke-virtual {v10}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    invoke-virtual {v9}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v6

    add-float/2addr v0, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v1, v6

    add-float/2addr v0, v7

    div-float v6, v8, v6

    add-float/2addr v0, v6

    .line 1324
    .local v0, "additionalWidth":F
    new-instance v6, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-direct {v6, v5, v3, v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>(FFF)V

    return-object v6
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 1201
    new-instance v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-direct {v0}, Lcom/itextpdf/layout/renderer/TableRenderer;-><init>()V

    .line 1202
    .local v0, "nextTable":Lcom/itextpdf/layout/renderer/TableRenderer;
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 1203
    return-object v0
.end method

.method getTable()Lcom/itextpdf/layout/element/Table;
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Table;

    return-object v0
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 83
    .param p1, "layoutContext"    # Lcom/itextpdf/layout/layout/LayoutContext;

    .line 261
    move-object/from16 v10, p0

    const-class v11, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->retrieveMinHeight()Ljava/lang/Float;

    move-result-object v12

    .line 262
    .local v12, "blockMinHeight":Ljava/lang/Float;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->retrieveMaxHeight()Ljava/lang/Float;

    move-result-object v13

    .line 264
    .local v13, "blockMaxHeight":Ljava/lang/Float;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v14

    .line 265
    .local v14, "area":Lcom/itextpdf/layout/layout/LayoutArea;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->isClippedHeight()Z

    move-result v15

    .line 266
    .local v15, "wasParentsHeightClipped":Z
    const/4 v6, 0x0

    .line 267
    .local v6, "wasHeightClipped":Z
    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v9

    .line 269
    .local v9, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/itextpdf/layout/element/Table;

    .line 270
    .local v22, "tableModel":Lcom/itextpdf/layout/element/Table;
    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v0

    const/16 v8, 0x2b

    const/4 v7, 0x0

    if-nez v0, :cond_0

    .line 271
    invoke-static {v7}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    invoke-virtual {v10, v8, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 273
    :cond_0
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v0

    const/16 v5, 0x2e

    if-eqz v0, :cond_1

    .line 274
    invoke-static {v7}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    invoke-virtual {v10, v5, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 279
    :cond_1
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 280
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    .line 289
    .local v4, "rowMoves":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getNumberOfColumns()I

    move-result v3

    .line 292
    .local v3, "numberOfColumns":I
    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->getLastRowBottomBorder()Ljava/util/List;

    move-result-object v23

    .line 293
    .local v23, "lastFlushedRowBottomBorder":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move/from16 v24, v0

    .line 294
    .local v24, "isAndWasComplete":Z
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v10, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFirstOnRootArea(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v1

    .line 296
    .local v0, "isFirstOnThePage":Z
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRenderer()Z

    move-result v16

    if-nez v16, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isHeaderRenderer()Z

    move-result v16

    if-nez v16, :cond_8

    .line 297
    iget-boolean v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    if-eqz v1, :cond_8

    .line 298
    sget-object v1, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;->SEPARATE:Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;

    const/16 v2, 0x72

    invoke-virtual {v10, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 299
    .local v1, "isSeparated":Z
    if-eqz v1, :cond_6

    new-instance v2, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v8

    if-nez v24, :cond_5

    iget-object v7, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v7}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v7

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    invoke-direct {v2, v5, v3, v8, v7}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;I)V

    goto :goto_5

    :cond_6
    new-instance v2, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v7

    if-nez v24, :cond_7

    iget-object v8, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v8}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v8

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    :goto_4
    invoke-direct {v2, v5, v3, v7, v8}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;I)V

    :goto_5
    iput-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    .line 302
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableBorders;->initializeBorders()Lcom/itextpdf/layout/renderer/TableBorders;

    .line 305
    .end local v1    # "isSeparated":Z
    :cond_8
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v2

    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v5}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/layout/renderer/TableBorders;->setRowRange(II)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 306
    invoke-direct {v10, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->initializeHeaderAndFooter(Z)V

    .line 309
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-boolean v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRenderer()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isHeaderRenderer()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v5, 0x1

    :goto_7
    iget-object v7, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v8, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    move/from16 v27, v0

    .end local v0    # "isFirstOnThePage":Z
    .local v27, "isFirstOnThePage":Z
    move-object v0, v1

    move-object/from16 v28, v11

    const/4 v11, 0x1

    move v1, v2

    const/4 v11, 0x0

    move v2, v5

    move v5, v3

    .end local v3    # "numberOfColumns":I
    .local v5, "numberOfColumns":I
    move-object/from16 v3, p0

    move-object/from16 v30, v4

    .end local v4    # "rowMoves":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v30, "rowMoves":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v4, v7

    move v7, v5

    .end local v5    # "numberOfColumns":I
    .local v7, "numberOfColumns":I
    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/TableBorders;->updateBordersOnNewPage(ZZLcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/layout/renderer/TableRenderer;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 310
    iget-boolean v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    if-eqz v0, :cond_b

    .line 311
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->correctRowRange()V

    .line 313
    :cond_b
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v0, :cond_c

    const/16 v0, 0x73

    invoke-virtual {v10, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 314
    invoke-virtual {v10, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_8

    :cond_c
    const/4 v0, 0x0

    :goto_8
    move v8, v0

    .line 316
    .local v8, "horizontalBorderSpacing":F
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v0, :cond_d

    const/16 v0, 0x74

    invoke-virtual {v10, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 317
    invoke-virtual {v10, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_9

    :cond_d
    const/4 v0, 0x0

    :goto_9
    move v5, v0

    .line 319
    .local v5, "verticalBorderSpacing":F
    if-nez v24, :cond_e

    if-nez v27, :cond_e

    .line 320
    invoke-virtual {v9, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 322
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalRenderer()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 323
    invoke-virtual {v10, v9}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyMarginsAndPaddingsAndCalculateColumnWidths(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 325
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getTableWidth()F

    move-result v4

    .line 327
    .local v4, "tableWidth":F
    const/4 v0, 0x0

    .line 328
    .local v0, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v2, 0x59

    invoke-virtual {v10, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 329
    .local v3, "marginsCollapsingEnabled":Z
    if-eqz v3, :cond_10

    .line 330
    new-instance v1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getMarginsCollapseInfo()Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object v2

    invoke-direct {v1, v10, v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;-><init>(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    move-object v0, v1

    move-object v2, v0

    goto :goto_a

    .line 329
    :cond_10
    move-object v2, v0

    .line 333
    .end local v0    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .local v2, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v1

    .line 334
    .local v1, "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-static {v10, v1, v9}, Lcom/itextpdf/layout/renderer/FloatingHelper;->calculateClearHeightCorrection(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)F

    move-result v0

    .line 335
    .local v0, "clearHeightCorrection":F
    const/16 v11, 0x63

    invoke-virtual {v10, v11}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/layout/property/FloatPropertyValue;

    .line 336
    .local v11, "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    invoke-static {v10, v11}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/property/FloatPropertyValue;)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 337
    invoke-virtual {v9, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 338
    invoke-static {v10, v9, v4, v1, v11}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustFloatedTableLayoutBox(Lcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/kernel/geom/Rectangle;FLjava/util/List;Lcom/itextpdf/layout/property/FloatPropertyValue;)V

    move/from16 v16, v5

    move v5, v0

    goto :goto_b

    .line 340
    :cond_11
    move/from16 v16, v5

    .end local v5    # "verticalBorderSpacing":F
    .local v16, "verticalBorderSpacing":F
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v1, v9, v5, v0, v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustLayoutBoxAccordingToFloats(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;FLcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;)F

    move-result v0

    move v5, v0

    .line 343
    .end local v0    # "clearHeightCorrection":F
    .local v5, "clearHeightCorrection":F
    :goto_b
    if-eqz v3, :cond_12

    .line 344
    invoke-virtual {v2, v9}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->startMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 346
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {v10, v9, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 347
    const/4 v0, 0x1

    invoke-direct {v10, v0, v9}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyFixedXOrYPosition(ZLcom/itextpdf/kernel/geom/Rectangle;)V

    .line 348
    const/4 v0, 0x0

    invoke-virtual {v10, v9, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 350
    const/16 v0, 0x1a

    if-eqz v13, :cond_13

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v17

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v18

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_13

    move-object/from16 v17, v1

    .end local v1    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v17, "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 351
    move-object/from16 v18, v2

    .end local v2    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .local v18, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    invoke-virtual {v10, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 352
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v9, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 353
    const/4 v6, 0x1

    move/from16 v32, v6

    goto :goto_c

    .line 350
    .end local v17    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v18    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v1    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v2    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    :cond_13
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 356
    .end local v1    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v2    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v17    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v18    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    :cond_14
    move/from16 v32, v6

    .end local v6    # "wasHeightClipped":Z
    .local v32, "wasHeightClipped":Z
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table;->getCaption()Lcom/itextpdf/layout/element/Div;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->initializeCaptionRenderer(Lcom/itextpdf/layout/element/Div;)V

    .line 357
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    if-eqz v1, :cond_19

    .line 358
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/DivRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v6

    .line 359
    .local v6, "minCaptionWidth":F
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    new-instance v2, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v0, Lcom/itextpdf/layout/layout/LayoutArea;

    .line 360
    move/from16 v19, v3

    .end local v3    # "marginsCollapsingEnabled":Z
    .local v19, "marginsCollapsingEnabled":Z
    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v3

    move/from16 v20, v5

    .end local v5    # "clearHeightCorrection":F
    .local v20, "clearHeightCorrection":F
    new-instance v5, Lcom/itextpdf/kernel/geom/Rectangle;

    move-object/from16 v33, v11

    .end local v11    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .local v33, "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v11

    move-object/from16 v34, v13

    .end local v13    # "blockMaxHeight":Ljava/lang/Float;
    .local v34, "blockMaxHeight":Ljava/lang/Float;
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v13

    move-object/from16 v35, v12

    .end local v12    # "blockMinHeight":Ljava/lang/Float;
    .local v35, "blockMinHeight":Ljava/lang/Float;
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move/from16 v21, v4

    .end local v4    # "tableWidth":F
    .local v21, "tableWidth":F
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    invoke-direct {v5, v11, v13, v12, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v0, v3, v5}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    if-nez v32, :cond_16

    if-eqz v15, :cond_15

    goto :goto_d

    :cond_15
    const/4 v3, 0x0

    goto :goto_e

    :cond_16
    :goto_d
    const/4 v3, 0x1

    :goto_e
    invoke-direct {v2, v0, v3}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    .line 359
    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/DivRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v11

    .line 361
    .local v11, "captionLayoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_17

    .line 362
    new-instance v12, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    move-object v0, v12

    move-object/from16 v13, v17

    .end local v17    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v13, "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    move-object/from16 v4, v18

    .end local v18    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .local v4, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    move/from16 v36, v19

    .end local v19    # "marginsCollapsingEnabled":Z
    .local v36, "marginsCollapsingEnabled":Z
    move-object/from16 v38, v4

    move/from16 v37, v21

    .end local v4    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v21    # "tableWidth":F
    .local v37, "tableWidth":F
    .local v38, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    move-object/from16 v4, p0

    move-object/from16 v39, v13

    move/from16 v13, v16

    move/from16 v40, v20

    .end local v16    # "verticalBorderSpacing":F
    .end local v20    # "clearHeightCorrection":F
    .local v13, "verticalBorderSpacing":F
    .local v39, "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v40, "clearHeightCorrection":F
    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v12

    .line 364
    .end local v13    # "verticalBorderSpacing":F
    .end local v36    # "marginsCollapsingEnabled":Z
    .end local v37    # "tableWidth":F
    .end local v38    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v39    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v40    # "clearHeightCorrection":F
    .restart local v16    # "verticalBorderSpacing":F
    .restart local v17    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v18    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v19    # "marginsCollapsingEnabled":Z
    .restart local v20    # "clearHeightCorrection":F
    .restart local v21    # "tableWidth":F
    :cond_17
    move/from16 v13, v16

    move-object/from16 v39, v17

    move-object/from16 v38, v18

    move/from16 v36, v19

    move/from16 v40, v20

    move/from16 v37, v21

    .end local v16    # "verticalBorderSpacing":F
    .end local v17    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v18    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v19    # "marginsCollapsingEnabled":Z
    .end local v20    # "clearHeightCorrection":F
    .end local v21    # "tableWidth":F
    .restart local v13    # "verticalBorderSpacing":F
    .restart local v36    # "marginsCollapsingEnabled":Z
    .restart local v37    # "tableWidth":F
    .restart local v38    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v39    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v40    # "clearHeightCorrection":F
    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    .line 365
    .local v0, "captionHeight":F
    sget-object v1, Lcom/itextpdf/layout/property/CaptionSide;->BOTTOM:Lcom/itextpdf/layout/property/CaptionSide;

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->getCaption()Lcom/itextpdf/layout/element/Div;

    move-result-object v2

    const/16 v3, 0x77

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/element/Div;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/property/CaptionSide;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 366
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    sub-float/2addr v2, v0

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/itextpdf/layout/renderer/DivRenderer;->move(FF)V

    .line 367
    invoke-virtual {v9, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 368
    invoke-virtual {v9, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_f

    .line 370
    :cond_18
    invoke-virtual {v9, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_f

    .line 357
    .end local v0    # "captionHeight":F
    .end local v6    # "minCaptionWidth":F
    .end local v33    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .end local v34    # "blockMaxHeight":Ljava/lang/Float;
    .end local v35    # "blockMinHeight":Ljava/lang/Float;
    .end local v36    # "marginsCollapsingEnabled":Z
    .end local v37    # "tableWidth":F
    .end local v38    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v39    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v40    # "clearHeightCorrection":F
    .restart local v3    # "marginsCollapsingEnabled":Z
    .local v4, "tableWidth":F
    .restart local v5    # "clearHeightCorrection":F
    .local v11, "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .restart local v12    # "blockMinHeight":Ljava/lang/Float;
    .local v13, "blockMaxHeight":Ljava/lang/Float;
    .restart local v16    # "verticalBorderSpacing":F
    .restart local v17    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v18    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    :cond_19
    move/from16 v36, v3

    move/from16 v37, v4

    move/from16 v40, v5

    move-object/from16 v33, v11

    move-object/from16 v35, v12

    move-object/from16 v34, v13

    move/from16 v13, v16

    move-object/from16 v39, v17

    move-object/from16 v38, v18

    .line 374
    .end local v3    # "marginsCollapsingEnabled":Z
    .end local v4    # "tableWidth":F
    .end local v5    # "clearHeightCorrection":F
    .end local v11    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .end local v12    # "blockMinHeight":Ljava/lang/Float;
    .end local v16    # "verticalBorderSpacing":F
    .end local v17    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v18    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .local v13, "verticalBorderSpacing":F
    .restart local v33    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .restart local v34    # "blockMaxHeight":Ljava/lang/Float;
    .restart local v35    # "blockMinHeight":Ljava/lang/Float;
    .restart local v36    # "marginsCollapsingEnabled":Z
    .restart local v37    # "tableWidth":F
    .restart local v38    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v39    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v40    # "clearHeightCorrection":F
    :goto_f
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v1

    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v3

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v4

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    move/from16 v11, v37

    const/4 v5, 0x0

    .end local v37    # "tableWidth":F
    .local v11, "tableWidth":F
    invoke-direct {v2, v3, v4, v11, v5}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 376
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->addPageByID(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 378
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/16 v12, 0xa

    if-eqz v0, :cond_21

    .line 380
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-direct {v10, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->prepareFooterOrHeaderRendererForLayout(Lcom/itextpdf/layout/renderer/TableRenderer;F)Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 383
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1c

    if-nez v24, :cond_1a

    const/4 v2, 0x0

    goto :goto_10

    .line 385
    :cond_1a
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_1b

    .line 386
    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->collapseTableWithFooter(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    goto :goto_11

    .line 385
    :cond_1b
    const/4 v2, 0x0

    goto :goto_11

    .line 383
    :cond_1c
    const/4 v2, 0x0

    .line 384
    :goto_10
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->collapseTableWithFooter(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 389
    :goto_11
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v2, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v3

    invoke-direct {v2, v3, v9}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    if-nez v32, :cond_1e

    if-eqz v15, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 v3, 0x0

    goto :goto_13

    :cond_1e
    :goto_12
    const/4 v3, 0x1

    :goto_13
    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v6

    .line 390
    .local v6, "result":Lcom/itextpdf/layout/layout/LayoutResult;
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    .line 392
    invoke-virtual {v10, v12}, Lcom/itextpdf/layout/renderer/TableRenderer;->deleteOwnProperty(I)V

    .line 393
    new-instance v12, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    move-object v0, v12

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v12

    .line 395
    :cond_1f
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    .line 396
    .local v0, "footerHeight":F
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    sub-float/2addr v2, v0

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->move(FF)V

    .line 397
    invoke-virtual {v9, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 400
    invoke-virtual {v9, v13}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 401
    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    .line 402
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxTopWidth()F

    move-result v1

    .line 403
    .local v1, "maxFooterTopBorderWidth":F
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v2, v2, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 404
    invoke-virtual {v9, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 408
    .end local v1    # "maxFooterTopBorderWidth":F
    :cond_20
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v2, 0x1a

    invoke-virtual {v10, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 409
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 413
    .end local v0    # "footerHeight":F
    .end local v6    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    :cond_21
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/16 v6, 0xd

    if-eqz v0, :cond_27

    .line 414
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-direct {v10, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->prepareFooterOrHeaderRendererForLayout(Lcom/itextpdf/layout/renderer/TableRenderer;F)Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 415
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_22

    .line 416
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->collapseTableWithHeader(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    goto :goto_14

    .line 417
    :cond_22
    const/4 v3, 0x1

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_23

    .line 418
    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/layout/renderer/TableBorders;->collapseTableWithHeader(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 422
    :cond_23
    :goto_14
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxTopWidth()F

    move-result v0

    iput v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->topBorderMaxWidth:F

    .line 423
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v2, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v3

    invoke-direct {v2, v3, v9}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    if-nez v32, :cond_25

    if-eqz v15, :cond_24

    goto :goto_15

    :cond_24
    const/4 v3, 0x0

    goto :goto_16

    :cond_25
    :goto_15
    const/4 v3, 0x1

    :goto_16
    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v16

    .line 424
    .local v16, "result":Lcom/itextpdf/layout/layout/LayoutResult;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    .line 426
    invoke-virtual {v10, v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->deleteOwnProperty(I)V

    .line 427
    new-instance v6, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    move-object v0, v6

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v6

    .line 429
    :cond_26
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    .line 430
    .local v0, "headerHeight":F
    invoke-virtual {v9, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 431
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 432
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lcom/itextpdf/layout/renderer/TableBorders;->fixHeaderOccupiedArea(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 435
    invoke-virtual {v9, v13}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 436
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 440
    .end local v0    # "headerHeight":F
    .end local v16    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    :cond_27
    const/4 v0, 0x0

    invoke-direct {v10, v9, v8, v13, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->applySpacing(Lcom/itextpdf/kernel/geom/Rectangle;FFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 441
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v10, v1, v8, v2, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->applySingleSpacing(Lcom/itextpdf/kernel/geom/Rectangle;FZZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 442
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    const/high16 v37, 0x40000000    # 2.0f

    div-float v5, v13, v37

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 444
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxTopWidth()F

    move-result v0

    iput v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->topBorderMaxWidth:F

    .line 445
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->applyLeftAndRightTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 447
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v17

    .line 448
    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_28

    goto :goto_17

    :cond_28
    const/16 v19, 0x0

    goto :goto_18

    :cond_29
    :goto_17
    const/16 v19, 0x1

    :goto_18
    const/16 v21, 0x0

    .line 447
    move-object/from16 v16, v0

    move-object/from16 v18, v9

    move/from16 v20, v24

    invoke-virtual/range {v16 .. v21}, Lcom/itextpdf/layout/renderer/TableBorders;->applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 449
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v1, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v1, :cond_2a

    .line 450
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxBottomWidth()F

    move-result v0

    .line 451
    .local v0, "bottomBorderWidth":F
    nop

    .line 452
    invoke-virtual {v9, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 453
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 456
    .end local v0    # "bottomBorderWidth":F
    :cond_2a
    new-array v5, v7, [Lcom/itextpdf/layout/layout/LayoutResult;

    .line 459
    .local v5, "splits":[Lcom/itextpdf/layout/layout/LayoutResult;
    new-array v4, v7, [I

    .line 461
    .local v4, "targetOverflowRowIndex":[I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 463
    .local v3, "rowsHasCellWithSetHeight":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    move v2, v0

    .local v2, "row":I
    :goto_19
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_ad

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v0, "childFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    const/4 v12, 0x1

    if-ne v2, v12, :cond_2c

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v6, 0x1a

    invoke-virtual {v10, v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 468
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10, v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 469
    invoke-virtual {v10, v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->deleteOwnProperty(I)V

    goto :goto_1a

    .line 471
    :cond_2b
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v6, v12}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 475
    :cond_2c
    :goto_1a
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, [Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 476
    .local v12, "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    const/4 v1, 0x0

    .line 477
    .local v1, "rowHeight":F
    const/4 v6, 0x0

    .line 479
    .local v6, "split":Z
    const/16 v20, 0x1

    .line 483
    .local v20, "hasContent":Z
    const/16 v21, 0x0

    .line 484
    .local v21, "cellWithBigRowspanAdded":Z
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v43, v42

    .line 486
    .local v43, "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    new-instance v42, Ljava/util/ArrayDeque;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayDeque;-><init>()V

    move-object/from16 v44, v42

    .line 487
    .local v44, "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    const/16 v42, 0x0

    move/from16 v45, v1

    move/from16 v1, v42

    .local v1, "col":I
    .local v45, "rowHeight":F
    :goto_1b
    move/from16 v42, v6

    .end local v6    # "split":Z
    .local v42, "split":Z
    array-length v6, v12

    if-ge v1, v6, :cond_2e

    .line 488
    aget-object v6, v12, v1

    if-eqz v6, :cond_2d

    .line 489
    new-instance v6, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;

    move/from16 v46, v7

    .end local v7    # "numberOfColumns":I
    .local v46, "numberOfColumns":I
    aget-object v7, v12, v1

    invoke-direct {v6, v7, v1, v2}, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;-><init>(Lcom/itextpdf/layout/renderer/CellRenderer;II)V

    move-object/from16 v7, v44

    .end local v44    # "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .local v7, "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    invoke-interface {v7, v6}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_1c

    .line 488
    .end local v46    # "numberOfColumns":I
    .local v7, "numberOfColumns":I
    .restart local v44    # "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    :cond_2d
    move/from16 v46, v7

    move-object/from16 v7, v44

    .line 487
    .end local v44    # "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .local v7, "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .restart local v46    # "numberOfColumns":I
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v44, v7

    move/from16 v6, v42

    move/from16 v7, v46

    goto :goto_1b

    .line 492
    .end local v46    # "numberOfColumns":I
    .local v7, "numberOfColumns":I
    .restart local v44    # "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    :cond_2e
    move/from16 v46, v7

    move-object/from16 v7, v44

    .end local v44    # "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .local v7, "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .restart local v46    # "numberOfColumns":I
    const/4 v6, 0x0

    .line 494
    .local v6, "rowHasCellWithSetHeight":Z
    const/16 v44, 0x0

    .line 497
    .local v44, "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    move/from16 v47, v1

    .end local v1    # "col":I
    .local v47, "col":I
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    move/from16 v48, v6

    .end local v6    # "rowHasCellWithSetHeight":Z
    .local v48, "rowHasCellWithSetHeight":Z
    iget-object v6, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v6}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v1, v6}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 498
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v6, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v6}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v6

    add-int/2addr v6, v2

    const/16 v29, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v6}, Lcom/itextpdf/layout/renderer/TableBorders;->getWidestHorizontalBorder(I)Lcom/itextpdf/layout/borders/Border;

    move-result-object v1

    .line 499
    .local v1, "widestRowBottomBorder":Lcom/itextpdf/layout/borders/Border;
    iget-object v6, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    move/from16 v49, v11

    .end local v11    # "tableWidth":F
    .local v49, "tableWidth":F
    iget-object v11, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v11}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v11

    invoke-virtual {v6, v11}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 500
    if-nez v1, :cond_2f

    const/4 v6, 0x0

    goto :goto_1d

    :cond_2f
    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v6

    :goto_1d
    move/from16 v11, v45

    move/from16 v45, v6

    move/from16 v6, v20

    move/from16 v20, v21

    move/from16 v82, v42

    move-object/from16 v42, v1

    move-object/from16 v1, v44

    move/from16 v44, v82

    .line 503
    .end local v21    # "cellWithBigRowspanAdded":Z
    .local v1, "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v6, "hasContent":Z
    .local v11, "rowHeight":F
    .local v20, "cellWithBigRowspanAdded":Z
    .local v42, "widestRowBottomBorder":Lcom/itextpdf/layout/borders/Border;
    .local v44, "split":Z
    .local v45, "widestRowBottomBorderWidth":F
    :goto_1e
    invoke-interface {v7}, Ljava/util/Deque;->size()I

    move-result v21

    move-object/from16 v50, v3

    .end local v3    # "rowsHasCellWithSetHeight":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .local v50, "rowsHasCellWithSetHeight":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-lez v21, :cond_5d

    .line 504
    invoke-interface {v7}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v3, v21

    check-cast v3, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;

    .line 505
    .local v3, "currentCellInfo":Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;
    move/from16 v52, v11

    .end local v11    # "rowHeight":F
    .local v52, "rowHeight":F
    iget v11, v3, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;->column:I

    .line 506
    .end local v47    # "col":I
    .local v11, "col":I
    move-object/from16 v21, v7

    .end local v7    # "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .local v21, "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    iget-object v7, v3, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;->cellRenderer:Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 507
    .local v7, "cell":Lcom/itextpdf/layout/renderer/CellRenderer;
    move/from16 v53, v13

    const/16 v13, 0x10

    .end local v13    # "verticalBorderSpacing":F
    .local v53, "verticalBorderSpacing":F
    invoke-virtual {v7, v13}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 508
    .local v13, "colspan":I
    move/from16 v54, v8

    .end local v8    # "horizontalBorderSpacing":F
    .local v54, "horizontalBorderSpacing":F
    const/16 v8, 0x3c

    invoke-virtual {v7, v8}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 509
    .local v8, "rowspan":I
    move-object/from16 v56, v14

    const/4 v14, 0x1

    .end local v14    # "area":Lcom/itextpdf/layout/layout/LayoutArea;
    .local v56, "area":Lcom/itextpdf/layout/layout/LayoutArea;
    if-eq v14, v8, :cond_30

    .line 510
    const/4 v14, 0x1

    move/from16 v20, v14

    .line 512
    :cond_30
    iget v14, v3, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;->finishRowInd:I

    aput v14, v4, v11

    .line 514
    iget v14, v3, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;->finishRowInd:I

    if-eq v2, v14, :cond_31

    const/4 v14, 0x1

    goto :goto_1f

    :cond_31
    const/4 v14, 0x0

    .line 515
    .local v14, "currentCellHasBigRowspan":Z
    :goto_1f
    move-object/from16 v57, v4

    .end local v4    # "targetOverflowRowIndex":[I
    .local v57, "targetOverflowRowIndex":[I
    const/16 v4, 0x1b

    invoke-virtual {v7, v4}, Lcom/itextpdf/layout/renderer/CellRenderer;->hasOwnOrModelProperty(I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 516
    const/4 v4, 0x1

    move/from16 v48, v4

    .line 518
    :cond_32
    const/4 v4, 0x0

    .local v4, "cellWidth":F
    const/16 v47, 0x0

    .line 519
    .local v47, "colOffset":F
    move/from16 v58, v11

    move/from16 v82, v58

    move-object/from16 v58, v12

    move/from16 v12, v82

    .local v12, "k":I
    .local v58, "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    :goto_20
    move-object/from16 v59, v5

    .end local v5    # "splits":[Lcom/itextpdf/layout/layout/LayoutResult;
    .local v59, "splits":[Lcom/itextpdf/layout/layout/LayoutResult;
    add-int v5, v11, v13

    if-ge v12, v5, :cond_33

    .line 520
    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    aget v5, v5, v12

    add-float/2addr v4, v5

    .line 519
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v59

    goto :goto_20

    .line 522
    .end local v12    # "k":I
    :cond_33
    const/4 v5, 0x0

    .local v5, "l":I
    :goto_21
    if-ge v5, v11, :cond_34

    .line 523
    iget-object v12, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    aget v12, v12, v5

    add-float v47, v47, v12

    .line 522
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 525
    .end local v5    # "l":I
    :cond_34
    const/4 v5, 0x0

    .line 526
    .local v5, "rowspanOffset":F
    add-int/lit8 v12, v2, -0x1

    .local v12, "m":I
    :goto_22
    move/from16 v60, v2

    .end local v2    # "row":I
    .local v60, "row":I
    iget v2, v3, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;->finishRowInd:I

    sub-int/2addr v2, v8

    if-le v12, v2, :cond_35

    if-ltz v12, :cond_35

    .line 527
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v5, v2

    .line 526
    add-int/lit8 v12, v12, -0x1

    move/from16 v2, v60

    goto :goto_22

    .line 529
    .end local v12    # "m":I
    :cond_35
    if-eqz v14, :cond_37

    if-eqz v6, :cond_36

    goto :goto_23

    :cond_36
    const/4 v2, 0x0

    goto :goto_24

    :cond_37
    :goto_23
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    :goto_24
    add-float/2addr v2, v5

    .line 530
    .local v2, "cellLayoutBoxHeight":F
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v12

    if-eqz v14, :cond_39

    if-eqz v6, :cond_38

    goto :goto_25

    :cond_38
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v61

    goto :goto_26

    :cond_39
    :goto_25
    const/16 v61, 0x0

    :goto_26
    add-float v12, v12, v61

    .line 531
    .local v12, "cellLayoutBoxBottom":F
    move/from16 v61, v6

    .end local v6    # "hasContent":Z
    .local v61, "hasContent":Z
    new-instance v6, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v62

    move/from16 v63, v5

    .end local v5    # "rowspanOffset":F
    .local v63, "rowspanOffset":F
    add-float v5, v62, v47

    invoke-direct {v6, v5, v12, v4, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object v5, v6

    .line 532
    .local v5, "cellLayoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    new-instance v6, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v62

    move/from16 v64, v2

    .end local v2    # "cellLayoutBoxHeight":F
    .local v64, "cellLayoutBoxHeight":F
    invoke-virtual/range {v62 .. v62}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v2

    invoke-direct {v6, v2, v5}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    move-object v2, v6

    .line 533
    .local v2, "cellArea":Lcom/itextpdf/layout/layout/LayoutArea;
    const/16 v6, 0x4b

    invoke-virtual {v7, v6}, Lcom/itextpdf/layout/renderer/CellRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v62

    move-object/from16 v65, v5

    .end local v5    # "cellLayoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v65, "cellLayoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    move-object/from16 v5, v62

    check-cast v5, Lcom/itextpdf/layout/property/VerticalAlignment;

    .line 534
    .local v5, "verticalAlignment":Lcom/itextpdf/layout/property/VerticalAlignment;
    move/from16 v62, v12

    const/4 v12, 0x0

    .end local v12    # "cellLayoutBoxBottom":F
    .local v62, "cellLayoutBoxBottom":F
    invoke-virtual {v7, v6, v12}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    .line 535
    const/16 v12, 0x4d

    invoke-virtual {v7, v12}, Lcom/itextpdf/layout/renderer/CellRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v66

    move-object/from16 v6, v66

    check-cast v6, Lcom/itextpdf/layout/property/UnitValue;

    .line 536
    .local v6, "cellWidthProperty":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v6, :cond_3a

    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v66

    if-eqz v66, :cond_3a

    .line 537
    move-object/from16 v66, v9

    .end local v9    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v66, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-static {v4}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v9

    invoke-virtual {v7, v12, v9}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_27

    .line 536
    .end local v66    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v9    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_3a
    move-object/from16 v66, v9

    .line 540
    .end local v9    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v66    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    :goto_27
    iget-object v9, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget v12, v3, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;->finishRowInd:I

    invoke-virtual {v9, v12, v11, v8, v13}, Lcom/itextpdf/layout/renderer/TableBorders;->getCellBorderIndents(IIII)[F

    move-result-object v9

    .line 542
    .local v9, "cellIndents":[F
    iget-object v12, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    move/from16 v75, v4

    .end local v4    # "cellWidth":F
    .local v75, "cellWidth":F
    instance-of v4, v12, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-nez v4, :cond_3b

    .line 543
    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v69

    const/4 v4, 0x0

    aget v70, v9, v4

    const/4 v4, 0x1

    aget v71, v9, v4

    const/4 v4, 0x2

    aget v68, v9, v4

    add-float v72, v68, v45

    const/4 v4, 0x3

    aget v73, v9, v4

    const/16 v74, 0x0

    move-object/from16 v68, v12

    invoke-virtual/range {v68 .. v74}, Lcom/itextpdf/layout/renderer/TableBorders;->applyCellIndents(Lcom/itextpdf/kernel/geom/Rectangle;FFFFZ)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 547
    :cond_3b
    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    .line 550
    .end local v75    # "cellWidth":F
    .restart local v4    # "cellWidth":F
    const/16 v12, 0x6c

    invoke-virtual {v10, v12}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v68

    move-object/from16 v12, v68

    check-cast v12, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    .line 551
    .local v12, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    if-eqz v12, :cond_3c

    .line 552
    move/from16 v68, v8

    .end local v8    # "rowspan":I
    .local v68, "rowspan":I
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v12, v10, v8}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;)V

    .line 553
    invoke-static {v12, v7}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addTreeHints(Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_28

    .line 551
    .end local v68    # "rowspan":I
    .restart local v8    # "rowspan":I
    :cond_3c
    move/from16 v68, v8

    .line 556
    .end local v8    # "rowspan":I
    .restart local v68    # "rowspan":I
    :goto_28
    invoke-virtual {v7, v10}, Lcom/itextpdf/layout/renderer/CellRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v8

    move/from16 v69, v13

    .end local v13    # "colspan":I
    .local v69, "colspan":I
    new-instance v13, Lcom/itextpdf/layout/layout/LayoutContext;

    if-nez v32, :cond_3e

    if-eqz v15, :cond_3d

    goto :goto_29

    :cond_3d
    move-object/from16 v70, v9

    const/4 v9, 0x0

    goto :goto_2a

    :cond_3e
    :goto_29
    move-object/from16 v70, v9

    const/4 v9, 0x1

    .end local v9    # "cellIndents":[F
    .local v70, "cellIndents":[F
    :goto_2a
    move-object/from16 v71, v12

    const/4 v12, 0x0

    .end local v12    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .local v71, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    invoke-direct {v13, v2, v12, v0, v9}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;Ljava/util/List;Z)V

    invoke-interface {v8, v13}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v8

    .line 557
    .local v8, "cellResult":Lcom/itextpdf/layout/layout/LayoutResult;
    if-eqz v6, :cond_3f

    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 558
    const/16 v9, 0x4d

    invoke-virtual {v7, v9, v6}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    .line 559
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v12

    if-eqz v12, :cond_3f

    .line 560
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v12

    invoke-interface {v12, v9, v6}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 563
    :cond_3f
    const/16 v9, 0x4b

    invoke-virtual {v7, v9, v5}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    .line 565
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v9

    const/4 v12, 0x3

    if-eq v9, v12, :cond_40

    .line 566
    invoke-virtual {v7}, Lcom/itextpdf/layout/renderer/CellRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_2b

    .line 567
    :cond_40
    if-nez v1, :cond_41

    .line 568
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    .line 571
    :cond_41
    :goto_2b
    if-eqz v14, :cond_44

    .line 573
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v9

    const/4 v12, 0x1

    if-eq v9, v12, :cond_42

    .line 574
    aput-object v8, v59, v11

    .line 575
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v9

    const/4 v12, 0x3

    if-eq v9, v12, :cond_42

    .line 577
    aget-object v9, v59, v11

    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v9

    sget-object v12, Lcom/itextpdf/layout/property/VerticalAlignment;->TOP:Lcom/itextpdf/layout/property/VerticalAlignment;

    const/16 v13, 0x4b

    invoke-interface {v9, v13, v12}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 580
    :cond_42
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v9

    const/4 v12, 0x2

    if-ne v9, v12, :cond_43

    .line 581
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/layout/renderer/CellRenderer;

    aput-object v9, v58, v11

    move-object/from16 v72, v2

    move-object/from16 v74, v3

    move/from16 v75, v4

    move-object/from16 v13, v30

    move/from16 v12, v54

    move/from16 v4, v60

    const/16 v25, 0x0

    move-object/from16 v30, v0

    move-object/from16 v54, v1

    move-object/from16 v60, v6

    move-object/from16 v6, v21

    move-object/from16 v0, v66

    move-object/from16 v21, v71

    goto/16 :goto_3a

    .line 583
    :cond_43
    iget-object v9, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    iget v12, v3, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;->finishRowInd:I

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/itextpdf/layout/renderer/CellRenderer;

    const/4 v12, 0x0

    aput-object v12, v9, v11

    .line 584
    aput-object v7, v58, v11

    .line 585
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v12, v3, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;->finishRowInd:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v13, v30

    .end local v30    # "rowMoves":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v13, "rowMoves":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v13, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v30, v0

    move-object/from16 v72, v2

    move-object/from16 v74, v3

    move/from16 v75, v4

    move/from16 v12, v54

    move/from16 v4, v60

    move-object/from16 v0, v66

    const/16 v25, 0x0

    move-object/from16 v54, v1

    move-object/from16 v60, v6

    move-object/from16 v6, v21

    move-object/from16 v21, v71

    goto/16 :goto_3a

    .line 589
    .end local v13    # "rowMoves":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v30    # "rowMoves":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_44
    move-object/from16 v13, v30

    .end local v30    # "rowMoves":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v13    # "rowMoves":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v9

    const/4 v12, 0x1

    if-eq v9, v12, :cond_5b

    .line 591
    if-nez v44, :cond_59

    .line 596
    iget-object v9, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v9, :cond_45

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isSkipLastFooter()Z

    move-result v9

    if-eqz v9, :cond_45

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v9

    if-eqz v9, :cond_45

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 597
    move-object/from16 v30, v0

    const/16 v12, 0x1a

    .end local v0    # "childFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v30, "childFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-virtual {v10, v12}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const/4 v0, 0x1

    goto :goto_2c

    .line 596
    .end local v30    # "childFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v0    # "childFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :cond_45
    move-object/from16 v30, v0

    .line 597
    .end local v0    # "childFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v30    # "childFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :cond_46
    const/4 v0, 0x0

    .line 598
    .local v0, "skipLastFooter":Z
    :goto_2c
    if-eqz v0, :cond_53

    .line 599
    new-instance v9, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual/range {v56 .. v56}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v12

    move/from16 v67, v0

    .end local v0    # "skipLastFooter":Z
    .local v67, "skipLastFooter":Z
    invoke-virtual/range {v66 .. v66}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-direct {v9, v12, v0}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    move-object v0, v9

    .line 600
    .local v0, "potentialArea":Lcom/itextpdf/layout/layout/LayoutArea;
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v9

    move/from16 v12, v54

    move-object/from16 v54, v1

    const/4 v1, 0x1

    .end local v1    # "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v12, "horizontalBorderSpacing":F
    .local v54, "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-direct {v10, v9, v12, v1, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->applySingleSpacing(Lcom/itextpdf/kernel/geom/Rectangle;FZZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 602
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v9, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v9}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v9

    add-int v9, v9, v60

    invoke-virtual {v1, v9}, Lcom/itextpdf/layout/renderer/TableBorders;->getWidestHorizontalBorder(I)Lcom/itextpdf/layout/borders/Border;

    move-result-object v1

    .line 603
    .local v1, "widestRowTopBorder":Lcom/itextpdf/layout/borders/Border;
    iget-object v9, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v9, v9, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    if-eqz v9, :cond_47

    if-eqz v1, :cond_47

    .line 604
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v9

    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v72

    move-object/from16 v73, v1

    .end local v1    # "widestRowTopBorder":Lcom/itextpdf/layout/borders/Border;
    .local v73, "widestRowTopBorder":Lcom/itextpdf/layout/borders/Border;
    div-float v1, v72, v37

    invoke-virtual {v9, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_2d

    .line 603
    .end local v73    # "widestRowTopBorder":Lcom/itextpdf/layout/borders/Border;
    .restart local v1    # "widestRowTopBorder":Lcom/itextpdf/layout/borders/Border;
    :cond_47
    move-object/from16 v73, v1

    .line 606
    .end local v1    # "widestRowTopBorder":Lcom/itextpdf/layout/borders/Border;
    .restart local v73    # "widestRowTopBorder":Lcom/itextpdf/layout/borders/Border;
    :goto_2d
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v1, :cond_48

    .line 607
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    iget-object v9, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v9}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxTopWidth()F

    move-result v9

    invoke-virtual {v1, v9}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 609
    :cond_48
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v9

    move-object/from16 v72, v2

    const/4 v2, 0x1

    .end local v2    # "cellArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .local v72, "cellArea":Lcom/itextpdf/layout/layout/LayoutArea;
    invoke-virtual {v1, v9, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->applyLeftAndRightTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 610
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    .line 611
    .local v1, "footerHeight":F
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    div-float v9, v53, v37

    sub-float v9, v1, v9

    invoke-virtual {v2, v9}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 613
    new-instance v2, Lcom/itextpdf/layout/element/Table$RowRange;

    iget-object v9, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v9}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v9

    add-int v9, v9, v60

    move-object/from16 v74, v3

    .end local v3    # "currentCellInfo":Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;
    .local v74, "currentCellInfo":Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;
    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v3

    invoke-direct {v2, v9, v3}, Lcom/itextpdf/layout/element/Table$RowRange;-><init>(II)V

    invoke-virtual {v10, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->createOverflowRenderer(Lcom/itextpdf/layout/element/Table$RowRange;)Lcom/itextpdf/layout/renderer/TableRenderer;

    move-result-object v2

    .line 614
    .local v2, "overflowRenderer":Lcom/itextpdf/layout/renderer/TableRenderer;
    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    move/from16 v75, v4

    move/from16 v4, v60

    .end local v60    # "row":I
    .local v4, "row":I
    .restart local v75    # "cellWidth":F
    invoke-interface {v3, v4, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    .line 615
    const/16 v3, 0x61

    move-object/from16 v60, v6

    const/4 v9, 0x1

    .end local v6    # "cellWidthProperty":Lcom/itextpdf/layout/property/UnitValue;
    .local v60, "cellWidthProperty":Lcom/itextpdf/layout/property/UnitValue;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 616
    const/16 v3, 0x60

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 617
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v3

    const/16 v6, 0x2e

    invoke-virtual {v2, v6, v3}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 618
    invoke-static {v9}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v3

    const/16 v9, 0x2b

    invoke-virtual {v2, v9, v3}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 619
    const/16 v3, 0x2c

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 620
    const/16 v3, 0x2d

    invoke-static/range {v25 .. v25}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 622
    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v3, :cond_49

    .line 623
    sget-object v3, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    const/16 v6, 0xd

    invoke-virtual {v2, v6, v3}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 625
    :cond_49
    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iput-object v3, v2, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    .line 627
    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/itextpdf/layout/renderer/TableBorders;->skipFooter([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 628
    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v3, :cond_4a

    .line 629
    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/itextpdf/layout/renderer/TableBorders;->skipHeader([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 631
    :cond_4a
    iget-object v3, v2, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget v3, v3, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    .line 632
    .local v3, "savedStartRow":I
    iget-object v6, v2, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v6, v4}, Lcom/itextpdf/layout/renderer/TableBorders;->setStartRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 633
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    invoke-direct {v10, v2, v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->prepareFooterOrHeaderRendererForLayout(Lcom/itextpdf/layout/renderer/TableRenderer;F)Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 634
    new-instance v6, Lcom/itextpdf/layout/layout/LayoutContext;

    if-nez v32, :cond_4c

    if-eqz v15, :cond_4b

    goto :goto_2e

    :cond_4b
    const/4 v9, 0x0

    goto :goto_2f

    :cond_4c
    :goto_2e
    const/4 v9, 0x1

    :goto_2f
    invoke-direct {v6, v0, v9}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    invoke-virtual {v2, v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v6

    .line 635
    .local v6, "res":Lcom/itextpdf/layout/layout/LayoutResult;
    iget-object v9, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v9, v3}, Lcom/itextpdf/layout/renderer/TableBorders;->setStartRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 636
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v9

    move-object/from16 v76, v0

    const/4 v0, 0x1

    .end local v0    # "potentialArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .local v76, "potentialArea":Lcom/itextpdf/layout/layout/LayoutArea;
    if-ne v0, v9, :cond_51

    .line 637
    if-eqz v71, :cond_4d

    .line 639
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    move-object/from16 v9, v71

    .end local v71    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .local v9, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    invoke-virtual {v9, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->markArtifactHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    goto :goto_30

    .line 637
    .end local v9    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .restart local v71    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    :cond_4d
    move-object/from16 v9, v71

    .line 641
    .end local v71    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .restart local v9    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    :goto_30
    const/4 v0, 0x0

    iput-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 643
    move-object/from16 v0, v66

    move-object/from16 v66, v2

    .end local v2    # "overflowRenderer":Lcom/itextpdf/layout/renderer/TableRenderer;
    .local v0, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v66, "overflowRenderer":Lcom/itextpdf/layout/renderer/TableRenderer;
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 644
    const/16 v2, 0xa

    invoke-virtual {v10, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->deleteOwnProperty(I)V

    .line 646
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    move/from16 v71, v1

    .end local v1    # "footerHeight":F
    .local v71, "footerHeight":F
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v2, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 647
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v2

    add-int/2addr v2, v4

    const/16 v29, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->getWidestHorizontalBorder(I)Lcom/itextpdf/layout/borders/Border;

    move-result-object v42

    .line 648
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 649
    if-nez v42, :cond_4e

    move/from16 v1, v25

    goto :goto_31

    :cond_4e
    invoke-virtual/range {v42 .. v42}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    :goto_31
    move/from16 v45, v1

    .line 651
    invoke-interface/range {v21 .. v21}, Ljava/util/Deque;->clear()V

    .line 652
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->clear()V

    .line 653
    const/4 v1, 0x0

    .local v1, "addCol":I
    :goto_32
    move-object/from16 v2, v58

    move/from16 v58, v3

    .end local v3    # "savedStartRow":I
    .local v2, "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .local v58, "savedStartRow":I
    array-length v3, v2

    if-ge v1, v3, :cond_50

    .line 654
    aget-object v3, v2, v1

    if-eqz v3, :cond_4f

    .line 655
    new-instance v3, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;

    move-object/from16 v77, v6

    .end local v6    # "res":Lcom/itextpdf/layout/layout/LayoutResult;
    .local v77, "res":Lcom/itextpdf/layout/layout/LayoutResult;
    aget-object v6, v2, v1

    invoke-direct {v3, v6, v1, v4}, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;-><init>(Lcom/itextpdf/layout/renderer/CellRenderer;II)V

    move-object/from16 v6, v21

    .end local v21    # "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .local v6, "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    invoke-interface {v6, v3}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_33

    .line 654
    .end local v77    # "res":Lcom/itextpdf/layout/layout/LayoutResult;
    .local v6, "res":Lcom/itextpdf/layout/layout/LayoutResult;
    .restart local v21    # "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    :cond_4f
    move-object/from16 v77, v6

    move-object/from16 v6, v21

    .line 653
    .end local v21    # "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .local v6, "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .restart local v77    # "res":Lcom/itextpdf/layout/layout/LayoutResult;
    :goto_33
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v21, v6

    move/from16 v3, v58

    move-object/from16 v6, v77

    move-object/from16 v58, v2

    goto :goto_32

    .end local v77    # "res":Lcom/itextpdf/layout/layout/LayoutResult;
    .local v6, "res":Lcom/itextpdf/layout/layout/LayoutResult;
    .restart local v21    # "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    :cond_50
    move-object/from16 v77, v6

    move-object/from16 v6, v21

    .end local v21    # "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .local v6, "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .restart local v77    # "res":Lcom/itextpdf/layout/layout/LayoutResult;
    move-object v9, v0

    move-object v7, v6

    move/from16 v47, v11

    move v8, v12

    move-object/from16 v0, v30

    move-object/from16 v3, v50

    move/from16 v11, v52

    move-object/from16 v1, v54

    move-object/from16 v14, v56

    move-object/from16 v5, v59

    move/from16 v6, v61

    move-object v12, v2

    move v2, v4

    move-object/from16 v30, v13

    move/from16 v13, v53

    move-object/from16 v4, v57

    goto/16 :goto_1e

    .line 660
    .end local v0    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v9    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .end local v77    # "res":Lcom/itextpdf/layout/layout/LayoutResult;
    .local v1, "footerHeight":F
    .local v2, "overflowRenderer":Lcom/itextpdf/layout/renderer/TableRenderer;
    .restart local v3    # "savedStartRow":I
    .local v6, "res":Lcom/itextpdf/layout/layout/LayoutResult;
    .restart local v21    # "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .local v58, "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .local v66, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v71, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    :cond_51
    move-object/from16 v77, v6

    move-object/from16 v6, v21

    move-object/from16 v0, v66

    move-object/from16 v9, v71

    move/from16 v71, v1

    move-object/from16 v66, v2

    move-object/from16 v2, v58

    move/from16 v58, v3

    .end local v1    # "footerHeight":F
    .end local v3    # "savedStartRow":I
    .end local v21    # "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .restart local v0    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v2, "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .local v6, "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .restart local v9    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .local v58, "savedStartRow":I
    .local v66, "overflowRenderer":Lcom/itextpdf/layout/renderer/TableRenderer;
    .local v71, "footerHeight":F
    .restart local v77    # "res":Lcom/itextpdf/layout/layout/LayoutResult;
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v1, :cond_52

    .line 661
    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    move-object/from16 v21, v9

    const/4 v9, 0x0

    .end local v9    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .local v21, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    invoke-virtual {v3, v1, v9}, Lcom/itextpdf/layout/renderer/TableBorders;->collapseTableWithHeader(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    goto :goto_34

    .line 660
    .end local v21    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .restart local v9    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    :cond_52
    move-object/from16 v21, v9

    const/4 v9, 0x0

    .line 663
    .end local v9    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .restart local v21    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    :goto_34
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v3, v3, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v1, v3, v9}, Lcom/itextpdf/layout/renderer/TableBorders;->collapseTableWithFooter(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 664
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    sget-object v3, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    const/4 v9, 0x2

    aput-object v3, v1, v9

    goto :goto_35

    .line 598
    .end local v12    # "horizontalBorderSpacing":F
    .end local v67    # "skipLastFooter":Z
    .end local v72    # "cellArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v73    # "widestRowTopBorder":Lcom/itextpdf/layout/borders/Border;
    .end local v74    # "currentCellInfo":Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;
    .end local v75    # "cellWidth":F
    .end local v76    # "potentialArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v77    # "res":Lcom/itextpdf/layout/layout/LayoutResult;
    .local v0, "skipLastFooter":Z
    .local v1, "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v2, "cellArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .local v3, "currentCellInfo":Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;
    .local v4, "cellWidth":F
    .local v6, "cellWidthProperty":Lcom/itextpdf/layout/property/UnitValue;
    .local v21, "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .local v54, "horizontalBorderSpacing":F
    .local v58, "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .local v60, "row":I
    .local v66, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v71, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    :cond_53
    move/from16 v67, v0

    move-object/from16 v72, v2

    move-object/from16 v74, v3

    move/from16 v75, v4

    move/from16 v12, v54

    move-object/from16 v2, v58

    move/from16 v4, v60

    move-object/from16 v0, v66

    const/16 v25, 0x0

    move-object/from16 v54, v1

    move-object/from16 v60, v6

    move-object/from16 v6, v21

    move-object/from16 v21, v71

    .line 671
    .end local v1    # "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v3    # "currentCellInfo":Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;
    .end local v58    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v66    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v71    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .local v0, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v2, "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .local v4, "row":I
    .local v6, "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .restart local v12    # "horizontalBorderSpacing":F
    .local v21, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .local v54, "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v60, "cellWidthProperty":Lcom/itextpdf/layout/property/UnitValue;
    .restart local v67    # "skipLastFooter":Z
    .restart local v72    # "cellArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .restart local v74    # "currentCellInfo":Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;
    .restart local v75    # "cellWidth":F
    :goto_35
    const/4 v1, 0x0

    .local v1, "addCol":I
    :goto_36
    array-length v3, v2

    if-ge v1, v3, :cond_58

    .line 672
    aget-object v3, v2, v1

    if-nez v3, :cond_56

    .line 674
    add-int/lit8 v3, v4, 0x1

    .local v3, "addRow":I
    :goto_37
    iget-object v9, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_55

    .line 675
    iget-object v9, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v9, v9, v1

    if-eqz v9, :cond_54

    .line 676
    iget-object v9, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v9, v9, v1

    .line 677
    .local v9, "addRenderer":Lcom/itextpdf/layout/renderer/CellRenderer;
    move-object/from16 v58, v2

    const/16 v2, 0x3c

    .end local v2    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .restart local v58    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    invoke-virtual {v9, v2}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Integer;->intValue()I

    move-result v51

    add-int v51, v4, v51

    const/16 v29, 0x1

    add-int/lit8 v2, v51, -0x1

    if-lt v2, v3, :cond_57

    .line 678
    new-instance v2, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;

    invoke-direct {v2, v9, v1, v3}, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;-><init>(Lcom/itextpdf/layout/renderer/CellRenderer;II)V

    invoke-interface {v6, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_38

    .line 674
    .end local v9    # "addRenderer":Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v58    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .restart local v2    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    :cond_54
    move-object/from16 v58, v2

    .end local v2    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .restart local v58    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .end local v58    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .restart local v2    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    :cond_55
    move-object/from16 v58, v2

    .end local v2    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .restart local v58    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    goto :goto_38

    .line 672
    .end local v3    # "addRow":I
    .end local v58    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .restart local v2    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    :cond_56
    move-object/from16 v58, v2

    .line 671
    .end local v2    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .restart local v58    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    :cond_57
    :goto_38
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v58

    goto :goto_36

    .end local v58    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .restart local v2    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    :cond_58
    move-object/from16 v58, v2

    .end local v2    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .restart local v58    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    goto :goto_39

    .line 591
    .end local v12    # "horizontalBorderSpacing":F
    .end local v30    # "childFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v67    # "skipLastFooter":Z
    .end local v72    # "cellArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v74    # "currentCellInfo":Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;
    .end local v75    # "cellWidth":F
    .local v0, "childFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v1, "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v2, "cellArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .local v3, "currentCellInfo":Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;
    .local v4, "cellWidth":F
    .local v6, "cellWidthProperty":Lcom/itextpdf/layout/property/UnitValue;
    .local v21, "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .local v54, "horizontalBorderSpacing":F
    .local v60, "row":I
    .restart local v66    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v71    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    :cond_59
    move-object/from16 v30, v0

    move-object/from16 v72, v2

    move-object/from16 v74, v3

    move/from16 v75, v4

    move/from16 v12, v54

    move/from16 v4, v60

    move-object/from16 v0, v66

    const/16 v25, 0x0

    move-object/from16 v54, v1

    move-object/from16 v60, v6

    move-object/from16 v6, v21

    move-object/from16 v21, v71

    .line 686
    .end local v1    # "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v2    # "cellArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v3    # "currentCellInfo":Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;
    .end local v66    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v71    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .local v0, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v4, "row":I
    .local v6, "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .restart local v12    # "horizontalBorderSpacing":F
    .local v21, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .restart local v30    # "childFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v54, "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v60, "cellWidthProperty":Lcom/itextpdf/layout/property/UnitValue;
    .restart local v72    # "cellArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .restart local v74    # "currentCellInfo":Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;
    .restart local v75    # "cellWidth":F
    :goto_39
    const/4 v1, 0x1

    .line 687
    .end local v44    # "split":Z
    .local v1, "split":Z
    aput-object v8, v59, v11

    .line 688
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5a

    .line 689
    const/4 v2, 0x0

    .line 690
    .end local v61    # "hasContent":Z
    .local v2, "hasContent":Z
    aget-object v3, v59, v11

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    const/16 v9, 0x4b

    invoke-interface {v3, v9, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    move/from16 v44, v1

    move/from16 v61, v2

    goto :goto_3a

    .line 688
    .end local v2    # "hasContent":Z
    .restart local v61    # "hasContent":Z
    :cond_5a
    move/from16 v44, v1

    goto :goto_3a

    .line 589
    .end local v12    # "horizontalBorderSpacing":F
    .end local v30    # "childFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v72    # "cellArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v74    # "currentCellInfo":Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;
    .end local v75    # "cellWidth":F
    .local v0, "childFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v1, "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v2, "cellArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .restart local v3    # "currentCellInfo":Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;
    .local v4, "cellWidth":F
    .local v6, "cellWidthProperty":Lcom/itextpdf/layout/property/UnitValue;
    .local v21, "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .restart local v44    # "split":Z
    .local v54, "horizontalBorderSpacing":F
    .local v60, "row":I
    .restart local v66    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v71    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    :cond_5b
    move-object/from16 v30, v0

    move-object/from16 v72, v2

    move-object/from16 v74, v3

    move/from16 v75, v4

    move/from16 v12, v54

    move/from16 v4, v60

    move-object/from16 v0, v66

    const/16 v25, 0x0

    move-object/from16 v54, v1

    move-object/from16 v60, v6

    move-object/from16 v6, v21

    move-object/from16 v21, v71

    .line 694
    .end local v1    # "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v2    # "cellArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v3    # "currentCellInfo":Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;
    .end local v66    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v71    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .local v0, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v4, "row":I
    .local v6, "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .restart local v12    # "horizontalBorderSpacing":F
    .local v21, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .restart local v30    # "childFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v54, "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v60, "cellWidthProperty":Lcom/itextpdf/layout/property/UnitValue;
    .restart local v72    # "cellArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .restart local v74    # "currentCellInfo":Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;
    .restart local v75    # "cellWidth":F
    :goto_3a
    move-object/from16 v3, v43

    .end local v43    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .local v3, "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5c

    .line 696
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    move-object/from16 v9, v70

    .end local v70    # "cellIndents":[F
    .local v9, "cellIndents":[F
    invoke-virtual {v2, v9}, Lcom/itextpdf/layout/renderer/TableBorders;->getCellVerticalAddition([F)F

    move-result v2

    add-float/2addr v1, v2

    sub-float v1, v1, v63

    move/from16 v2, v52

    .end local v52    # "rowHeight":F
    .local v2, "rowHeight":F
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .end local v2    # "rowHeight":F
    .local v1, "rowHeight":F
    goto :goto_3b

    .line 695
    .end local v1    # "rowHeight":F
    .end local v9    # "cellIndents":[F
    .restart local v52    # "rowHeight":F
    .restart local v70    # "cellIndents":[F
    :cond_5c
    move/from16 v2, v52

    move-object/from16 v9, v70

    .end local v52    # "rowHeight":F
    .end local v70    # "cellIndents":[F
    .restart local v2    # "rowHeight":F
    .restart local v9    # "cellIndents":[F
    move v1, v2

    .line 698
    .end local v2    # "rowHeight":F
    .end local v5    # "verticalAlignment":Lcom/itextpdf/layout/property/VerticalAlignment;
    .end local v7    # "cell":Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v8    # "cellResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v9    # "cellIndents":[F
    .end local v14    # "currentCellHasBigRowspan":Z
    .end local v21    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .end local v47    # "colOffset":F
    .end local v60    # "cellWidthProperty":Lcom/itextpdf/layout/property/UnitValue;
    .end local v62    # "cellLayoutBoxBottom":F
    .end local v63    # "rowspanOffset":F
    .end local v64    # "cellLayoutBoxHeight":F
    .end local v65    # "cellLayoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v68    # "rowspan":I
    .end local v69    # "colspan":I
    .end local v72    # "cellArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v74    # "currentCellInfo":Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;
    .end local v75    # "cellWidth":F
    .restart local v1    # "rowHeight":F
    :goto_3b
    move-object v9, v0

    move-object/from16 v43, v3

    move v2, v4

    move-object v7, v6

    move/from16 v47, v11

    move v8, v12

    move-object/from16 v0, v30

    move-object/from16 v3, v50

    move-object/from16 v14, v56

    move-object/from16 v4, v57

    move-object/from16 v12, v58

    move-object/from16 v5, v59

    move/from16 v6, v61

    move v11, v1

    move-object/from16 v30, v13

    move/from16 v13, v53

    move-object/from16 v1, v54

    goto/16 :goto_1e

    .line 699
    .end local v3    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .end local v53    # "verticalBorderSpacing":F
    .end local v54    # "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v56    # "area":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v57    # "targetOverflowRowIndex":[I
    .end local v58    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v59    # "splits":[Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v61    # "hasContent":Z
    .local v0, "childFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v1, "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v2, "row":I
    .local v4, "targetOverflowRowIndex":[I
    .local v5, "splits":[Lcom/itextpdf/layout/layout/LayoutResult;
    .local v6, "hasContent":Z
    .local v7, "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .local v8, "horizontalBorderSpacing":F
    .local v9, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v11, "rowHeight":F
    .local v12, "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .local v13, "verticalBorderSpacing":F
    .local v14, "area":Lcom/itextpdf/layout/layout/LayoutArea;
    .local v30, "rowMoves":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v43    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .local v47, "col":I
    :cond_5d
    move-object/from16 v57, v4

    move-object/from16 v59, v5

    move/from16 v61, v6

    move-object v6, v7

    move-object/from16 v58, v12

    move/from16 v53, v13

    move-object/from16 v56, v14

    move-object/from16 v13, v30

    move-object/from16 v3, v43

    const/16 v25, 0x0

    move-object/from16 v30, v0

    move v4, v2

    move v12, v8

    move-object v0, v9

    const/4 v2, 0x3

    const/4 v9, 0x2

    .end local v2    # "row":I
    .end local v5    # "splits":[Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v7    # "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .end local v8    # "horizontalBorderSpacing":F
    .end local v9    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v14    # "area":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v43    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .local v0, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v3    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .local v4, "row":I
    .local v6, "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .local v12, "horizontalBorderSpacing":F
    .local v13, "rowMoves":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v30, "childFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v53    # "verticalBorderSpacing":F
    .restart local v56    # "area":Lcom/itextpdf/layout/layout/LayoutArea;
    .restart local v57    # "targetOverflowRowIndex":[I
    .restart local v58    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .restart local v59    # "splits":[Lcom/itextpdf/layout/layout/LayoutResult;
    .restart local v61    # "hasContent":Z
    if-eqz v61, :cond_5e

    .line 700
    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v7, v50

    .end local v50    # "rowsHasCellWithSetHeight":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .local v7, "rowsHasCellWithSetHeight":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 703
    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 704
    invoke-virtual {v0, v11}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_3c

    .line 699
    .end local v7    # "rowsHasCellWithSetHeight":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v50    # "rowsHasCellWithSetHeight":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :cond_5e
    move-object/from16 v7, v50

    .line 707
    .end local v50    # "rowsHasCellWithSetHeight":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v7    # "rowsHasCellWithSetHeight":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :goto_3c
    if-nez v44, :cond_60

    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    if-ne v4, v5, :cond_5f

    goto :goto_3d

    :cond_5f
    move-object/from16 v78, v1

    move-object/from16 v80, v3

    move-object/from16 v25, v6

    move-object/from16 v43, v7

    move/from16 v52, v11

    move/from16 v81, v12

    move-object/from16 v50, v13

    move/from16 v54, v20

    move/from16 v79, v46

    move-object/from16 v51, v57

    move-object/from16 v55, v59

    move/from16 v14, v61

    const/16 v26, 0x2b

    const/16 v31, 0x2e

    move-object v12, v0

    move v13, v4

    move v11, v9

    goto/16 :goto_42

    .line 708
    :cond_60
    :goto_3d
    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v5}, Lcom/itextpdf/layout/renderer/TableBorders;->getStartRow()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v5, v8}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 709
    if-nez v61, :cond_61

    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v5}, Lcom/itextpdf/layout/renderer/TableBorders;->getFinishRow()I

    move-result v5

    iget-object v8, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v8}, Lcom/itextpdf/layout/renderer/TableBorders;->getStartRow()I

    move-result v8

    if-eq v5, v8, :cond_61

    .line 710
    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v5}, Lcom/itextpdf/layout/renderer/TableBorders;->getFinishRow()I

    move-result v8

    const/4 v14, 0x1

    sub-int/2addr v8, v14

    invoke-virtual {v5, v8}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 712
    :cond_61
    const/4 v5, 0x0

    .line 713
    .local v5, "skip":Z
    iget-object v8, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v8, :cond_65

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v8

    if-eqz v8, :cond_65

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isSkipLastFooter()Z

    move-result v8

    if-eqz v8, :cond_65

    if-nez v44, :cond_65

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 714
    const/16 v14, 0x1a

    invoke-virtual {v10, v14}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 715
    const/16 v2, 0x6c

    invoke-virtual {v10, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    check-cast v2, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    .line 716
    .local v2, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    if-eqz v2, :cond_62

    .line 718
    iget-object v8, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v2, v8}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->markArtifactHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    .line 720
    :cond_62
    const/4 v8, 0x0

    iput-object v8, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 721
    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_63

    .line 722
    const/16 v8, 0xd

    invoke-virtual {v10, v8}, Lcom/itextpdf/layout/renderer/TableRenderer;->deleteOwnProperty(I)V

    goto :goto_3e

    .line 721
    :cond_63
    const/16 v8, 0xd

    .line 724
    :goto_3e
    const/4 v5, 0x1

    move/from16 v17, v5

    goto :goto_40

    .line 714
    .end local v2    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    :cond_64
    const/16 v8, 0xd

    goto :goto_3f

    .line 713
    :cond_65
    const/16 v8, 0xd

    const/16 v14, 0x1a

    .line 727
    :goto_3f
    move/from16 v17, v5

    .end local v5    # "skip":Z
    .local v17, "skip":Z
    :goto_40
    xor-int/lit8 v19, v44, 0x1

    if-nez v61, :cond_66

    if-eqz v20, :cond_66

    const/16 v21, 0x1

    goto :goto_41

    :cond_66
    const/16 v21, 0x0

    :goto_41
    move v5, v14

    move-object v14, v0

    .end local v0    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v14, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    move-object/from16 v0, p0

    move-object v2, v1

    move/from16 v52, v11

    move/from16 v54, v12

    move/from16 v11, v20

    const/16 v12, 0x56

    .end local v1    # "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v12    # "horizontalBorderSpacing":F
    .end local v20    # "cellWithBigRowspanAdded":Z
    .local v2, "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v11, "cellWithBigRowspanAdded":Z
    .restart local v52    # "rowHeight":F
    .local v54, "horizontalBorderSpacing":F
    move-object/from16 v1, v59

    move-object/from16 v78, v2

    move-object/from16 v12, v58

    const/16 v16, 0x3

    .end local v2    # "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v58    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .local v12, "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .local v78, "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    move v2, v4

    move-object/from16 v43, v7

    move-object/from16 v50, v13

    move/from16 v13, v16

    move-object v7, v3

    .end local v3    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .end local v13    # "rowMoves":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v7, "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .local v43, "rowsHasCellWithSetHeight":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .local v50, "rowMoves":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v3, v57

    move v13, v4

    move-object/from16 v51, v57

    .end local v4    # "row":I
    .end local v57    # "targetOverflowRowIndex":[I
    .local v13, "row":I
    .local v51, "targetOverflowRowIndex":[I
    move-object/from16 v4, v35

    move-object/from16 v55, v59

    .end local v59    # "splits":[Lcom/itextpdf/layout/layout/LayoutResult;
    .local v55, "splits":[Lcom/itextpdf/layout/layout/LayoutResult;
    move-object v5, v14

    move-object v8, v6

    move-object/from16 v66, v14

    move/from16 v14, v61

    const/4 v12, 0x0

    const/16 v31, 0x2e

    .end local v6    # "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .end local v12    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v61    # "hasContent":Z
    .local v8, "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .local v14, "hasContent":Z
    .restart local v58    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .restart local v66    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    move-object/from16 v6, v43

    move-object/from16 v80, v7

    move/from16 v79, v46

    move/from16 v82, v25

    move-object/from16 v25, v8

    move/from16 v8, v82

    .end local v7    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .end local v8    # "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .end local v46    # "numberOfColumns":I
    .local v25, "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .local v79, "numberOfColumns":I
    .local v80, "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    move/from16 v7, v19

    move/from16 v81, v54

    const/16 v26, 0x2b

    .end local v54    # "horizontalBorderSpacing":F
    .local v81, "horizontalBorderSpacing":F
    move/from16 v8, v21

    move/from16 v54, v11

    move-object/from16 v12, v66

    move v11, v9

    .end local v11    # "cellWithBigRowspanAdded":Z
    .end local v66    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v12, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v54, "cellWithBigRowspanAdded":Z
    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/layout/renderer/TableRenderer;->correctLayoutedCellsOccupiedAreas([Lcom/itextpdf/layout/layout/LayoutResult;I[ILjava/lang/Float;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/List;ZZZ)V

    .line 730
    .end local v17    # "skip":Z
    :goto_42
    if-nez v44, :cond_68

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne v13, v0, :cond_67

    goto :goto_43

    :cond_67
    const/4 v8, 0x0

    goto/16 :goto_49

    :cond_68
    :goto_43
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_71

    .line 732
    if-nez v14, :cond_69

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_69

    .line 733
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v12, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    goto :goto_44

    .line 735
    :cond_69
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v17

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v16, v0

    move-object/from16 v18, v12

    invoke-virtual/range {v16 .. v21}, Lcom/itextpdf/layout/renderer/TableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 737
    :goto_44
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-nez v0, :cond_70

    .line 738
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    invoke-virtual {v12, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 740
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    const/4 v1, 0x1

    invoke-virtual {v0, v12, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->applyLeftAndRightTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 741
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-direct {v10, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->prepareFooterOrHeaderRendererForLayout(Lcom/itextpdf/layout/renderer/TableRenderer;F)Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 747
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v1, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    if-eqz v1, :cond_6a

    .line 748
    check-cast v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setBottomBorderCollapseWith(Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    .line 750
    :cond_6a
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    if-nez v14, :cond_6c

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_6b

    goto :goto_45

    :cond_6b
    const/4 v2, 0x0

    goto :goto_46

    :cond_6c
    :goto_45
    const/4 v2, 0x1

    :goto_46
    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->collapseTableWithFooter(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 752
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    if-eqz v0, :cond_6d

    .line 753
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v1

    aget-object v1, v1, v11

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v2

    aget-object v2, v2, v11

    invoke-static {v1, v2}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCollapsedBorder(Lcom/itextpdf/layout/borders/Border;Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/borders/Border;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/itextpdf/layout/renderer/TableRenderer;->setBorders(Lcom/itextpdf/layout/borders/Border;I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 755
    :cond_6d
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v2, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual/range {v56 .. v56}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v3

    invoke-direct {v2, v3, v12}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    if-nez v32, :cond_6f

    if-eqz v15, :cond_6e

    goto :goto_47

    :cond_6e
    const/4 v3, 0x0

    goto :goto_48

    :cond_6f
    :goto_47
    const/4 v3, 0x1

    :goto_48
    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    .line 756
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->applyLeftAndRightTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 757
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    .line 758
    .local v0, "footerHeight":F
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    sub-float/2addr v2, v0

    neg-float v2, v2

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->move(FF)V

    .line 759
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v2

    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_49

    .line 737
    .end local v0    # "footerHeight":F
    :cond_70
    const/4 v8, 0x0

    goto :goto_49

    .line 730
    :cond_71
    const/4 v8, 0x0

    .line 762
    :goto_49
    if-nez v44, :cond_72

    .line 763
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    move-object/from16 v9, v80

    .end local v80    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .local v9, "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 764
    invoke-interface {v9}, Ljava/util/List;->clear()V

    goto :goto_4a

    .line 762
    .end local v9    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .restart local v80    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    :cond_72
    move-object/from16 v9, v80

    .line 766
    .end local v80    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .restart local v9    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    :goto_4a
    if-eqz v44, :cond_73

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_73

    .line 767
    const/16 v0, 0x6c

    invoke-virtual {v10, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    .line 768
    .local v0, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    if-eqz v0, :cond_73

    .line 769
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->markArtifactHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    .line 772
    .end local v0    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    :cond_73
    if-eqz v44, :cond_ac

    .line 773
    move/from16 v7, v36

    .end local v36    # "marginsCollapsingEnabled":Z
    .local v7, "marginsCollapsingEnabled":Z
    if-eqz v7, :cond_74

    .line 774
    move-object/from16 v6, v38

    .end local v38    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .local v6, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    invoke-virtual {v6, v12}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_4b

    .line 773
    .end local v6    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v38    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    :cond_74
    move-object/from16 v6, v38

    .line 776
    .end local v38    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v6    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    :goto_4b
    move/from16 v5, v54

    .end local v54    # "cellWithBigRowspanAdded":Z
    .local v5, "cellWithBigRowspanAdded":Z
    invoke-virtual {v10, v13, v14, v5}, Lcom/itextpdf/layout/renderer/TableRenderer;->split(IZZ)[Lcom/itextpdf/layout/renderer/TableRenderer;

    move-result-object v26

    .line 777
    .local v26, "splitResult":[Lcom/itextpdf/layout/renderer/TableRenderer;
    new-instance v0, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;

    const/4 v1, 0x1

    aget-object v2, v26, v1

    invoke-direct {v0, v2}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;-><init>(Lcom/itextpdf/layout/renderer/TableRenderer;)V

    move-object v4, v0

    .line 779
    .local v4, "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_75

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v1, :cond_79

    .line 780
    :cond_75
    if-nez v0, :cond_76

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 781
    :cond_76
    const/4 v0, 0x1

    aget-object v1, v26, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->deleteOwnProperty(I)V

    .line 783
    :cond_77
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_78

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 784
    :cond_78
    const/4 v0, 0x1

    aget-object v1, v26, v0

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->deleteOwnProperty(I)V

    .line 787
    :cond_79
    if-eqz v44, :cond_8a

    .line 788
    move-object/from16 v3, v58

    .end local v58    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .local v3, "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    array-length v0, v3

    new-array v2, v0, [I

    .line 789
    .local v2, "rowspans":[I
    array-length v0, v3

    new-array v1, v0, [Z

    .line 790
    .local v1, "columnsWithCellToBeEnlarged":[Z
    const/4 v0, 0x0

    .end local v47    # "col":I
    .local v0, "col":I
    :goto_4c
    array-length v11, v3

    if-ge v0, v11, :cond_85

    .line 791
    aget-object v11, v55, v0

    if-eqz v11, :cond_7f

    .line 792
    aget-object v11, v55, v0

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 793
    .local v11, "cellSplit":Lcom/itextpdf/layout/renderer/CellRenderer;
    if-eqz v11, :cond_7a

    .line 794
    invoke-virtual {v11}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v16

    check-cast v16, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v16

    aput v16, v2, v0

    .line 796
    :cond_7a
    aget-object v16, v55, v0

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v8

    move-object/from16 v18, v6

    const/4 v6, 0x3

    .end local v6    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v18    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    if-eq v8, v6, :cond_7c

    if-nez v14, :cond_7b

    if-eqz v5, :cond_7c

    .line 797
    :cond_7b
    iget-object v6, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    :cond_7c
    aget-object v6, v3, v0

    invoke-virtual {v6}, Lcom/itextpdf/layout/renderer/CellRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    .line 800
    .local v6, "cellOccupiedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    if-nez v14, :cond_7e

    if-nez v5, :cond_7e

    aget-object v8, v55, v0

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v8

    move/from16 v54, v5

    const/4 v5, 0x3

    .end local v5    # "cellWithBigRowspanAdded":Z
    .restart local v54    # "cellWithBigRowspanAdded":Z
    if-ne v8, v5, :cond_7d

    move/from16 v19, v7

    goto :goto_4d

    .line 808
    :cond_7d
    aget v5, v51, v0

    sub-int/2addr v5, v13

    aget-object v8, v3, v0

    move/from16 v19, v7

    const/16 v16, 0x1

    .end local v7    # "marginsCollapsingEnabled":Z
    .restart local v19    # "marginsCollapsingEnabled":Z
    aget-object v7, v26, v16

    invoke-virtual {v8, v7}, Lcom/itextpdf/layout/renderer/CellRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-virtual {v4, v5, v0, v7}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    move-object/from16 v80, v9

    goto :goto_4e

    .line 800
    .end local v19    # "marginsCollapsingEnabled":Z
    .end local v54    # "cellWithBigRowspanAdded":Z
    .restart local v5    # "cellWithBigRowspanAdded":Z
    .restart local v7    # "marginsCollapsingEnabled":Z
    :cond_7e
    move/from16 v54, v5

    move/from16 v19, v7

    .line 801
    .end local v5    # "cellWithBigRowspanAdded":Z
    .end local v7    # "marginsCollapsingEnabled":Z
    .restart local v19    # "marginsCollapsingEnabled":Z
    .restart local v54    # "cellWithBigRowspanAdded":Z
    :goto_4d
    aget-object v5, v55, v0

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 802
    .local v5, "cellOverflow":Lcom/itextpdf/layout/renderer/CellRenderer;
    aget-object v7, v3, v0

    .line 803
    .local v7, "originalCell":Lcom/itextpdf/layout/renderer/CellRenderer;
    const/4 v8, 0x0

    aput-object v8, v3, v0

    .line 804
    iget-object v8, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    move-object/from16 v80, v9

    .end local v9    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .restart local v80    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    aget v9, v51, v0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aput-object v7, v8, v0

    .line 805
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v0, v8}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 806
    aget v8, v51, v0

    sub-int/2addr v8, v13

    move-object/from16 v16, v7

    const/4 v9, 0x1

    .end local v7    # "originalCell":Lcom/itextpdf/layout/renderer/CellRenderer;
    .local v16, "originalCell":Lcom/itextpdf/layout/renderer/CellRenderer;
    aget-object v7, v26, v9

    invoke-virtual {v5, v7}, Lcom/itextpdf/layout/renderer/CellRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-virtual {v4, v8, v0, v7}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 807
    .end local v5    # "cellOverflow":Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v16    # "originalCell":Lcom/itextpdf/layout/renderer/CellRenderer;
    nop

    .line 810
    :goto_4e
    aget v5, v51, v0

    sub-int/2addr v5, v13

    invoke-virtual {v4, v5, v0}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->getCell(II)Lcom/itextpdf/layout/renderer/CellRenderer;

    move-result-object v5

    iput-object v6, v5, Lcom/itextpdf/layout/renderer/CellRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .end local v6    # "cellOccupiedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v11    # "cellSplit":Lcom/itextpdf/layout/renderer/CellRenderer;
    goto :goto_50

    .line 811
    .end local v18    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v19    # "marginsCollapsingEnabled":Z
    .end local v54    # "cellWithBigRowspanAdded":Z
    .end local v80    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .local v5, "cellWithBigRowspanAdded":Z
    .local v6, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .local v7, "marginsCollapsingEnabled":Z
    .restart local v9    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    :cond_7f
    move/from16 v54, v5

    move-object/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v80, v9

    .end local v5    # "cellWithBigRowspanAdded":Z
    .end local v6    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v7    # "marginsCollapsingEnabled":Z
    .end local v9    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .restart local v18    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v19    # "marginsCollapsingEnabled":Z
    .restart local v54    # "cellWithBigRowspanAdded":Z
    .restart local v80    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    aget-object v5, v3, v0

    if-eqz v5, :cond_83

    .line 812
    if-eqz v14, :cond_80

    .line 813
    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual {v5}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v5

    aput v5, v2, v0

    .line 815
    :cond_80
    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual {v5}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v5

    const/4 v6, 0x1

    if-eq v6, v5, :cond_81

    const/4 v5, 0x1

    goto :goto_4f

    :cond_81
    const/4 v5, 0x0

    .line 816
    .local v5, "isBigRowspannedCell":Z
    :goto_4f
    if-nez v14, :cond_82

    if-eqz v5, :cond_84

    .line 817
    :cond_82
    const/4 v6, 0x1

    aput-boolean v6, v1, v0

    goto :goto_51

    .line 811
    .end local v5    # "isBigRowspannedCell":Z
    :cond_83
    :goto_50
    nop

    .line 790
    :cond_84
    :goto_51
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, v18

    move/from16 v7, v19

    move/from16 v5, v54

    move-object/from16 v9, v80

    const/4 v8, 0x0

    const/4 v11, 0x2

    goto/16 :goto_4c

    .line 822
    .end local v18    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v19    # "marginsCollapsingEnabled":Z
    .end local v54    # "cellWithBigRowspanAdded":Z
    .end local v80    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .local v5, "cellWithBigRowspanAdded":Z
    .restart local v6    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v7    # "marginsCollapsingEnabled":Z
    .restart local v9    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    :cond_85
    move/from16 v54, v5

    move-object/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v80, v9

    .end local v5    # "cellWithBigRowspanAdded":Z
    .end local v6    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v7    # "marginsCollapsingEnabled":Z
    .end local v9    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .restart local v18    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v19    # "marginsCollapsingEnabled":Z
    .restart local v54    # "cellWithBigRowspanAdded":Z
    .restart local v80    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    const v5, 0x7fffffff

    .line 823
    .local v5, "minRowspan":I
    const/4 v0, 0x0

    move v8, v5

    .end local v5    # "minRowspan":I
    .local v8, "minRowspan":I
    :goto_52
    array-length v5, v2

    if-ge v0, v5, :cond_87

    .line 824
    aget v5, v2, v0

    if-eqz v5, :cond_86

    .line 825
    aget v5, v2, v0

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v8, v5

    .line 823
    :cond_86
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 829
    :cond_87
    const/4 v0, 0x0

    move v9, v0

    .end local v0    # "col":I
    .local v9, "col":I
    :goto_53
    move/from16 v11, v79

    .end local v79    # "numberOfColumns":I
    .local v11, "numberOfColumns":I
    if-ge v9, v11, :cond_89

    .line 830
    aget-boolean v0, v1, v9

    if-eqz v0, :cond_88

    .line 831
    move-object/from16 v0, p0

    move-object/from16 v16, v1

    .end local v1    # "columnsWithCellToBeEnlarged":[Z
    .local v16, "columnsWithCellToBeEnlarged":[Z
    move v1, v9

    move-object/from16 v17, v2

    .end local v2    # "rowspans":[I
    .local v17, "rowspans":[I
    move v2, v13

    move-object/from16 v38, v3

    .end local v3    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .local v38, "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    move v3, v8

    move-object v7, v4

    .end local v4    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .local v7, "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    move-object/from16 v4, v38

    move/from16 v41, v54

    .end local v54    # "cellWithBigRowspanAdded":Z
    .local v41, "cellWithBigRowspanAdded":Z
    move-object v5, v7

    move/from16 v20, v8

    move-object/from16 v8, v18

    .end local v18    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .local v8, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .local v20, "minRowspan":I
    move-object/from16 v6, v51

    move-object/from16 v54, v8

    move/from16 v79, v11

    move/from16 v11, v19

    move-object v8, v7

    .end local v7    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .end local v19    # "marginsCollapsingEnabled":Z
    .local v8, "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .local v11, "marginsCollapsingEnabled":Z
    .local v54, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v79    # "numberOfColumns":I
    move-object/from16 v7, v26

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->enlargeCell(III[Lcom/itextpdf/layout/renderer/CellRenderer;Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;[I[Lcom/itextpdf/layout/renderer/TableRenderer;)V

    goto :goto_54

    .line 830
    .end local v16    # "columnsWithCellToBeEnlarged":[Z
    .end local v17    # "rowspans":[I
    .end local v20    # "minRowspan":I
    .end local v38    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v41    # "cellWithBigRowspanAdded":Z
    .end local v79    # "numberOfColumns":I
    .restart local v1    # "columnsWithCellToBeEnlarged":[Z
    .restart local v2    # "rowspans":[I
    .restart local v3    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .restart local v4    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .local v8, "minRowspan":I
    .local v11, "numberOfColumns":I
    .restart local v18    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v19    # "marginsCollapsingEnabled":Z
    .local v54, "cellWithBigRowspanAdded":Z
    :cond_88
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v38, v3

    move/from16 v20, v8

    move/from16 v79, v11

    move/from16 v11, v19

    move/from16 v41, v54

    move-object v8, v4

    move-object/from16 v54, v18

    .line 829
    .end local v1    # "columnsWithCellToBeEnlarged":[Z
    .end local v2    # "rowspans":[I
    .end local v3    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v4    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .end local v18    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v19    # "marginsCollapsingEnabled":Z
    .local v8, "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .local v11, "marginsCollapsingEnabled":Z
    .restart local v16    # "columnsWithCellToBeEnlarged":[Z
    .restart local v17    # "rowspans":[I
    .restart local v20    # "minRowspan":I
    .restart local v38    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .restart local v41    # "cellWithBigRowspanAdded":Z
    .local v54, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v79    # "numberOfColumns":I
    :goto_54
    add-int/lit8 v9, v9, 0x1

    move-object v4, v8

    move/from16 v19, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v8, v20

    move-object/from16 v3, v38

    move-object/from16 v18, v54

    move/from16 v54, v41

    goto :goto_53

    .end local v16    # "columnsWithCellToBeEnlarged":[Z
    .end local v17    # "rowspans":[I
    .end local v20    # "minRowspan":I
    .end local v38    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v41    # "cellWithBigRowspanAdded":Z
    .end local v79    # "numberOfColumns":I
    .restart local v1    # "columnsWithCellToBeEnlarged":[Z
    .restart local v2    # "rowspans":[I
    .restart local v3    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .restart local v4    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .local v8, "minRowspan":I
    .local v11, "numberOfColumns":I
    .restart local v18    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v19    # "marginsCollapsingEnabled":Z
    .local v54, "cellWithBigRowspanAdded":Z
    :cond_89
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v38, v3

    move/from16 v20, v8

    move/from16 v79, v11

    move/from16 v11, v19

    move/from16 v41, v54

    move-object v8, v4

    move-object/from16 v54, v18

    .end local v1    # "columnsWithCellToBeEnlarged":[Z
    .end local v2    # "rowspans":[I
    .end local v3    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v4    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .end local v18    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v19    # "marginsCollapsingEnabled":Z
    .local v8, "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .local v11, "marginsCollapsingEnabled":Z
    .restart local v16    # "columnsWithCellToBeEnlarged":[Z
    .restart local v17    # "rowspans":[I
    .restart local v20    # "minRowspan":I
    .restart local v38    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .restart local v41    # "cellWithBigRowspanAdded":Z
    .local v54, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v79    # "numberOfColumns":I
    move/from16 v47, v9

    goto :goto_55

    .line 787
    .end local v8    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .end local v11    # "marginsCollapsingEnabled":Z
    .end local v16    # "columnsWithCellToBeEnlarged":[Z
    .end local v17    # "rowspans":[I
    .end local v20    # "minRowspan":I
    .end local v38    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v41    # "cellWithBigRowspanAdded":Z
    .end local v54    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v80    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .restart local v4    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .local v5, "cellWithBigRowspanAdded":Z
    .restart local v6    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .local v7, "marginsCollapsingEnabled":Z
    .local v9, "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .restart local v47    # "col":I
    .restart local v58    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    :cond_8a
    move-object v8, v4

    move/from16 v41, v5

    move-object/from16 v54, v6

    move v11, v7

    move-object/from16 v80, v9

    move-object/from16 v38, v58

    .line 836
    .end local v4    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .end local v5    # "cellWithBigRowspanAdded":Z
    .end local v6    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v7    # "marginsCollapsingEnabled":Z
    .end local v9    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .end local v58    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .restart local v8    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .restart local v11    # "marginsCollapsingEnabled":Z
    .restart local v38    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .restart local v41    # "cellWithBigRowspanAdded":Z
    .restart local v54    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v80    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    :goto_55
    move/from16 v7, v53

    move/from16 v6, v81

    const/4 v0, 0x1

    .end local v53    # "verticalBorderSpacing":F
    .end local v81    # "horizontalBorderSpacing":F
    .local v6, "horizontalBorderSpacing":F
    .local v7, "verticalBorderSpacing":F
    invoke-direct {v10, v12, v6, v7, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->applySpacing(Lcom/itextpdf/kernel/geom/Rectangle;FFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 837
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-direct {v10, v1, v6, v0, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->applySingleSpacing(Lcom/itextpdf/kernel/geom/Rectangle;FZZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 838
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_8b

    .line 839
    invoke-virtual {v12, v7}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 841
    :cond_8b
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_8c

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 842
    :cond_8c
    invoke-virtual {v12, v7}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 844
    :cond_8d
    if-nez v13, :cond_8e

    if-nez v14, :cond_8e

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_8e

    .line 845
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    div-float v5, v7, v37

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x0

    goto :goto_56

    .line 847
    :cond_8e
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v10, v0, v7, v1, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->applySingleSpacing(Lcom/itextpdf/kernel/geom/Rectangle;FZZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 850
    :goto_56
    if-nez v24, :cond_8f

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_8f

    aget-object v0, v26, v1

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8f

    .line 851
    invoke-virtual {v12, v7}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 854
    :cond_8f
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_92

    .line 855
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_90

    .line 856
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v12, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    goto :goto_58

    .line 858
    :cond_90
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v12, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 860
    if-nez v24, :cond_92

    if-nez v27, :cond_92

    .line 861
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v17

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_91

    const/16 v19, 0x1

    goto :goto_57

    :cond_91
    const/16 v19, 0x0

    :goto_57
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v0

    move-object/from16 v18, v12

    invoke-virtual/range {v16 .. v21}, Lcom/itextpdf/layout/renderer/TableBorders;->applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 865
    :cond_92
    :goto_58
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x56

    invoke-virtual {v10, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x57

    .line 866
    invoke-virtual {v10, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 867
    :cond_93
    const/4 v0, 0x1

    aget-object v1, v26, v0

    iget-object v0, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-virtual {v10, v0, v12}, Lcom/itextpdf/layout/renderer/TableRenderer;->extendLastRow([Lcom/itextpdf/layout/renderer/CellRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 869
    :cond_94
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_95

    move v0, v7

    goto :goto_59

    :cond_95
    const/4 v0, 0x0

    :goto_59
    invoke-direct {v10, v12, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->adjustFooterAndFixOccupiedArea(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    .line 870
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_96

    move v0, v7

    goto :goto_5a

    :cond_96
    const/4 v0, 0x0

    :goto_5a
    invoke-direct {v10, v12, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->adjustCaptionAndFixOccupiedArea(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    .line 873
    invoke-interface/range {v50 .. v50}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 875
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    aget-object v3, v26, v2

    iget-object v2, v3, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    aget-object v5, v26, v4

    iget-object v4, v5, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    if-nez v2, :cond_97

    .line 876
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    .line 877
    .local v2, "originalCellRenderer":Lcom/itextpdf/layout/renderer/CellRenderer;
    const/4 v3, 0x1

    aget-object v4, v26, v3

    iget-object v3, v4, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    const/4 v4, 0x0

    aget-object v5, v26, v4

    iget-object v4, v5, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int v4, v13, v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    .line 878
    .local v3, "overflowCellRenderer":Lcom/itextpdf/layout/renderer/CellRenderer;
    iget-object v4, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput-object v2, v4, v5

    .line 879
    iget-object v4, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v9, 0x0

    aput-object v9, v4, v5

    .line 880
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    aget-object v9, v26, v5

    iget-object v9, v9, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v4, v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v4, v9, v3}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 881
    aget-object v4, v26, v5

    iget-object v4, v4, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int v4, v13, v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v5, v9}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 883
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "originalCellRenderer":Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v3    # "overflowCellRenderer":Lcom/itextpdf/layout/renderer/CellRenderer;
    :cond_97
    goto/16 :goto_5b

    .line 885
    :cond_98
    move-object/from16 v9, v78

    .end local v78    # "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v9, "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-virtual {v10, v9}, Lcom/itextpdf/layout/renderer/TableRenderer;->isKeepTogether(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 886
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9a

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 887
    const/16 v1, 0x1a

    invoke-virtual {v10, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 888
    new-instance v16, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v9, :cond_99

    move-object v5, v10

    goto :goto_5c

    :cond_99
    move-object v5, v9

    :goto_5c
    move-object/from16 v0, v16

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v16

    .line 886
    :cond_9a
    const/16 v1, 0x1a

    goto :goto_5d

    .line 885
    :cond_9b
    const/16 v1, 0x1a

    .line 892
    :cond_9c
    :goto_5d
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v2, :cond_9d

    const/4 v2, 0x0

    goto :goto_5e

    .line 893
    :cond_9d
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    :goto_5e
    sub-float/2addr v0, v2

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v2, :cond_9e

    const/4 v2, 0x0

    goto :goto_5f

    .line 894
    :cond_9e
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v3, v3, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxBottomWidth()F

    move-result v3

    sub-float/2addr v2, v3

    :goto_5f
    sub-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_a0

    if-nez v24, :cond_9f

    if-eqz v27, :cond_a0

    :cond_9f
    const/4 v3, 0x3

    goto :goto_60

    :cond_a0
    const/4 v3, 0x2

    :goto_60
    move v0, v3

    .line 899
    .local v0, "status":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_a1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a2

    :cond_a1
    if-eqz v32, :cond_a9

    .line 901
    :cond_a2
    if-eqz v32, :cond_a8

    .line 902
    invoke-static/range {v28 .. v28}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 903
    .local v1, "logger":Lorg/slf4j/Logger;
    const-string v2, "Element content was clipped because some height properties are set."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 905
    const/4 v2, 0x3

    if-ne v0, v2, :cond_a5

    .line 906
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v17

    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_a3

    const/16 v19, 0x1

    goto :goto_61

    :cond_a3
    const/16 v19, 0x0

    :goto_61
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v12

    invoke-virtual/range {v16 .. v21}, Lcom/itextpdf/layout/renderer/TableBorders;->applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 907
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v17

    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_a4

    const/16 v19, 0x1

    goto :goto_62

    :cond_a4
    const/16 v19, 0x0

    :goto_62
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v12

    invoke-virtual/range {v16 .. v21}, Lcom/itextpdf/layout/renderer/TableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 910
    :cond_a5
    if-eqz v35, :cond_a7

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a7

    .line 911
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v2

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 912
    .local v2, "blockBottom":F
    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_a6

    .line 913
    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    div-float v5, v5, v37

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v1

    move-object/from16 v31, v8

    goto :goto_63

    .line 915
    :cond_a6
    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v16, v1

    .end local v1    # "logger":Lorg/slf4j/Logger;
    .local v16, "logger":Lorg/slf4j/Logger;
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v17

    move-object/from16 v31, v8

    .end local v8    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .local v31, "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    add-int/lit8 v8, v17, -0x1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v1, v5

    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 917
    :goto_63
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 918
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v3

    sub-float/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 919
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_64

    .line 910
    .end local v2    # "blockBottom":F
    .end local v16    # "logger":Lorg/slf4j/Logger;
    .end local v31    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .restart local v1    # "logger":Lorg/slf4j/Logger;
    .restart local v8    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    :cond_a7
    move-object/from16 v16, v1

    move-object/from16 v31, v8

    .end local v1    # "logger":Lorg/slf4j/Logger;
    .end local v8    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .restart local v16    # "logger":Lorg/slf4j/Logger;
    .restart local v31    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    goto :goto_64

    .line 901
    .end local v16    # "logger":Lorg/slf4j/Logger;
    .end local v31    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .restart local v8    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    :cond_a8
    move-object/from16 v31, v8

    .line 922
    .end local v8    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .restart local v31    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    :goto_64
    const/4 v1, 0x0

    invoke-direct {v10, v1, v12}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyFixedXOrYPosition(ZLcom/itextpdf/kernel/geom/Rectangle;)V

    .line 923
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v10, v1, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 924
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v10, v1, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 926
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    move-object/from16 v3, v39

    move/from16 v4, v40

    .end local v39    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v40    # "clearHeightCorrection":F
    .local v3, "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v4, "clearHeightCorrection":F
    invoke-static {v10, v3, v1, v4, v11}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    .line 927
    .local v1, "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    new-instance v5, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v8, 0x0

    aget-object v8, v26, v8

    move/from16 v61, v14

    const/4 v14, 0x0

    .end local v14    # "hasContent":Z
    .restart local v61    # "hasContent":Z
    invoke-direct {v5, v2, v1, v8, v14}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v5

    .line 929
    .end local v1    # "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v3    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v4    # "clearHeightCorrection":F
    .end local v31    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .end local v61    # "hasContent":Z
    .restart local v8    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .restart local v14    # "hasContent":Z
    .restart local v39    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v40    # "clearHeightCorrection":F
    :cond_a9
    move-object/from16 v31, v8

    move/from16 v61, v14

    move-object/from16 v3, v39

    move/from16 v4, v40

    const/4 v2, 0x1

    const/4 v8, 0x0

    .end local v8    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .end local v14    # "hasContent":Z
    .end local v39    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v40    # "clearHeightCorrection":F
    .restart local v3    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v4    # "clearHeightCorrection":F
    .restart local v31    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .restart local v61    # "hasContent":Z
    aget-object v1, v26, v8

    aget-object v5, v26, v2

    invoke-virtual {v10, v8, v1, v5}, Lcom/itextpdf/layout/renderer/TableRenderer;->updateHeightsOnSplit(ZLcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;)V

    .line 930
    invoke-direct {v10, v8, v12}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyFixedXOrYPosition(ZLcom/itextpdf/kernel/geom/Rectangle;)V

    .line 931
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v10, v1, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 932
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v10, v1, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 934
    const/4 v1, 0x0

    .line 935
    .restart local v1    # "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    const/4 v2, 0x3

    if-eq v0, v2, :cond_aa

    .line 936
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-static {v10, v3, v2, v4, v11}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    .line 938
    :cond_aa
    new-instance v2, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v5, 0x0

    aget-object v19, v26, v5

    const/4 v5, 0x1

    aget-object v20, v26, v5

    if-nez v9, :cond_ab

    move-object/from16 v21, v10

    goto :goto_65

    :cond_ab
    move-object/from16 v21, v9

    :goto_65
    move-object/from16 v16, v2

    move/from16 v17, v0

    move-object/from16 v18, v1

    invoke-direct/range {v16 .. v21}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v2

    .line 772
    .end local v0    # "status":I
    .end local v1    # "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v3    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v4    # "clearHeightCorrection":F
    .end local v6    # "horizontalBorderSpacing":F
    .end local v7    # "verticalBorderSpacing":F
    .end local v11    # "marginsCollapsingEnabled":Z
    .end local v26    # "splitResult":[Lcom/itextpdf/layout/renderer/TableRenderer;
    .end local v31    # "overflowRows":Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
    .end local v41    # "cellWithBigRowspanAdded":Z
    .end local v61    # "hasContent":Z
    .end local v80    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .local v9, "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .restart local v14    # "hasContent":Z
    .restart local v36    # "marginsCollapsingEnabled":Z
    .local v38, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v39    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v40    # "clearHeightCorrection":F
    .restart local v53    # "verticalBorderSpacing":F
    .local v54, "cellWithBigRowspanAdded":Z
    .restart local v58    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .restart local v78    # "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .restart local v81    # "horizontalBorderSpacing":F
    :cond_ac
    move-object/from16 v80, v9

    move/from16 v61, v14

    move/from16 v11, v36

    move-object/from16 v3, v39

    move/from16 v4, v40

    move/from16 v7, v53

    move/from16 v41, v54

    move-object/from16 v9, v78

    move/from16 v6, v81

    const/16 v0, 0xd

    const/16 v1, 0x1a

    const/16 v2, 0xa

    move-object/from16 v54, v38

    move-object/from16 v38, v58

    .line 463
    .end local v9    # "currChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    .end local v14    # "hasContent":Z
    .end local v25    # "cellProcessingQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;>;"
    .end local v30    # "childFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v36    # "marginsCollapsingEnabled":Z
    .end local v38    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v39    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v40    # "clearHeightCorrection":F
    .end local v42    # "widestRowBottomBorder":Lcom/itextpdf/layout/borders/Border;
    .end local v44    # "split":Z
    .end local v45    # "widestRowBottomBorderWidth":F
    .end local v48    # "rowHasCellWithSetHeight":Z
    .end local v52    # "rowHeight":F
    .end local v53    # "verticalBorderSpacing":F
    .end local v58    # "currentRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v78    # "firstCauseOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v81    # "horizontalBorderSpacing":F
    .restart local v3    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v4    # "clearHeightCorrection":F
    .restart local v6    # "horizontalBorderSpacing":F
    .restart local v7    # "verticalBorderSpacing":F
    .restart local v11    # "marginsCollapsingEnabled":Z
    .local v54, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    add-int/lit8 v5, v13, 0x1

    move v8, v6

    move v13, v7

    move-object v9, v12

    move-object/from16 v3, v43

    move/from16 v11, v49

    move-object/from16 v30, v50

    move-object/from16 v4, v51

    move-object/from16 v38, v54

    move-object/from16 v14, v56

    move/from16 v7, v79

    move v6, v0

    move v12, v2

    move v2, v5

    move-object/from16 v5, v55

    .end local v13    # "row":I
    .local v5, "row":I
    goto/16 :goto_19

    .line 944
    .end local v6    # "horizontalBorderSpacing":F
    .end local v12    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v43    # "rowsHasCellWithSetHeight":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v47    # "col":I
    .end local v49    # "tableWidth":F
    .end local v50    # "rowMoves":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v51    # "targetOverflowRowIndex":[I
    .end local v54    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v55    # "splits":[Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v56    # "area":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v79    # "numberOfColumns":I
    .local v2, "row":I
    .local v3, "rowsHasCellWithSetHeight":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .local v4, "targetOverflowRowIndex":[I
    .local v5, "splits":[Lcom/itextpdf/layout/layout/LayoutResult;
    .local v7, "numberOfColumns":I
    .local v8, "horizontalBorderSpacing":F
    .local v9, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v11, "tableWidth":F
    .local v13, "verticalBorderSpacing":F
    .local v14, "area":Lcom/itextpdf/layout/layout/LayoutArea;
    .local v30, "rowMoves":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v36    # "marginsCollapsingEnabled":Z
    .restart local v38    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v39    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v40    # "clearHeightCorrection":F
    :cond_ad
    move-object/from16 v43, v3

    move-object/from16 v51, v4

    move-object/from16 v55, v5

    move/from16 v79, v7

    move v6, v8

    move-object v12, v9

    move/from16 v49, v11

    move v7, v13

    move-object/from16 v56, v14

    move-object/from16 v50, v30

    move/from16 v11, v36

    move-object/from16 v54, v38

    move-object/from16 v3, v39

    move/from16 v4, v40

    move v13, v2

    .end local v2    # "row":I
    .end local v5    # "splits":[Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v8    # "horizontalBorderSpacing":F
    .end local v9    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v14    # "area":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v30    # "rowMoves":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v36    # "marginsCollapsingEnabled":Z
    .end local v38    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v39    # "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v40    # "clearHeightCorrection":F
    .local v3, "siblingFloatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v4, "clearHeightCorrection":F
    .restart local v6    # "horizontalBorderSpacing":F
    .local v7, "verticalBorderSpacing":F
    .local v11, "marginsCollapsingEnabled":Z
    .restart local v12    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v13, "row":I
    .restart local v43    # "rowsHasCellWithSetHeight":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v49    # "tableWidth":F
    .restart local v50    # "rowMoves":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v51    # "targetOverflowRowIndex":[I
    .restart local v54    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v55    # "splits":[Lcom/itextpdf/layout/layout/LayoutResult;
    .restart local v56    # "area":Lcom/itextpdf/layout/layout/LayoutArea;
    .restart local v79    # "numberOfColumns":I
    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 945
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 946
    .local v0, "lastRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    array-length v1, v0

    sub-int/2addr v1, v2

    .line 947
    .local v1, "lastInRow":I
    :goto_66
    if-ltz v1, :cond_ae

    aget-object v2, v0, v1

    if-nez v2, :cond_ae

    .line 948
    add-int/lit8 v1, v1, -0x1

    goto :goto_66

    .line 950
    :cond_ae
    if-ltz v1, :cond_af

    array-length v2, v0

    aget-object v5, v0, v1

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v1

    if-eq v2, v5, :cond_b0

    .line 951
    :cond_af
    invoke-static/range {v28 .. v28}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 952
    .local v2, "logger":Lorg/slf4j/Logger;
    const-string v5, "Last row is not completed. Table bottom border may collapse as you do not expect it"

    invoke-interface {v2, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 957
    .end local v0    # "lastRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v1    # "lastInRow":I
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :cond_b0
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-nez v0, :cond_b8

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b2

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b1

    goto :goto_67

    :cond_b1
    const/4 v5, 0x0

    goto/16 :goto_6c

    :cond_b2
    :goto_67
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_b8

    .line 958
    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    invoke-virtual {v12, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 960
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    const/4 v1, 0x1

    invoke-virtual {v0, v12, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->applyLeftAndRightTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 961
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-direct {v10, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->prepareFooterOrHeaderRendererForLayout(Lcom/itextpdf/layout/renderer/TableRenderer;F)Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 962
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b5

    if-nez v24, :cond_b3

    const/4 v2, 0x1

    goto :goto_68

    .line 964
    :cond_b3
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_b4

    .line 965
    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->collapseTableWithFooter(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    goto :goto_69

    .line 964
    :cond_b4
    const/4 v2, 0x1

    goto :goto_69

    .line 962
    :cond_b5
    const/4 v2, 0x1

    .line 963
    :goto_68
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->collapseTableWithFooter(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 968
    :goto_69
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v2, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual/range {v56 .. v56}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v5

    invoke-direct {v2, v5, v12}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    if-nez v32, :cond_b7

    if-eqz v15, :cond_b6

    goto :goto_6a

    :cond_b6
    const/4 v5, 0x0

    goto :goto_6b

    :cond_b7
    :goto_6a
    const/4 v5, 0x1

    :goto_6b
    invoke-direct {v1, v2, v5}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    .line 969
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->applyLeftAndRightTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 971
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    .line 972
    .local v0, "footerHeight":F
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    sub-float/2addr v2, v0

    neg-float v2, v2

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->move(FF)V

    .line 973
    invoke-virtual {v12, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_6c

    .line 957
    .end local v0    # "footerHeight":F
    :cond_b8
    const/4 v5, 0x0

    .line 976
    :goto_6c
    const/4 v0, 0x1

    invoke-direct {v10, v12, v6, v7, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->applySpacing(Lcom/itextpdf/kernel/geom/Rectangle;FFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 977
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-direct {v10, v1, v6, v0, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->applySingleSpacing(Lcom/itextpdf/kernel/geom/Rectangle;FZZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 978
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_b9

    .line 979
    invoke-virtual {v12, v7}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 981
    :cond_b9
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_ba

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bb

    .line 982
    :cond_ba
    invoke-virtual {v12, v7}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 984
    :cond_bb
    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_bc

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_bc

    .line 985
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    div-float v1, v7, v37

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_6d

    .line 986
    :cond_bc
    if-nez v24, :cond_bd

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_be

    .line 987
    :cond_bd
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v10, v0, v7, v1, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->applySingleSpacing(Lcom/itextpdf/kernel/geom/Rectangle;FZZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 990
    :cond_be
    :goto_6d
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxBottomWidth()F

    move-result v0

    .line 992
    .local v0, "bottomTableBorderWidth":F
    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 993
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v1, :cond_c3

    .line 994
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_bf

    .line 995
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v12, v8}, Lcom/itextpdf/layout/renderer/TableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    goto/16 :goto_71

    .line 997
    :cond_bf
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_c1

    .line 998
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v17

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_c0

    const/16 v19, 0x1

    goto :goto_6e

    :cond_c0
    const/16 v19, 0x0

    :goto_6e
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v1

    move-object/from16 v18, v12

    invoke-virtual/range {v16 .. v21}, Lcom/itextpdf/layout/renderer/TableBorders;->applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;

    goto/16 :goto_71

    .line 1000
    :cond_c1
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v17

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_c2

    const/16 v19, 0x1

    goto :goto_6f

    :cond_c2
    const/16 v19, 0x0

    :goto_6f
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v1

    move-object/from16 v18, v12

    invoke-virtual/range {v16 .. v21}, Lcom/itextpdf/layout/renderer/TableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;

    goto/16 :goto_71

    .line 1004
    :cond_c3
    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c8

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v1, :cond_c8

    .line 1005
    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxBottomWidth()F

    move-result v1

    .line 1006
    .local v1, "headerBottomBorderWidth":F
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v8, v2, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v2, v2, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v17

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v16, v8

    move-object/from16 v18, v12

    invoke-virtual/range {v16 .. v21}, Lcom/itextpdf/layout/renderer/TableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1007
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1008
    .end local v1    # "headerBottomBorderWidth":F
    goto :goto_71

    .line 1012
    :cond_c4
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_c5

    .line 1013
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v8, 0x1

    sub-int/2addr v2, v8

    iget-object v9, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v8

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    div-float v9, v0, v37

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v1, v2, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1015
    :cond_c5
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v1, :cond_c7

    .line 1016
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_c8

    .line 1017
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v17

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_c6

    const/16 v19, 0x1

    goto :goto_70

    :cond_c6
    const/16 v19, 0x0

    :goto_70
    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v16, v1

    move-object/from16 v18, v12

    invoke-virtual/range {v16 .. v21}, Lcom/itextpdf/layout/renderer/TableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;

    goto :goto_71

    .line 1021
    :cond_c7
    invoke-virtual {v12, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1026
    :cond_c8
    :goto_71
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_c9

    .line 1027
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v2, 0x56

    invoke-virtual {v10, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 1028
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v8, 0x1

    sub-int/2addr v2, v8

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-virtual {v10, v1, v12}, Lcom/itextpdf/layout/renderer/TableRenderer;->extendLastRow([Lcom/itextpdf/layout/renderer/CellRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto/16 :goto_73

    .line 1031
    :cond_c9
    if-eqz v35, :cond_cb

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_cb

    .line 1032
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v1

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v8, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    sub-float/2addr v2, v8

    sub-float/2addr v1, v2

    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1033
    .local v1, "blockBottom":F
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_ca

    .line 1034
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iget-object v14, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v5, v16, -0x1

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v9, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v9

    add-float/2addr v5, v9

    sub-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v2, v8, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    .line 1036
    :cond_ca
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v5

    sub-float/2addr v5, v1

    iget-object v8, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    div-float v8, v8, v37

    add-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    :goto_72
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 1040
    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v5

    sub-float/2addr v5, v1

    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 1041
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1045
    .end local v1    # "blockBottom":F
    :cond_cb
    :goto_73
    const/4 v1, 0x0

    invoke-direct {v10, v1, v12}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyFixedXOrYPosition(ZLcom/itextpdf/kernel/geom/Rectangle;)V

    .line 1047
    if-eqz v11, :cond_cc

    .line 1048
    move-object/from16 v1, v54

    .end local v54    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .local v1, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    invoke-virtual {v1, v12}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_74

    .line 1047
    .end local v1    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v54    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    :cond_cc
    move-object/from16 v1, v54

    .line 1051
    .end local v54    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v1    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    :goto_74
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v10, v2, v5}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1052
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v10, v2, v5}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1055
    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v2

    if-nez v2, :cond_ce

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v2, :cond_ce

    .line 1056
    const/16 v2, 0x6c

    invoke-virtual {v10, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    .line 1057
    .local v2, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    if-eqz v2, :cond_cd

    .line 1059
    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v2, v5}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->markArtifactHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    .line 1061
    :cond_cd
    const/4 v5, 0x0

    iput-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 1062
    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v8, v5, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {v5, v8}, Lcom/itextpdf/layout/renderer/TableBorders;->skipFooter([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1064
    .end local v2    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    :cond_ce
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v2, :cond_d0

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_cf

    goto :goto_75

    :cond_cf
    const/4 v2, 0x0

    goto :goto_76

    :cond_d0
    :goto_75
    move v2, v7

    :goto_76
    invoke-direct {v10, v12, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->adjustFooterAndFixOccupiedArea(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    .line 1065
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v2, :cond_d2

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d1

    goto :goto_77

    :cond_d1
    const/4 v2, 0x0

    goto :goto_78

    :cond_d2
    :goto_77
    move v2, v7

    :goto_78
    invoke-direct {v10, v12, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->adjustCaptionAndFixOccupiedArea(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    .line 1067
    invoke-static {v3, v10}, Lcom/itextpdf/layout/renderer/FloatingHelper;->removeFloatsAboveRendererBottom(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 1069
    if-nez v24, :cond_d4

    if-nez v27, :cond_d4

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_d3

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v2, :cond_d4

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 1070
    :cond_d3
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1073
    :cond_d4
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-static {v10, v3, v2, v4, v11}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    .line 1075
    .local v2, "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    new-instance v5, Lcom/itextpdf/layout/layout/LayoutResult;

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v5

    move-object/from16 v18, v2

    invoke-direct/range {v16 .. v21}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v5
.end method

.method public move(FF)V
    .locals 1
    .param p1, "dxRight"    # F
    .param p2, "dyUp"    # F

    .line 1211
    invoke-super {p0, p1, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->move(FF)V

    .line 1212
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_0

    .line 1213
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/layout/renderer/TableRenderer;->move(FF)V

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_1

    .line 1216
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/layout/renderer/TableRenderer;->move(FF)V

    .line 1218
    :cond_1
    return-void
.end method

.method protected retrieveWidth(F)Ljava/lang/Float;
    .locals 7
    .param p1, "parentBoxWidth"    # F

    .line 1281
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object v0

    .line 1282
    .local v0, "tableWidth":Ljava/lang/Float;
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/Table;

    .line 1283
    .local v1, "tableModel":Lcom/itextpdf/layout/element/Table;
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_3

    .line 1284
    :cond_0
    const/4 v3, 0x0

    .line 1285
    .local v3, "totalColumnWidthInPercent":F
    const/4 v4, 0x0

    .local v4, "col":I
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table;->getNumberOfColumns()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1286
    invoke-virtual {v1, v4}, Lcom/itextpdf/layout/element/Table;->getColumnWidth(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v5

    .line 1287
    .local v5, "columnWidth":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v5}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1288
    invoke-virtual {v5}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v6

    add-float/2addr v3, v6

    .line 1285
    .end local v5    # "columnWidth":Lcom/itextpdf/layout/property/UnitValue;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1291
    .end local v4    # "col":I
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1292
    cmpl-float v2, v3, v2

    if-lez v2, :cond_3

    .line 1293
    mul-float v2, p1, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1296
    .end local v3    # "totalColumnWidthInPercent":F
    :cond_3
    return-object v0
.end method

.method protected split(I)[Lcom/itextpdf/layout/renderer/TableRenderer;
    .locals 1
    .param p1, "row"    # I

    .line 1221
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->split(IZ)[Lcom/itextpdf/layout/renderer/TableRenderer;

    move-result-object v0

    return-object v0
.end method

.method protected split(IZ)[Lcom/itextpdf/layout/renderer/TableRenderer;
    .locals 1
    .param p1, "row"    # I
    .param p2, "hasContent"    # Z

    .line 1225
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->split(IZZ)[Lcom/itextpdf/layout/renderer/TableRenderer;

    move-result-object v0

    return-object v0
.end method

.method protected split(IZZ)[Lcom/itextpdf/layout/renderer/TableRenderer;
    .locals 5
    .param p1, "row"    # I
    .param p2, "hasContent"    # Z
    .param p3, "cellWithBigRowspanAdded"    # Z

    .line 1230
    new-instance v0, Lcom/itextpdf/layout/element/Table$RowRange;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v2

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/element/Table$RowRange;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->createSplitRenderer(Lcom/itextpdf/layout/element/Table$RowRange;)Lcom/itextpdf/layout/renderer/TableRenderer;

    move-result-object v0

    .line 1231
    .local v0, "splitRenderer":Lcom/itextpdf/layout/renderer/TableRenderer;
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    .line 1233
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1235
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    .line 1236
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->columnWidths:[F

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->columnWidths:[F

    .line 1237
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    .line 1238
    iget v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->totalWidthForColumns:F

    iput v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->totalWidthForColumns:F

    .line 1239
    new-instance v1, Lcom/itextpdf/layout/element/Table$RowRange;

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v3

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v4}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/layout/element/Table$RowRange;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->createOverflowRenderer(Lcom/itextpdf/layout/element/Table$RowRange;)Lcom/itextpdf/layout/renderer/TableRenderer;

    move-result-object v1

    .line 1240
    .local v1, "overflowRenderer":Lcom/itextpdf/layout/renderer/TableRenderer;
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v3

    if-nez v3, :cond_0

    .line 1241
    iget-boolean v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    iput-boolean v3, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    .line 1243
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, p1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    .line 1244
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    iput-object v3, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 1246
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iput-object v3, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1248
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/itextpdf/layout/renderer/TableRenderer;

    aput-object v0, v3, v2

    const/4 v2, 0x1

    aput-object v1, v3, v2

    return-object v3
.end method
