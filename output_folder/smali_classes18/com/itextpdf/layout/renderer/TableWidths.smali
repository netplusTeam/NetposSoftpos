.class final Lcom/itextpdf/layout/renderer/TableWidths;
.super Ljava/lang/Object;
.source "TableWidths.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;,
        Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ZeroWidth:Lcom/itextpdf/layout/property/UnitValue;


# instance fields
.field private cells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fixedTableLayout:Z

.field private fixedTableWidth:Z

.field private final horizontalBorderSpacing:F

.field private layoutMinWidth:F

.field private final leftBorderMaxWidth:F

.field private final numberOfColumns:I

.field private final rightBorderMaxWidth:F

.field private tableMaxWidth:F

.field private tableMinWidth:F

.field private final tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

.field private tableWidth:F

.field private final widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    nop

    .line 838
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/layout/renderer/TableWidths;->ZeroWidth:Lcom/itextpdf/layout/property/UnitValue;

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/layout/renderer/TableRenderer;FZFF)V
    .locals 2
    .param p1, "tableRenderer"    # Lcom/itextpdf/layout/renderer/TableRenderer;
    .param p2, "availableWidth"    # F
    .param p3, "calculateTableMaxWidth"    # Z
    .param p4, "rightBorderMaxWidth"    # F
    .param p5, "leftBorderMaxWidth"    # F

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableLayout:Z

    .line 82
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 83
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getNumberOfColumns()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    .line 84
    new-array v0, v0, [Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    .line 85
    iput p4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->rightBorderMaxWidth:F

    .line 86
    iput p5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->leftBorderMaxWidth:F

    .line 87
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 88
    const/16 v0, 0x73

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    .line 89
    .local v0, "horizontalSpacing":Ljava/lang/Float;
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    iput v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->horizontalBorderSpacing:F

    .line 90
    .end local v0    # "horizontalSpacing":Ljava/lang/Float;
    goto :goto_1

    .line 91
    :cond_1
    iput v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->horizontalBorderSpacing:F

    .line 93
    :goto_1
    invoke-direct {p0, p2, p3}, Lcom/itextpdf/layout/renderer/TableWidths;->calculateTableWidth(FZ)V

    .line 94
    return-void
.end method

.method private calculateMinMaxWidths()V
    .locals 11

    .line 654
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    new-array v1, v0, [F

    .line 655
    .local v1, "minWidths":[F
    new-array v0, v0, [F

    .line 657
    .local v0, "maxWidths":[F
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->cells:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;

    .line 658
    .local v3, "cell":Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v3, v4}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->setParent(Lcom/itextpdf/layout/renderer/TableRenderer;)V

    .line 659
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCell()Lcom/itextpdf/layout/renderer/CellRenderer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/CellRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v4

    .line 660
    .local v4, "minMax":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    sget-object v5, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;->SEPARATE:Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/16 v7, 0x72

    invoke-virtual {v6, v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 661
    invoke-virtual {v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getAdditionalWidth()F

    move-result v5

    iget v7, p0, Lcom/itextpdf/layout/renderer/TableWidths;->horizontalBorderSpacing:F

    sub-float/2addr v5, v7

    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setAdditionalWidth(F)V

    goto :goto_1

    .line 663
    :cond_0
    invoke-direct {p0, v3}, Lcom/itextpdf/layout/renderer/TableWidths;->getCellBorderIndents(Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;)[F

    move-result-object v5

    .line 664
    .local v5, "indents":[F
    invoke-virtual {v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getAdditionalWidth()F

    move-result v7

    aget v8, v5, v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    const/4 v8, 0x3

    aget v8, v5, v8

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v7}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setAdditionalWidth(F)V

    .line 667
    .end local v5    # "indents":[F
    :goto_1
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 668
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v5

    invoke-virtual {v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v6

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v7

    aget v7, v1, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v1, v5

    .line 669
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v5

    invoke-virtual {v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v6

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v7

    aget v7, v0, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v0, v5

    goto :goto_5

    .line 671
    :cond_1
    invoke-virtual {v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v5

    .line 672
    .local v5, "remainMin":F
    invoke-virtual {v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v6

    .line 673
    .local v6, "remainMax":F
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v7

    .local v7, "i":I
    :goto_2
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v8

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v9

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_2

    .line 674
    aget v8, v1, v7

    sub-float/2addr v5, v8

    .line 675
    aget v8, v0, v7

    sub-float/2addr v6, v8

    .line 673
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 677
    .end local v7    # "i":I
    :cond_2
    const/4 v7, 0x0

    cmpl-float v8, v5, v7

    if-lez v8, :cond_3

    .line 678
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v8

    .local v8, "i":I
    :goto_3
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v9

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v10

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_3

    .line 679
    aget v9, v1, v8

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v5, v10

    add-float/2addr v9, v10

    aput v9, v1, v8

    .line 678
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 682
    .end local v8    # "i":I
    :cond_3
    cmpl-float v7, v6, v7

    if-lez v7, :cond_4

    .line 683
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v7

    .restart local v7    # "i":I
    :goto_4
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v8

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v9

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_4

    .line 684
    aget v8, v0, v7

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v6, v9

    add-float/2addr v8, v9

    aput v8, v0, v7

    .line 683
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 688
    .end local v3    # "cell":Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;
    .end local v4    # "minMax":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .end local v5    # "remainMin":F
    .end local v6    # "remainMax":F
    .end local v7    # "i":I
    :cond_4
    :goto_5
    goto/16 :goto_0

    .line 690
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    array-length v4, v3

    if-ge v2, v4, :cond_6

    .line 691
    new-instance v4, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget v5, v1, v2

    aget v6, v0, v2

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;-><init>(FF)V

    aput-object v4, v3, v2

    .line 690
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 693
    .end local v2    # "i":I
    :cond_6
    return-void
.end method

.method private calculateTableWidth(FZ)V
    .locals 6
    .param p1, "availableWidth"    # F
    .param p2, "calculateTableMaxWidth"    # Z

    .line 585
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 586
    const/16 v1, 0x5d

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 585
    const-string v1, "fixed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableLayout:Z

    .line 587
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    .line 588
    .local v0, "width":Lcom/itextpdf/layout/property/UnitValue;
    iget-boolean v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableLayout:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_3

    .line 589
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table;->getLastRowBottomBorder()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table;->getWidth()Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    goto :goto_0

    .line 591
    :cond_0
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table;->getWidth()Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table;->getWidth()Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 592
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v2

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v5, p1, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/layout/element/Table;->setWidth(F)Lcom/itextpdf/layout/element/IElement;

    .line 594
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableWidth:Z

    .line 595
    invoke-direct {p0, v0, p1}, Lcom/itextpdf/layout/renderer/TableWidths;->retrieveTableWidth(Lcom/itextpdf/layout/property/UnitValue;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    .line 596
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    :goto_1
    iput v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->layoutMinWidth:F

    goto :goto_2

    .line 598
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableLayout:Z

    .line 600
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->layoutMinWidth:F

    .line 601
    if-eqz p2, :cond_4

    .line 602
    iput-boolean v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableWidth:Z

    .line 603
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/TableWidths;->retrieveTableWidth(F)F

    move-result v1

    iput v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    goto :goto_2

    .line 604
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_5

    .line 605
    iput-boolean v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableWidth:Z

    .line 606
    invoke-direct {p0, v0, p1}, Lcom/itextpdf/layout/renderer/TableWidths;->retrieveTableWidth(Lcom/itextpdf/layout/property/UnitValue;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    goto :goto_2

    .line 608
    :cond_5
    iput-boolean v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableWidth:Z

    .line 609
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/TableWidths;->retrieveTableWidth(F)F

    move-result v1

    iput v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    .line 612
    :goto_2
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/UnitValue;

    invoke-direct {p0, v1, p1}, Lcom/itextpdf/layout/renderer/TableWidths;->retrieveTableWidth(Lcom/itextpdf/layout/property/UnitValue;F)Ljava/lang/Float;

    move-result-object v1

    .line 613
    .local v1, "min":Ljava/lang/Float;
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/16 v3, 0x4f

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/property/UnitValue;

    invoke-direct {p0, v2, p1}, Lcom/itextpdf/layout/renderer/TableWidths;->retrieveTableWidth(Lcom/itextpdf/layout/property/UnitValue;F)Ljava/lang/Float;

    move-result-object v2

    .line 615
    .local v2, "max":Ljava/lang/Float;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_3

    :cond_6
    iget v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->layoutMinWidth:F

    :goto_3
    iput v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableMinWidth:F

    .line 616
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_4

    :cond_7
    iget v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    :goto_4
    iput v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableMaxWidth:F

    .line 618
    iget v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableMinWidth:F

    cmpl-float v3, v4, v3

    if-lez v3, :cond_8

    .line 619
    iput v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableMaxWidth:F

    .line 621
    :cond_8
    iget v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    cmpl-float v3, v4, v3

    if-lez v3, :cond_9

    .line 622
    iput v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    .line 624
    :cond_9
    iget v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableMaxWidth:F

    iget v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_a

    .line 625
    iput v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    .line 626
    :cond_a
    return-void
.end method

.method private extractWidths()[F
    .locals 7

    .line 738
    const/4 v0, 0x0

    .line 739
    .local v0, "actualWidth":F
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->layoutMinWidth:F

    .line 740
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    array-length v2, v2

    new-array v2, v2, [F

    .line 741
    .local v2, "columnWidths":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 742
    aget-object v4, v4, v3

    iget v4, v4, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_0

    .line 743
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    iget v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->horizontalBorderSpacing:F

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 744
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    add-float/2addr v0, v4

    .line 745
    iget v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->layoutMinWidth:F

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    iget v6, p0, Lcom/itextpdf/layout/renderer/TableWidths;->horizontalBorderSpacing:F

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->layoutMinWidth:F

    .line 741
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 742
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 747
    .end local v3    # "i":I
    :cond_1
    iget v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getEps()F

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    array-length v4, v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 748
    const-class v1, Lcom/itextpdf/layout/renderer/TableWidths;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 749
    .local v1, "logger":Lorg/slf4j/Logger;
    const-string v3, "Table width is more than expected due to min width of cell(s)."

    invoke-interface {v1, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 751
    .end local v1    # "logger":Lorg/slf4j/Logger;
    :cond_2
    return-object v2
.end method

.method private fillAndSortCells()V
    .locals 2

    .line 708
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->cells:Ljava/util/List;

    .line 709
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/layout/renderer/TableWidths;->fillRendererCells(Lcom/itextpdf/layout/renderer/TableRenderer;B)V

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/layout/renderer/TableWidths;->fillRendererCells(Lcom/itextpdf/layout/renderer/TableRenderer;B)V

    .line 713
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/layout/renderer/TableWidths;->fillRendererCells(Lcom/itextpdf/layout/renderer/TableRenderer;B)V

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->cells:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 719
    return-void
.end method

.method private fillRendererCells(Lcom/itextpdf/layout/renderer/TableRenderer;B)V
    .locals 5
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/TableRenderer;
    .param p2, "region"    # B

    .line 722
    const/4 v0, 0x0

    .local v0, "row":I
    :goto_0
    iget-object v1, p1, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 723
    const/4 v1, 0x0

    .local v1, "col":I
    :goto_1
    iget v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v1, v2, :cond_1

    .line 724
    iget-object v2, p1, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v2, v2, v1

    .line 725
    .local v2, "cell":Lcom/itextpdf/layout/renderer/CellRenderer;
    if-eqz v2, :cond_0

    .line 726
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->cells:Ljava/util/List;

    new-instance v4, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;

    invoke-direct {v4, v2, v0, v1, p2}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;-><init>(Lcom/itextpdf/layout/renderer/CellRenderer;IIB)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    .end local v2    # "cell":Lcom/itextpdf/layout/renderer/CellRenderer;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 722
    .end local v1    # "col":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 730
    .end local v0    # "row":I
    :cond_2
    return-void
.end method

.method private getCellBorderIndents(Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;)[F
    .locals 6
    .param p1, "cell"    # Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;

    .line 697
    iget-byte v0, p1, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->region:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    .local v0, "renderer":Lcom/itextpdf/layout/renderer/TableRenderer;
    goto :goto_0

    .line 699
    .end local v0    # "renderer":Lcom/itextpdf/layout/renderer/TableRenderer;
    :cond_0
    iget-byte v0, p1, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->region:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 700
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    .restart local v0    # "renderer":Lcom/itextpdf/layout/renderer/TableRenderer;
    goto :goto_0

    .line 702
    .end local v0    # "renderer":Lcom/itextpdf/layout/renderer/TableRenderer;
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 704
    .restart local v0    # "renderer":Lcom/itextpdf/layout/renderer/TableRenderer;
    :goto_0
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getRow()I

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v3

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getRowspan()I

    move-result v4

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/itextpdf/layout/renderer/TableBorders;->getCellBorderIndents(IIII)[F

    move-result-object v1

    return-object v1
.end method

.method private getCellWidth(Lcom/itextpdf/layout/renderer/CellRenderer;Z)Lcom/itextpdf/layout/property/UnitValue;
    .locals 11
    .param p1, "cell"    # Lcom/itextpdf/layout/renderer/CellRenderer;
    .param p2, "zeroIsValid"    # Z

    .line 841
    const-class v0, Lcom/itextpdf/layout/renderer/TableWidths;

    const/16 v1, 0x4d

    invoke-virtual {p1, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/UnitValue;

    .line 843
    .local v1, "widthValue":Lcom/itextpdf/layout/property/UnitValue;
    const/4 v2, 0x0

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    goto/16 :goto_2

    .line 845
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 846
    if-eqz p2, :cond_1

    sget-object v2, Lcom/itextpdf/layout/renderer/TableWidths;->ZeroWidth:Lcom/itextpdf/layout/property/UnitValue;

    :cond_1
    return-object v2

    .line 847
    :cond_2
    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 848
    return-object v1

    .line 850
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/itextpdf/layout/renderer/TableWidths;->resolveMinMaxCollision(Lcom/itextpdf/layout/renderer/CellRenderer;Lcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v1

    .line 851
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 852
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v2

    .line 853
    .local v2, "borders":[Lcom/itextpdf/layout/borders/Border;
    const/4 v3, 0x1

    aget-object v4, v2, v3

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v4, :cond_5

    .line 854
    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v4

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v6, v6, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v6, v6, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v6, :cond_4

    aget-object v6, v2, v3

    .line 856
    invoke-virtual {v6}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v6

    goto :goto_0

    :cond_4
    aget-object v6, v2, v3

    .line 857
    invoke-virtual {v6}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v6

    div-float/2addr v6, v5

    :goto_0
    add-float/2addr v4, v6

    .line 854
    invoke-virtual {v1, v4}, Lcom/itextpdf/layout/property/UnitValue;->setValue(F)V

    .line 859
    :cond_5
    const/4 v4, 0x3

    aget-object v6, v2, v4

    if-eqz v6, :cond_7

    .line 860
    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v6

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v7, v7, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v7, v7, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v7, :cond_6

    aget-object v5, v2, v4

    .line 862
    invoke-virtual {v5}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    goto :goto_1

    :cond_6
    aget-object v7, v2, v4

    .line 863
    invoke-virtual {v7}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v7

    div-float v5, v7, v5

    :goto_1
    add-float/2addr v6, v5

    .line 860
    invoke-virtual {v1, v6}, Lcom/itextpdf/layout/property/UnitValue;->setValue(F)V

    .line 865
    :cond_7
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPaddings()[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v5

    .line 866
    .local v5, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    aget-object v6, v5, v3

    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v6

    const/4 v7, 0x0

    const-string v8, "Property {0} in percents is not supported"

    if-nez v6, :cond_8

    .line 867
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v6

    .line 868
    .local v6, "logger":Lorg/slf4j/Logger;
    new-array v9, v3, [Ljava/lang/Object;

    const/16 v10, 0x30

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 870
    .end local v6    # "logger":Lorg/slf4j/Logger;
    :cond_8
    aget-object v6, v5, v4

    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v6

    if-nez v6, :cond_9

    .line 871
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 872
    .local v0, "logger":Lorg/slf4j/Logger;
    new-array v6, v3, [Ljava/lang/Object;

    const/16 v9, 0x31

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v8, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 874
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_9
    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    aget-object v3, v5, v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v3

    add-float/2addr v0, v3

    aget-object v3, v5, v4

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v3

    add-float/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/property/UnitValue;->setValue(F)V

    .line 876
    .end local v2    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    :cond_a
    return-object v1

    .line 844
    :cond_b
    :goto_2
    return-object v2
.end method

.method private getTable()Lcom/itextpdf/layout/element/Table;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Table;

    return-object v0
.end method

.method private resolveMinMaxCollision(Lcom/itextpdf/layout/renderer/CellRenderer;Lcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/property/UnitValue;
    .locals 4
    .param p1, "cell"    # Lcom/itextpdf/layout/renderer/CellRenderer;
    .param p2, "widthValue"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 881
    invoke-virtual {p2}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 883
    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    .line 884
    .local v0, "minWidthValue":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 885
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    invoke-virtual {p2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 886
    return-object v0

    .line 888
    :cond_0
    const/16 v1, 0x4f

    invoke-virtual {p1, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/UnitValue;

    .line 889
    .local v1, "maxWidthValue":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 890
    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    invoke-virtual {p2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 891
    return-object v1

    .line 893
    :cond_1
    return-object p2

    .line 881
    .end local v0    # "minWidthValue":Lcom/itextpdf/layout/property/UnitValue;
    .end local v1    # "maxWidthValue":Lcom/itextpdf/layout/property/UnitValue;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private retrieveTableWidth(F)F
    .locals 3
    .param p1, "width"    # F

    .line 636
    sget-object v0, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;->SEPARATE:Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->rightBorderMaxWidth:F

    iget v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->leftBorderMaxWidth:F

    add-float/2addr v0, v1

    sub-float/2addr p1, v0

    .line 638
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->horizontalBorderSpacing:F

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    goto :goto_0

    .line 640
    :cond_0
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->rightBorderMaxWidth:F

    iget v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->leftBorderMaxWidth:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    .line 642
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private retrieveTableWidth(Lcom/itextpdf/layout/property/UnitValue;F)Ljava/lang/Float;
    .locals 2
    .param p1, "width"    # Lcom/itextpdf/layout/property/UnitValue;
    .param p2, "availableWidth"    # F

    .line 629
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 630
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    goto :goto_0

    .line 632
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    .line 630
    :goto_0
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/TableWidths;->retrieveTableWidth(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private warn100percent()V
    .locals 2

    .line 733
    const-class v0, Lcom/itextpdf/layout/renderer/TableWidths;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 734
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "Sum of table columns is greater than 100%."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 735
    return-void
.end method


# virtual methods
.method autoLayout()[F
    .locals 6

    .line 113
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->fillAndSortCells()V

    .line 115
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->calculateMinMaxWidths()V

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "minSum":F
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 119
    .local v4, "width":Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;
    iget v5, v4, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    add-float/2addr v0, v5

    .line 118
    .end local v4    # "width":Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->cells:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;

    .line 123
    .local v2, "cell":Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/TableWidths;->processCell(Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;)V

    .line 124
    .end local v2    # "cell":Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;
    goto :goto_1

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->processColumns()V

    .line 128
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableWidths;->recalculate(F)V

    .line 130
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->extractWidths()[F

    move-result-object v1

    return-object v1

    .line 113
    .end local v0    # "minSum":F
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method autoLayoutCustom()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->fillAndSortCells()V

    .line 136
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->calculateMinMaxWidths()V

    .line 137
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->cells:Ljava/util/List;

    return-object v0

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method fixedLayout()[F
    .locals 17

    .line 480
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    new-array v1, v1, [F

    .line 482
    .local v1, "columnWidths":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    if-ge v2, v3, :cond_3

    .line 483
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/itextpdf/layout/element/Table;->getColumnWidth(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v3

    .line 484
    .local v3, "colWidth":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v7

    cmpg-float v5, v7, v5

    if-gez v5, :cond_0

    goto :goto_1

    .line 486
    :cond_0
    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 487
    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v5

    iget v6, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v4

    aput v5, v1, v2

    goto :goto_2

    .line 489
    :cond_1
    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v4

    aput v4, v1, v2

    goto :goto_2

    .line 485
    :cond_2
    :goto_1
    aput v6, v1, v2

    .line 482
    .end local v3    # "colWidth":Lcom/itextpdf/layout/property/UnitValue;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    .line 494
    .local v2, "processedColumns":I
    iget v3, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    .line 496
    .local v3, "remainWidth":F
    iget-object v7, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v7, v7, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v7, v7, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v7, v7, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 497
    iget-object v7, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v7, v7, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v7, v7, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/renderer/CellRenderer;

    .local v7, "firtsRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    goto :goto_3

    .line 498
    .end local v7    # "firtsRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    :cond_4
    iget-object v7, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v7, v7, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/layout/element/Table;->getLastRowBottomBorder()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 499
    iget-object v7, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v7, v7, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/renderer/CellRenderer;

    .restart local v7    # "firtsRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    goto :goto_3

    .line 502
    .end local v7    # "firtsRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    :cond_5
    const/4 v7, 0x0

    .line 505
    .restart local v7    # "firtsRow":[Lcom/itextpdf/layout/renderer/CellRenderer;
    :goto_3
    array-length v8, v1

    new-array v8, v8, [F

    .line 506
    .local v8, "columnWidthIfPercent":[F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    array-length v10, v8

    if-ge v9, v10, :cond_6

    .line 507
    aput v6, v8, v9

    .line 506
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 509
    .end local v9    # "i":I
    :cond_6
    const/4 v9, 0x0

    .line 512
    .local v9, "sumOfPercents":F
    if-eqz v7, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/layout/element/Table;->getLastRowBottomBorder()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 513
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    iget v11, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v10, v11, :cond_c

    .line 514
    aget v11, v1, v10

    cmpl-float v11, v11, v6

    if-nez v11, :cond_b

    .line 515
    aget-object v11, v7, v10

    .line 516
    .local v11, "cell":Lcom/itextpdf/layout/renderer/CellRenderer;
    if-eqz v11, :cond_a

    .line 517
    const/4 v12, 0x1

    invoke-direct {v0, v11, v12}, Lcom/itextpdf/layout/renderer/TableWidths;->getCellWidth(Lcom/itextpdf/layout/renderer/CellRenderer;Z)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v12

    .line 518
    .local v12, "cellWidth":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v12, :cond_a

    .line 519
    invoke-virtual {v12}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v13

    cmpl-float v13, v13, v5

    if-ltz v13, :cond_9

    .line 520
    const/4 v13, 0x0

    .line 521
    .local v13, "width":F
    invoke-virtual {v12}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 522
    iget v14, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    invoke-virtual {v12}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v15

    mul-float/2addr v14, v15

    div-float/2addr v14, v4

    .line 523
    .end local v13    # "width":F
    .local v14, "width":F
    invoke-virtual {v12}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v13

    aput v13, v8, v10

    .line 524
    aget v13, v8, v10

    add-float/2addr v9, v13

    goto :goto_6

    .line 526
    .end local v14    # "width":F
    .restart local v13    # "width":F
    :cond_7
    invoke-virtual {v12}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v14

    .line 528
    .end local v13    # "width":F
    .restart local v14    # "width":F
    :goto_6
    invoke-virtual {v11}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual {v13}, Lcom/itextpdf/layout/element/Cell;->getColspan()I

    move-result v13

    .line 529
    .local v13, "colspan":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_7
    if-ge v15, v13, :cond_8

    .line 530
    add-int v16, v10, v15

    int-to-float v5, v13

    div-float v5, v14, v5

    aput v5, v1, v16

    .line 529
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    goto :goto_7

    .line 532
    .end local v15    # "j":I
    :cond_8
    aget v5, v1, v10

    sub-float/2addr v3, v5

    .line 533
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 519
    .end local v13    # "colspan":I
    .end local v14    # "width":F
    :cond_9
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 536
    .end local v11    # "cell":Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v12    # "cellWidth":Lcom/itextpdf/layout/property/UnitValue;
    :cond_a
    :goto_8
    goto :goto_9

    .line 537
    :cond_b
    aget v5, v1, v10

    sub-float/2addr v3, v5

    .line 538
    add-int/lit8 v2, v2, 0x1

    .line 513
    :goto_9
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x0

    goto :goto_5

    .end local v10    # "i":I
    :cond_c
    goto :goto_b

    .line 542
    :cond_d
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_a
    iget v10, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v5, v10, :cond_f

    .line 543
    aget v10, v1, v5

    cmpl-float v10, v10, v6

    if-eqz v10, :cond_e

    .line 544
    add-int/lit8 v2, v2, 0x1

    .line 545
    aget v10, v1, v5

    sub-float/2addr v3, v10

    .line 542
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 549
    .end local v5    # "i":I
    :cond_f
    :goto_b
    cmpl-float v4, v9, v4

    if-lez v4, :cond_10

    .line 550
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableWidths;->warn100percent()V

    .line 552
    :cond_10
    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_12

    .line 553
    iget v4, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ne v4, v2, :cond_14

    .line 555
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    iget v5, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v4, v5, :cond_11

    .line 556
    iget v5, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    aget v10, v1, v4

    mul-float/2addr v10, v5

    sub-float/2addr v5, v3

    div-float/2addr v10, v5

    aput v10, v1, v4

    .line 555
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .end local v4    # "i":I
    :cond_11
    goto :goto_f

    .line 559
    :cond_12
    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-gez v5, :cond_14

    .line 561
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_d
    iget v5, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v4, v5, :cond_14

    .line 562
    aget v5, v1, v4

    aget v10, v8, v4

    cmpl-float v10, v6, v10

    if-eqz v10, :cond_13

    aget v10, v8, v4

    mul-float/2addr v10, v3

    div-float/2addr v10, v9

    goto :goto_e

    :cond_13
    const/4 v10, 0x0

    :goto_e
    add-float/2addr v5, v10

    aput v5, v1, v4

    .line 561
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 567
    .end local v4    # "i":I
    :cond_14
    :goto_f
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_10
    iget v5, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v4, v5, :cond_16

    .line 568
    aget v10, v1, v4

    cmpl-float v10, v10, v6

    if-nez v10, :cond_15

    .line 569
    sub-int/2addr v5, v2

    int-to-float v5, v5

    div-float v5, v3, v5

    const/4 v10, 0x0

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v1, v4

    goto :goto_11

    .line 568
    :cond_15
    const/4 v10, 0x0

    .line 567
    :goto_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 574
    .end local v4    # "i":I
    :cond_16
    iget-object v4, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v4, v4, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v4, v4, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v4, :cond_17

    .line 575
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_12
    iget v5, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v4, v5, :cond_17

    .line 576
    aget v5, v1, v4

    iget v6, v0, Lcom/itextpdf/layout/renderer/TableWidths;->horizontalBorderSpacing:F

    add-float/2addr v5, v6

    aput v5, v1, v4

    .line 575
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 579
    .end local v4    # "i":I
    :cond_17
    return-object v1
.end method

.method getMinWidth()F
    .locals 1

    .line 109
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->layoutMinWidth:F

    return v0
.end method

.method hasFixedLayout()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableLayout:Z

    return v0
.end method

.method layout()[F
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->hasFixedLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->fixedLayout()[F

    move-result-object v0

    return-object v0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->autoLayout()[F

    move-result-object v0

    return-object v0
.end method

.method processCell(Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;)V
    .locals 7
    .param p1, "cell"    # Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;

    .line 144
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCell()Lcom/itextpdf/layout/renderer/CellRenderer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/layout/renderer/TableWidths;->getCellWidth(Lcom/itextpdf/layout/renderer/CellRenderer;Z)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 145
    .local v0, "cellWidth":Lcom/itextpdf/layout/property/UnitValue;
    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 146
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_a

    .line 147
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    .line 150
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 151
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->setPercents(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    goto/16 :goto_7

    .line 153
    :cond_0
    const/4 v2, 0x0

    .line 154
    .local v2, "pointColumns":I
    const/4 v3, 0x0

    .line 155
    .local v3, "percentSum":F
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v4

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v5

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_2

    .line 156
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v4

    iget-boolean v5, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez v5, :cond_1

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 159
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    add-float/2addr v3, v5

    .line 155
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 162
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v4

    sub-float/2addr v4, v3

    .line 163
    .local v4, "percentAddition":F
    cmpl-float v1, v4, v1

    if-lez v1, :cond_6

    .line 164
    if-nez v2, :cond_4

    .line 167
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v1

    .local v1, "i":I
    :goto_2
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v5

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_3

    .line 168
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v1

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v4, v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->addPercents(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    :cond_3
    goto :goto_4

    .line 173
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v1

    .restart local v1    # "i":I
    :goto_3
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v5

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_6

    .line 174
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez v5, :cond_5

    .line 175
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v1

    int-to-float v6, v2

    div-float v6, v4, v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->setPercents(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    .line 173
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 180
    .end local v1    # "i":I
    .end local v2    # "pointColumns":I
    .end local v3    # "percentSum":F
    .end local v4    # "percentAddition":F
    :cond_6
    :goto_4
    goto/16 :goto_7

    .line 184
    :cond_7
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v1

    if-ne v1, v3, :cond_9

    .line 185
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v2

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez v1, :cond_f

    .line 186
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v2

    aget-object v1, v1, v2

    iget v1, v1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_8

    .line 187
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->setPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->setFixed(Z)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    goto/16 :goto_7

    .line 189
    :cond_8
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->setPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    goto :goto_7

    .line 193
    :cond_9
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/renderer/TableWidths;->processCellsRemainWidth(Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;Lcom/itextpdf/layout/property/UnitValue;)V

    goto :goto_7

    .line 146
    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 196
    :cond_b
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFlexible()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 199
    const/4 v2, 0x0

    .line 200
    .local v2, "flexibleCols":I
    const/4 v3, 0x0

    .line 201
    .local v3, "remainWidth":F
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v4

    .local v4, "i":I
    :goto_5
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v5

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_d

    .line 202
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFlexible()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 203
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->max:F

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    sub-float/2addr v5, v6

    add-float/2addr v3, v5

    .line 204
    add-int/lit8 v2, v2, 0x1

    .line 201
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 207
    .end local v4    # "i":I
    :cond_d
    cmpl-float v1, v3, v1

    if-lez v1, :cond_f

    .line 210
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v1

    .restart local v1    # "i":I
    :goto_6
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v4

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_f

    .line 211
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFlexible()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 212
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v4, v4, v1

    int-to-float v5, v2

    div-float v5, v3, v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->addPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    .line 210
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 217
    .end local v1    # "i":I
    .end local v2    # "flexibleCols":I
    .end local v3    # "remainWidth":F
    :cond_f
    :goto_7
    return-void
.end method

.method processCellsRemainWidth(Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;Lcom/itextpdf/layout/property/UnitValue;)V
    .locals 8
    .param p1, "cell"    # Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;
    .param p2, "cellWidth"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "flexibleCols":I
    invoke-virtual {p2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    .line 434
    .local v1, "remainWidth":F
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v2

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v3

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_2

    .line 435
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez v3, :cond_1

    .line 436
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    sub-float/2addr v1, v3

    .line 437
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    if-nez v3, :cond_0

    .line 438
    add-int/lit8 v0, v0, 0x1

    .line 434
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 442
    :cond_1
    const/4 v1, 0x0

    .line 446
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_a

    .line 447
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v3

    new-array v3, v3, [I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/itextpdf/io/util/ArrayUtil;->fillWithValue([II)[I

    move-result-object v3

    .line 448
    .local v3, "flexibleColIndexes":[I
    if-lez v0, :cond_9

    .line 450
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v4

    .local v4, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v5

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_6

    .line 451
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFlexible()Z

    move-result v5

    if-nez v5, :cond_3

    .line 452
    goto :goto_2

    .line 453
    :cond_3
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    int-to-float v7, v0

    div-float v7, v1, v7

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 454
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v4

    iget v6, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    invoke-virtual {v5, v6}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->resetPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    .line 455
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    sub-float/2addr v5, v6

    sub-float/2addr v1, v5

    .line 456
    add-int/lit8 v0, v0, -0x1

    .line 457
    if-eqz v0, :cond_6

    cmpg-float v5, v1, v2

    if-gtz v5, :cond_5

    .line 458
    goto :goto_3

    .line 461
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v5

    sub-int v5, v4, v5

    aput v4, v3, v5

    .line 450
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 464
    .end local v4    # "i":I
    :cond_6
    :goto_3
    if-lez v0, :cond_a

    cmpl-float v2, v1, v2

    if-lez v2, :cond_a

    .line 465
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    array-length v4, v3

    if-ge v2, v4, :cond_8

    .line 466
    aget v4, v3, v2

    if-ltz v4, :cond_7

    .line 467
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget v5, v3, v2

    aget-object v4, v4, v5

    int-to-float v5, v0

    div-float v5, v1, v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->addPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->setFixed(Z)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    .line 465
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v2    # "i":I
    :cond_8
    goto :goto_6

    .line 472
    :cond_9
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v2

    .restart local v2    # "i":I
    :goto_5
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v4

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_a

    .line 473
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v4, v4, v2

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v1, v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->addPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    .line 472
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 477
    .end local v2    # "i":I
    .end local v3    # "flexibleColIndexes":[I
    :cond_a
    :goto_6
    return-void
.end method

.method processColumns()V
    .locals 4

    .line 220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v0, v1, :cond_4

    .line 221
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/element/Table;->getColumnWidth(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v1

    .line 222
    .local v1, "colWidth":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 223
    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez v2, :cond_3

    .line 225
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    iget v3, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    iput v3, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->max:F

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->setPercents(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    goto :goto_1

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 231
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    if-eqz v2, :cond_2

    .line 232
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->setPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    goto :goto_1

    .line 234
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->resetPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->setFixed(Z)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    .line 220
    .end local v1    # "colWidth":Lcom/itextpdf/layout/property/UnitValue;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 239
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method recalculate(F)V
    .locals 18
    .param p1, "minSum"    # F

    .line 242
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    sub-float v1, v1, p1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 243
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v1, v2, :cond_0

    .line 244
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v1

    iget v3, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    iput v3, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto/16 :goto_17

    .line 247
    :cond_1
    const/4 v1, 0x0

    .line 249
    .local v1, "sumOfPercents":F
    const/4 v3, 0x0

    .line 250
    .local v3, "minTableWidth":F
    const/4 v4, 0x0

    .line 253
    .local v4, "totalNonPercent":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v6, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    array-length v7, v6

    const/high16 v8, 0x42c80000    # 100.0f

    if-ge v5, v7, :cond_5

    .line 254
    aget-object v6, v6, v5

    iget-boolean v6, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-eqz v6, :cond_4

    .line 255
    cmpg-float v6, v1, v8

    if-gez v6, :cond_2

    iget-object v6, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v6, v6, v5

    iget v6, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    add-float/2addr v6, v1

    cmpl-float v6, v6, v8

    if-lez v6, :cond_2

    .line 256
    iget-object v6, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v6, v6, v5

    sub-float/2addr v8, v1

    iput v8, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    .line 257
    iget-object v6, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v6, v6, v5

    iget v6, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    add-float/2addr v1, v6

    .line 258
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableWidths;->warn100percent()V

    goto :goto_2

    .line 259
    :cond_2
    cmpl-float v6, v1, v8

    if-ltz v6, :cond_3

    .line 260
    iget-object v6, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v6, v6, v5

    iget v7, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    invoke-virtual {v6, v7}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->resetPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    .line 261
    iget-object v6, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v6, v6, v5

    iget v6, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    add-float/2addr v3, v6

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableWidths;->warn100percent()V

    goto :goto_2

    .line 264
    :cond_3
    iget-object v6, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v6, v6, v5

    iget v6, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    add-float/2addr v1, v6

    goto :goto_2

    .line 267
    :cond_4
    iget-object v6, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v6, v6, v5

    iget v6, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    add-float/2addr v3, v6

    .line 268
    iget-object v6, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v6, v6, v5

    iget v6, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    add-float/2addr v4, v6

    .line 253
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 271
    .end local v5    # "i":I
    :cond_5
    cmpg-float v5, v1, v8

    if-gtz v5, :cond_2d

    .line 273
    const/4 v5, 0x1

    .line 274
    .local v5, "toBalance":Z
    iget-boolean v6, v0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableWidth:Z

    if-nez v6, :cond_a

    .line 275
    cmpg-float v6, v1, v8

    if-gez v6, :cond_6

    mul-float v6, v4, v8

    sub-float v7, v8, v1

    div-float/2addr v6, v7

    goto :goto_3

    :cond_6
    move v6, v2

    .line 277
    .local v6, "tableWidthBasedOnPercents":F
    :goto_3
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    iget v9, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v7, v9, :cond_8

    .line 278
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v9, v9, v7

    iget-boolean v9, v9, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v9, v9, v7

    iget v9, v9, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    cmpl-float v9, v9, v2

    if-lez v9, :cond_7

    .line 279
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v9, v9, v7

    iget v9, v9, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->max:F

    mul-float/2addr v9, v8

    iget-object v10, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v10, v10, v7

    iget v10, v10, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    div-float/2addr v9, v10

    invoke-static {v9, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 277
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 283
    .end local v7    # "i":I
    :cond_8
    iget v7, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_a

    .line 284
    cmpl-float v7, v6, v3

    if-ltz v7, :cond_9

    .line 285
    iput v6, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    .line 287
    const/4 v5, 0x0

    goto :goto_5

    .line 289
    :cond_9
    iput v3, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    .line 294
    .end local v6    # "tableWidthBasedOnPercents":F
    :cond_a
    :goto_5
    cmpl-float v6, v1, v2

    if-lez v6, :cond_c

    cmpg-float v6, v1, v8

    if-gez v6, :cond_c

    cmpl-float v6, v4, v2

    if-nez v6, :cond_c

    .line 297
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    iget-object v7, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    array-length v9, v7

    if-ge v6, v9, :cond_b

    .line 298
    aget-object v7, v7, v6

    iget v9, v7, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    mul-float/2addr v9, v8

    div-float/2addr v9, v1

    iput v9, v7, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    .line 297
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 300
    .end local v6    # "i":I
    :cond_b
    const/high16 v1, 0x42c80000    # 100.0f

    .line 303
    :cond_c
    if-nez v5, :cond_f

    .line 305
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget v6, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v2, v6, :cond_e

    .line 306
    iget-object v6, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v6, v6, v2

    iget-boolean v7, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-eqz v7, :cond_d

    iget v7, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    iget-object v9, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v9, v9, v2

    iget v9, v9, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    mul-float/2addr v7, v9

    div-float/2addr v7, v8

    goto :goto_8

    :cond_d
    iget-object v7, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    :goto_8
    iput v7, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .end local v2    # "i":I
    :cond_e
    goto/16 :goto_17

    .line 310
    :cond_f
    cmpl-float v6, v1, v8

    if-ltz v6, :cond_15

    .line 311
    const/high16 v1, 0x42c80000    # 100.0f

    .line 312
    const/4 v2, 0x0

    .line 313
    .local v2, "recalculatePercents":Z
    iget v6, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    sub-float/2addr v6, v3

    .line 314
    .local v6, "remainWidth":F
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_9
    iget v9, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v7, v9, :cond_12

    .line 315
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v9, v9, v7

    iget-boolean v9, v9, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-eqz v9, :cond_11

    .line 316
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v9, v9, v7

    iget v9, v9, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    mul-float/2addr v9, v6

    div-float/2addr v9, v8

    iget-object v10, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v10, v10, v7

    iget v10, v10, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_10

    .line 317
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v9, v9, v7

    iget v10, v9, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    mul-float/2addr v10, v6

    div-float/2addr v10, v8

    iput v10, v9, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    goto :goto_a

    .line 319
    :cond_10
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v9, v9, v7

    iget v10, v9, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    iput v10, v9, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    .line 320
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v9, v9, v7

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    .line 321
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v9, v9, v7

    iget v9, v9, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    sub-float/2addr v6, v9

    .line 322
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v9, v9, v7

    iget v9, v9, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    sub-float/2addr v1, v9

    .line 323
    const/4 v2, 0x1

    goto :goto_a

    .line 326
    :cond_11
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v9, v9, v7

    iget v10, v9, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    iput v10, v9, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    .line 314
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 329
    .end local v7    # "i":I
    :cond_12
    if-eqz v2, :cond_14

    .line 330
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_b
    iget v8, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v7, v8, :cond_14

    .line 331
    iget-object v8, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v8, v8, v7

    iget-boolean v8, v8, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-eqz v8, :cond_13

    .line 332
    iget-object v8, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v8, v8, v7

    iget v9, v8, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    mul-float/2addr v9, v6

    div-float/2addr v9, v1

    iput v9, v8, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    .line 330
    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 336
    .end local v2    # "recalculatePercents":Z
    .end local v6    # "remainWidth":F
    .end local v7    # "i":I
    :cond_14
    goto/16 :goto_17

    .line 344
    :cond_15
    const/4 v6, 0x0

    .line 345
    .local v6, "totalPercent":F
    const/4 v7, 0x0

    .line 346
    .local v7, "minTotalNonPercent":F
    const/4 v9, 0x0

    .line 347
    .local v9, "fixedAddition":F
    const/4 v10, 0x0

    .line 348
    .local v10, "flexibleAddition":F
    const/4 v11, 0x0

    .line 350
    .local v11, "hasFlexibleCell":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_c
    iget v13, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v12, v13, :cond_19

    .line 351
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v13, v13, v12

    iget-boolean v13, v13, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-eqz v13, :cond_17

    .line 352
    iget v13, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    iget-object v14, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v14, v14, v12

    iget v14, v14, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    mul-float/2addr v13, v14

    div-float/2addr v13, v8

    iget-object v14, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v14, v14, v12

    iget v14, v14, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_16

    .line 353
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v13, v13, v12

    iget v14, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    iget v15, v13, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    mul-float/2addr v14, v15

    div-float/2addr v14, v8

    iput v14, v13, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    .line 354
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v13, v13, v12

    iget v13, v13, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    add-float/2addr v6, v13

    goto :goto_d

    .line 356
    :cond_16
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v13, v13, v12

    iget v13, v13, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    sub-float/2addr v1, v13

    .line 357
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v13, v13, v12

    iget v14, v13, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    invoke-virtual {v13, v14}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->resetPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    .line 358
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v13, v13, v12

    iget v14, v13, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    iput v14, v13, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    .line 359
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v13, v13, v12

    iget v13, v13, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    add-float/2addr v7, v13

    goto :goto_d

    .line 362
    :cond_17
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v13, v13, v12

    iget v14, v13, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    iput v14, v13, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    .line 363
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v13, v13, v12

    iget v13, v13, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    add-float/2addr v7, v13

    .line 364
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v13, v13, v12

    iget v13, v13, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    iget-object v14, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v14, v14, v12

    iget v14, v14, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    sub-float/2addr v13, v14

    .line 365
    .local v13, "addition":F
    iget-object v14, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v14, v14, v12

    iget-boolean v14, v14, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    if-eqz v14, :cond_18

    .line 366
    add-float/2addr v9, v13

    goto :goto_d

    .line 368
    :cond_18
    add-float/2addr v10, v13

    .line 369
    const/4 v11, 0x1

    .line 350
    .end local v13    # "addition":F
    :goto_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 373
    .end local v12    # "i":I
    :cond_19
    add-float v8, v6, v7

    iget v12, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    cmpl-float v8, v8, v12

    if-lez v8, :cond_1c

    .line 375
    sub-float/2addr v12, v7

    .line 376
    .local v12, "extraWidth":F
    cmpl-float v2, v1, v2

    if-lez v2, :cond_1b

    .line 377
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    iget v8, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v2, v8, :cond_1b

    .line 378
    iget-object v8, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v8, v8, v2

    iget-boolean v8, v8, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-eqz v8, :cond_1a

    .line 379
    iget-object v8, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v8, v8, v2

    iget v13, v8, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    mul-float/2addr v13, v12

    div-float/2addr v13, v1

    iput v13, v8, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    .line 377
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 383
    .end local v2    # "i":I
    .end local v12    # "extraWidth":F
    :cond_1b
    goto/16 :goto_17

    .line 384
    :cond_1c
    sub-float/2addr v12, v6

    sub-float/2addr v12, v7

    .line 385
    .restart local v12    # "extraWidth":F
    cmpl-float v8, v9, v2

    if-lez v8, :cond_20

    cmpg-float v8, v12, v9

    if-ltz v8, :cond_1d

    if-nez v11, :cond_20

    .line 386
    :cond_1d
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_f
    iget v8, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v2, v8, :cond_1f

    .line 388
    iget-object v8, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v8, v8, v2

    iget-boolean v8, v8, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    if-eqz v8, :cond_1e

    .line 389
    iget-object v8, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v8, v8, v2

    iget v13, v8, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    iget-object v14, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v14, v14, v2

    iget v14, v14, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    iget-object v15, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v15, v15, v2

    iget v15, v15, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    sub-float/2addr v14, v15

    mul-float/2addr v14, v12

    div-float/2addr v14, v9

    add-float/2addr v13, v14

    iput v13, v8, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    .line 386
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .end local v2    # "i":I
    :cond_1f
    goto/16 :goto_17

    .line 393
    :cond_20
    sub-float/2addr v12, v9

    .line 394
    cmpg-float v8, v12, v10

    if-gez v8, :cond_24

    .line 395
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_10
    iget v8, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v2, v8, :cond_23

    .line 396
    iget-object v8, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v8, v8, v2

    iget-boolean v8, v8, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    if-eqz v8, :cond_21

    .line 397
    iget-object v8, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v8, v8, v2

    iget v13, v8, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    iput v13, v8, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    goto :goto_11

    .line 398
    :cond_21
    iget-object v8, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v8, v8, v2

    iget-boolean v8, v8, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez v8, :cond_22

    .line 399
    iget-object v8, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v8, v8, v2

    iget v13, v8, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    iget-object v14, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v14, v14, v2

    iget v14, v14, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    iget-object v15, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v15, v15, v2

    iget v15, v15, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    sub-float/2addr v14, v15

    mul-float/2addr v14, v12

    div-float/2addr v14, v10

    add-float/2addr v13, v14

    iput v13, v8, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    .line 395
    :cond_22
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .end local v2    # "i":I
    :cond_23
    goto/16 :goto_17

    .line 403
    :cond_24
    const/4 v8, 0x0

    .line 404
    .local v8, "totalFixed":F
    const/4 v13, 0x0

    .line 405
    .local v13, "totalFlexible":F
    const/4 v14, 0x0

    .line 406
    .local v14, "flexibleCount":F
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_12
    iget v2, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v15, v2, :cond_27

    .line 407
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v15

    iget-boolean v2, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    if-eqz v2, :cond_25

    .line 408
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v15

    move/from16 v17, v1

    .end local v1    # "sumOfPercents":F
    .local v17, "sumOfPercents":F
    iget v1, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    iput v1, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    .line 409
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v1, v1, v15

    iget v1, v1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    add-float/2addr v8, v1

    goto :goto_13

    .line 410
    .end local v17    # "sumOfPercents":F
    .restart local v1    # "sumOfPercents":F
    :cond_25
    move/from16 v17, v1

    .end local v1    # "sumOfPercents":F
    .restart local v17    # "sumOfPercents":F
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v1, v1, v15

    iget-boolean v1, v1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez v1, :cond_26

    .line 411
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v1, v1, v15

    iget v1, v1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    add-float/2addr v13, v1

    .line 412
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v14, v1

    .line 406
    :cond_26
    :goto_13
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v17

    const/4 v2, 0x0

    goto :goto_12

    .end local v17    # "sumOfPercents":F
    .restart local v1    # "sumOfPercents":F
    :cond_27
    move/from16 v17, v1

    .line 415
    .end local v1    # "sumOfPercents":F
    .end local v15    # "i":I
    .restart local v17    # "sumOfPercents":F
    const/4 v1, 0x0

    cmpl-float v2, v13, v1

    if-gtz v2, :cond_29

    cmpl-float v2, v14, v1

    if-lez v2, :cond_28

    goto :goto_14

    :cond_28
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 416
    :cond_29
    :goto_14
    iget v1, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    sub-float/2addr v1, v6

    sub-float/2addr v1, v8

    .line 417
    .end local v12    # "extraWidth":F
    .local v1, "extraWidth":F
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_15
    iget v12, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v2, v12, :cond_2c

    .line 418
    iget-object v12, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v12, v12, v2

    iget-boolean v12, v12, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez v12, :cond_2b

    iget-object v12, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v12, v12, v2

    iget-boolean v12, v12, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    if-nez v12, :cond_2b

    .line 419
    iget-object v12, v0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v12, v12, v2

    const/4 v15, 0x0

    cmpl-float v16, v13, v15

    if-lez v16, :cond_2a

    iget v15, v12, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    mul-float/2addr v15, v1

    div-float/2addr v15, v13

    goto :goto_16

    :cond_2a
    div-float v15, v1, v14

    :goto_16
    iput v15, v12, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    .line 417
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 429
    .end local v1    # "extraWidth":F
    .end local v2    # "i":I
    .end local v3    # "minTableWidth":F
    .end local v4    # "totalNonPercent":F
    .end local v5    # "toBalance":Z
    .end local v6    # "totalPercent":F
    .end local v7    # "minTotalNonPercent":F
    .end local v8    # "totalFixed":F
    .end local v9    # "fixedAddition":F
    .end local v10    # "flexibleAddition":F
    .end local v11    # "hasFlexibleCell":Z
    .end local v13    # "totalFlexible":F
    .end local v14    # "flexibleCount":F
    .end local v17    # "sumOfPercents":F
    :cond_2c
    :goto_17
    return-void

    .line 271
    .local v1, "sumOfPercents":F
    .restart local v3    # "minTableWidth":F
    .restart local v4    # "totalNonPercent":F
    :cond_2d
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableWidth:Z

    if-eqz v1, :cond_0

    const-string v1, "!!"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
