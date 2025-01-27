.class Lcom/itextpdf/layout/renderer/CollapsedTableBorders;
.super Lcom/itextpdf/layout/renderer/TableBorders;
.source "CollapsedTableBorders.java"


# instance fields
.field private bottomBorderCollapseWith:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation
.end field

.field private topBorderCollapseWith:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
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

    .line 70
    .local p1, "rows":Ljava/util/List;, "Ljava/util/List<[Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/renderer/TableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->topBorderCollapseWith:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->bottomBorderCollapseWith:Ljava/util/List;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;I)V
    .locals 1
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

    .line 74
    .local p1, "rows":Ljava/util/List;, "Ljava/util/List<[Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/layout/renderer/TableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;I)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->topBorderCollapseWith:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->bottomBorderCollapseWith:Ljava/util/List;

    .line 75
    return-void
.end method

.method public static getCollapsedBorder(Lcom/itextpdf/layout/borders/Border;Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/borders/Border;
    .locals 2
    .param p0, "cellBorder"    # Lcom/itextpdf/layout/borders/Border;
    .param p1, "tableBorder"    # Lcom/itextpdf/layout/borders/Border;

    .line 469
    if-eqz p1, :cond_1

    .line 470
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 471
    :cond_0
    return-object p1

    .line 474
    :cond_1
    if-eqz p0, :cond_2

    .line 475
    return-object p0

    .line 477
    :cond_2
    sget-object v0, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    return-object v0
.end method

.method public static getCollapsedList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 482
    .local p0, "innerList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    .local p1, "outerList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 483
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v1, "collapsedList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 485
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/borders/Border;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    invoke-static {v3, v4}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCollapsedBorder(Lcom/itextpdf/layout/borders/Border;Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/borders/Border;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 487
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method


# virtual methods
.method protected applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 3
    .param p1, "occupiedBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "reverse"    # Z

    .line 531
    if-eqz p3, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getMaxBottomWidth()F

    move-result v1

    mul-float/2addr v0, v1

    .line 532
    .local v0, "bottomTableBorderWidth":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 533
    div-float v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    div-float v1, v0, v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 534
    return-object p0
.end method

.method protected applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 1
    .param p1, "occupiedBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "isEmpty"    # Z
    .param p4, "force"    # Z
    .param p5, "reverse"    # Z

    .line 513
    if-nez p3, :cond_0

    .line 514
    invoke-virtual {p0, p1, p2, p5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    move-result-object v0

    return-object v0

    .line 515
    :cond_0
    if-eqz p4, :cond_1

    .line 517
    invoke-virtual {p0, p1, p2, p5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 518
    invoke-virtual {p0, p1, p2, p5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    move-result-object v0

    return-object v0

    .line 520
    :cond_1
    return-object p0
.end method

.method protected applyCellIndents(Lcom/itextpdf/kernel/geom/Rectangle;FFFFZ)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 7
    .param p1, "box"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "topIndent"    # F
    .param p3, "rightIndent"    # F
    .param p4, "bottomIndent"    # F
    .param p5, "leftIndent"    # F
    .param p6, "reverse"    # Z

    .line 539
    const/high16 v0, 0x40000000    # 2.0f

    div-float v2, p2, v0

    div-float v3, p3, v0

    div-float v4, p4, v0

    div-float v5, p5, v0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 540
    return-object p0
.end method

.method protected applyLeftAndRightTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 6
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "reverse"    # Z

    .line 494
    if-eqz p1, :cond_0

    .line 495
    const/4 v1, 0x0

    iget v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rightBorderMaxWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    const/4 v4, 0x0

    iget v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->leftBorderMaxWidth:F

    div-float v5, v0, v2

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 498
    :cond_0
    return-object p0
.end method

.method protected applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 3
    .param p1, "occupiedBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "reverse"    # Z

    .line 524
    if-eqz p3, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getMaxTopWidth()F

    move-result v1

    mul-float/2addr v0, v1

    .line 525
    .local v0, "topIndent":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 526
    div-float v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    div-float v1, v0, v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 527
    return-object p0
.end method

.method protected applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 1
    .param p1, "occupiedBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "isEmpty"    # Z
    .param p4, "force"    # Z
    .param p5, "reverse"    # Z

    .line 502
    if-nez p3, :cond_0

    .line 503
    invoke-virtual {p0, p1, p2, p5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    move-result-object v0

    return-object v0

    .line 504
    :cond_0
    if-eqz p4, :cond_1

    .line 506
    invoke-virtual {p0, p1, p2, p5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 507
    invoke-virtual {p0, p1, p2, p5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    move-result-object v0

    return-object v0

    .line 509
    :cond_1
    return-object p0
.end method

.method protected buildBordersArrays(Lcom/itextpdf/layout/renderer/CellRenderer;II[I)V
    .locals 11
    .param p1, "cell"    # Lcom/itextpdf/layout/renderer/CellRenderer;
    .param p2, "row"    # I
    .param p3, "col"    # I
    .param p4, "rowspansToDeduct"    # [I

    .line 228
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->horizontalBorders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 229
    add-int/lit8 p2, p2, -0x1

    .line 231
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 237
    .local v1, "currCellColspan":I
    const/4 v2, 0x0

    const/16 v3, 0x3c

    const/4 v4, 0x1

    if-eqz p3, :cond_5

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/itextpdf/layout/renderer/CellRenderer;

    add-int/lit8 v6, p3, -0x1

    aget-object v5, v5, v6

    if-nez v5, :cond_5

    .line 238
    move v5, p3

    .line 240
    .local v5, "j":I
    :cond_1
    add-int/lit8 v5, v5, -0x1

    .line 241
    move v6, p2

    .line 242
    .local v6, "nextCellRow":I
    :goto_0
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v6, :cond_2

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v7, v7, v5

    if-nez v7, :cond_2

    .line 243
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 246
    :cond_2
    if-lez v5, :cond_3

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v6, :cond_3

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    .line 247
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v7, v7, v5

    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v5

    if-ne v7, p3, :cond_1

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    .line 248
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v7, v7, v5

    invoke-virtual {v7, v3}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int v7, v6, v7

    add-int/2addr v7, v4

    aget v8, p4, v5

    add-int/2addr v7, v8

    if-ne v7, p2, :cond_1

    .line 250
    :cond_3
    if-ltz v5, :cond_5

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_5

    if-le v6, p2, :cond_5

    .line 251
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v7, v7, v5

    .line 252
    .local v7, "nextCell":Lcom/itextpdf/layout/renderer/CellRenderer;
    invoke-virtual {v7, v3}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget v9, p4, v5

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    .line 253
    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 254
    .local v8, "nextCellColspan":I
    move v9, v5

    .local v9, "i":I
    :goto_1
    add-int v10, v5, v8

    if-ge v9, v10, :cond_4

    .line 255
    aput v2, p4, v9

    .line 254
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 257
    .end local v9    # "i":I
    :cond_4
    invoke-virtual {p0, v7, v6, v4}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->buildBordersArrays(Lcom/itextpdf/layout/renderer/CellRenderer;IZ)V

    .line 262
    .end local v5    # "j":I
    .end local v6    # "nextCellRow":I
    .end local v7    # "nextCell":Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v8    # "nextCellColspan":I
    :cond_5
    const/4 v5, 0x0

    .line 263
    .restart local v5    # "j":I
    :goto_2
    if-ge v5, v1, :cond_9

    .line 264
    add-int/lit8 v6, p2, 0x1

    .line 265
    .restart local v6    # "nextCellRow":I
    :goto_3
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/renderer/CellRenderer;

    add-int v8, p3, v5

    aget-object v7, v7, v8

    if-nez v7, :cond_6

    .line 266
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 268
    :cond_6
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_7

    .line 269
    goto :goto_4

    .line 271
    :cond_7
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/renderer/CellRenderer;

    add-int v8, p3, v5

    aget-object v7, v7, v8

    .line 273
    .restart local v7    # "nextCell":Lcom/itextpdf/layout/renderer/CellRenderer;
    invoke-virtual {v7, v3}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v8, v6, v8

    if-ne p2, v8, :cond_8

    .line 274
    invoke-virtual {p0, v7, v6, v4}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->buildBordersArrays(Lcom/itextpdf/layout/renderer/CellRenderer;IZ)V

    .line 276
    :cond_8
    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v5, v8

    .line 277
    .end local v7    # "nextCell":Lcom/itextpdf/layout/renderer/CellRenderer;
    goto :goto_2

    .line 280
    .end local v6    # "nextCellRow":I
    :cond_9
    :goto_4
    add-int v6, p3, v1

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/renderer/CellRenderer;

    array-length v7, v7

    if-ge v6, v7, :cond_c

    .line 281
    move v6, p2

    .line 282
    .restart local v6    # "nextCellRow":I
    :goto_5
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/renderer/CellRenderer;

    add-int v8, p3, v1

    aget-object v7, v7, v8

    if-nez v7, :cond_a

    .line 283
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 285
    :cond_a
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_c

    .line 286
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/renderer/CellRenderer;

    add-int v8, p3, v1

    aget-object v7, v7, v8

    .line 287
    .restart local v7    # "nextCell":Lcom/itextpdf/layout/renderer/CellRenderer;
    invoke-virtual {v7, v3}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int v9, p3, v1

    aget v9, p4, v9

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    .line 288
    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 289
    .local v0, "nextCellColspan":I
    add-int v3, p3, v1

    .local v3, "i":I
    :goto_6
    add-int v8, p3, v1

    add-int/2addr v8, v0

    if-ge v3, v8, :cond_b

    .line 290
    aput v2, p4, v3

    .line 289
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 292
    .end local v3    # "i":I
    :cond_b
    invoke-virtual {p0, v7, v6, v4}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->buildBordersArrays(Lcom/itextpdf/layout/renderer/CellRenderer;IZ)V

    .line 296
    .end local v0    # "nextCellColspan":I
    .end local v6    # "nextCellRow":I
    .end local v7    # "nextCell":Lcom/itextpdf/layout/renderer/CellRenderer;
    :cond_c
    invoke-virtual {p0, p1, p2, v2}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->buildBordersArrays(Lcom/itextpdf/layout/renderer/CellRenderer;IZ)V

    .line 298
    return-void
.end method

.method protected buildBordersArrays(Lcom/itextpdf/layout/renderer/CellRenderer;IZ)V
    .locals 15
    .param p1, "cell"    # Lcom/itextpdf/layout/renderer/CellRenderer;
    .param p2, "row"    # I
    .param p3, "isNeighbourCell"    # Z

    .line 301
    move-object v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 302
    .local v9, "colspan":I
    const/16 v0, 0x3c

    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 303
    .local v0, "rowspan":I
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Cell;->getCol()I

    move-result v10

    .line 304
    .local v10, "colN":I
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v11

    .line 307
    .local v11, "cellBorders":[Lcom/itextpdf/layout/borders/Border;
    add-int/lit8 v1, v8, 0x1

    sub-int/2addr v1, v0

    if-gez v1, :cond_0

    .line 308
    add-int/lit8 v0, v8, 0x1

    move v12, v0

    goto :goto_0

    .line 307
    :cond_0
    move v12, v0

    .line 312
    .end local v0    # "rowspan":I
    .local v12, "rowspan":I
    :goto_0
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_1
    if-ge v13, v9, :cond_1

    .line 313
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->horizontalBorders:Ljava/util/List;

    add-int/lit8 v0, v8, 0x1

    sub-int v2, v0, v12

    add-int v3, v10, v13

    const/4 v0, 0x0

    aget-object v4, v11, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->checkAndReplaceBorderInArray(Ljava/util/List;IILcom/itextpdf/layout/borders/Border;Z)Z

    .line 312
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 316
    .end local v13    # "i":I
    :cond_1
    const/4 v0, 0x0

    move v13, v0

    .restart local v13    # "i":I
    :goto_2
    if-ge v13, v9, :cond_2

    .line 317
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->horizontalBorders:Ljava/util/List;

    add-int/lit8 v2, v8, 0x1

    add-int v3, v10, v13

    const/4 v0, 0x2

    aget-object v4, v11, v0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->checkAndReplaceBorderInArray(Ljava/util/List;IILcom/itextpdf/layout/borders/Border;Z)Z

    .line 316
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 320
    .end local v13    # "i":I
    :cond_2
    sub-int v0, v8, v12

    const/4 v13, 0x1

    add-int/2addr v0, v13

    move v14, v0

    .local v14, "j":I
    :goto_3
    if-gt v14, v8, :cond_3

    .line 321
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBorders:Ljava/util/List;

    const/4 v0, 0x3

    aget-object v4, v11, v0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, v10

    move v3, v14

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->checkAndReplaceBorderInArray(Ljava/util/List;IILcom/itextpdf/layout/borders/Border;Z)Z

    .line 320
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 324
    .end local v14    # "j":I
    :cond_3
    sub-int v0, v8, v12

    add-int/2addr v0, v13

    move v14, v0

    .local v14, "i":I
    :goto_4
    if-gt v14, v8, :cond_4

    .line 325
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBorders:Ljava/util/List;

    add-int v2, v10, v9

    aget-object v4, v11, v13

    const/4 v5, 0x1

    move-object v0, p0

    move v3, v14

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->checkAndReplaceBorderInArray(Ljava/util/List;IILcom/itextpdf/layout/borders/Border;Z)Z

    .line 324
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 327
    .end local v14    # "i":I
    :cond_4
    return-void
.end method

.method protected checkAndReplaceBorderInArray(Ljava/util/List;IILcom/itextpdf/layout/borders/Border;Z)Z
    .locals 6
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "borderToAdd"    # Lcom/itextpdf/layout/borders/Border;
    .param p5, "hasPriority"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;>;II",
            "Lcom/itextpdf/layout/borders/Border;",
            "Z)Z"
        }
    .end annotation

    .line 337
    .local p1, "borderArray":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 354
    .local v0, "borders":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/borders/Border;

    .line 355
    .local v1, "neighbour":Lcom/itextpdf/layout/borders/Border;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 356
    invoke-interface {v0, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 357
    return v2

    .line 359
    :cond_0
    const/4 v3, 0x0

    if-eq v1, p4, :cond_2

    .line 360
    if-eqz p4, :cond_2

    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v4

    invoke-virtual {p4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    .line 361
    if-nez p5, :cond_1

    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v4

    invoke-virtual {p4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 362
    return v3

    .line 364
    :cond_1
    invoke-interface {v0, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 365
    return v2

    .line 370
    :cond_2
    return v3
.end method

.method protected collapseTableWithFooter(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 2
    .param p1, "footerBordersHandler"    # Lcom/itextpdf/layout/renderer/TableBorders;
    .param p2, "hasContent"    # Z

    .line 596
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getLastHorizontalBorder()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getTopBorderCollapseWith()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setTopBorderCollapseWith(Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    .line 597
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setBottomBorderCollapseWith(Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    .line 598
    return-object p0
.end method

.method protected collapseTableWithHeader(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 2
    .param p1, "headerBordersHandler"    # Lcom/itextpdf/layout/renderer/TableBorders;
    .param p2, "updateBordersHandler"    # Z

    .line 602
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    iget v1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setBottomBorderCollapseWith(Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    .line 603
    if-eqz p2, :cond_0

    .line 604
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableBorders;->getLastHorizontalBorder()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setTopBorderCollapseWith(Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    .line 606
    :cond_0
    return-object p0
.end method

.method protected drawHorizontalBorder(IFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;[F)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 16
    .param p1, "i"    # I
    .param p2, "startX"    # F
    .param p3, "y1"    # F
    .param p4, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p5, "countedColumnWidth"    # [F

    .line 376
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v2

    .line 377
    .local v2, "borders":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    move/from16 v3, p2

    .line 378
    .local v3, "x1":F
    const/4 v4, 0x0

    aget v4, p5, v4

    add-float/2addr v4, v3

    .line 379
    .local v4, "x2":F
    const/high16 v5, 0x40000000    # 2.0f

    if-nez v1, :cond_1

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getFirstVerticalBorder()Ljava/util/List;

    move-result-object v6

    iget v7, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v8, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/borders/Border;

    .line 381
    .local v6, "firstBorder":Lcom/itextpdf/layout/borders/Border;
    if-eqz v6, :cond_0

    .line 382
    invoke-virtual {v6}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v7

    div-float/2addr v7, v5

    sub-float/2addr v3, v7

    .line 384
    .end local v6    # "firstBorder":Lcom/itextpdf/layout/borders/Border;
    :cond_0
    goto :goto_0

    :cond_1
    iget v6, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->finishRow:I

    iget v7, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    if-ne v1, v6, :cond_0

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getFirstVerticalBorder()Ljava/util/List;

    move-result-object v6

    iget v7, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v8, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v7, v8

    iget v8, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->finishRow:I

    add-int/2addr v7, v8

    iget v8, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/borders/Border;

    .line 386
    .restart local v6    # "firstBorder":Lcom/itextpdf/layout/borders/Border;
    if-eqz v6, :cond_2

    .line 387
    invoke-virtual {v6}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v7

    div-float/2addr v7, v5

    sub-float/2addr v3, v7

    .line 392
    .end local v6    # "firstBorder":Lcom/itextpdf/layout/borders/Border;
    :cond_2
    :goto_0
    const/4 v6, 0x1

    .local v6, "j":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 393
    add-int/lit8 v7, v6, -0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Lcom/itextpdf/layout/borders/Border;

    .line 394
    .local v14, "prevBorder":Lcom/itextpdf/layout/borders/Border;
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lcom/itextpdf/layout/borders/Border;

    .line 395
    .local v15, "curBorder":Lcom/itextpdf/layout/borders/Border;
    if-eqz v14, :cond_3

    .line 396
    invoke-virtual {v14, v15}, Lcom/itextpdf/layout/borders/Border;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 397
    sget-object v13, Lcom/itextpdf/layout/borders/Border$Side;->NONE:Lcom/itextpdf/layout/borders/Border$Side;

    move-object v7, v14

    move-object/from16 v8, p4

    move v9, v3

    move/from16 v10, p3

    move v11, v4

    move/from16 v12, p3

    invoke-virtual/range {v7 .. v13}, Lcom/itextpdf/layout/borders/Border;->drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V

    .line 398
    move v3, v4

    goto :goto_2

    .line 401
    :cond_3
    add-int/lit8 v7, v6, -0x1

    aget v7, p5, v7

    add-float/2addr v3, v7

    .line 402
    move v4, v3

    .line 404
    :cond_4
    :goto_2
    if-eqz v15, :cond_5

    .line 405
    aget v7, p5, v6

    add-float/2addr v4, v7

    .line 392
    .end local v14    # "prevBorder":Lcom/itextpdf/layout/borders/Border;
    .end local v15    # "curBorder":Lcom/itextpdf/layout/borders/Border;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 409
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v8, v6, -0x1

    if-le v7, v8, :cond_7

    add-int/lit8 v7, v6, -0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/borders/Border;

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_3
    move-object v14, v7

    .line 410
    .local v14, "lastBorder":Lcom/itextpdf/layout/borders/Border;
    if-eqz v14, :cond_a

    .line 411
    if-nez v1, :cond_8

    .line 412
    invoke-virtual {v0, v6}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object v7

    iget v8, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v9, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v8, v9

    add-int/2addr v8, v1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 413
    invoke-virtual {v0, v6}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object v7

    iget v8, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v9, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v8, v9

    add-int/2addr v8, v1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {v7}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v7

    div-float/2addr v7, v5

    add-float/2addr v4, v7

    goto :goto_4

    .line 414
    :cond_8
    iget v7, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->finishRow:I

    iget v8, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-ne v1, v7, :cond_9

    invoke-virtual {v0, v6}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget v8, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v9, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v8, v9

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    if-le v7, v8, :cond_9

    invoke-virtual {v0, v6}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object v7

    iget v8, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v9, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v8, v9

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 415
    invoke-virtual {v0, v6}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object v7

    iget v8, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v9, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v8, v9

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {v7}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v7

    div-float/2addr v7, v5

    add-float/2addr v4, v7

    .line 418
    :cond_9
    :goto_4
    sget-object v13, Lcom/itextpdf/layout/borders/Border$Side;->NONE:Lcom/itextpdf/layout/borders/Border$Side;

    move-object v7, v14

    move-object/from16 v8, p4

    move v9, v3

    move/from16 v10, p3

    move v11, v4

    move/from16 v12, p3

    invoke-virtual/range {v7 .. v13}, Lcom/itextpdf/layout/borders/Border;->drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V

    .line 420
    :cond_a
    return-object v0
.end method

.method protected drawVerticalBorder(IFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Ljava/util/List;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 15
    .param p1, "i"    # I
    .param p2, "startY"    # F
    .param p3, "x1"    # F
    .param p4, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
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

    .line 424
    .local p5, "heights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move-object v0, p0

    move-object/from16 v1, p5

    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object v2

    .line 425
    .local v2, "borders":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    move/from16 v3, p2

    .line 426
    .local v3, "y1":F
    move v4, v3

    .line 427
    .local v4, "y2":F
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 428
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float v4, v3, v5

    .line 431
    :cond_0
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 432
    iget v6, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v7, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v6, v7

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lcom/itextpdf/layout/borders/Border;

    .line 433
    .local v13, "prevBorder":Lcom/itextpdf/layout/borders/Border;
    iget v6, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v7, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v6, v7

    add-int/2addr v6, v5

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lcom/itextpdf/layout/borders/Border;

    .line 434
    .local v14, "curBorder":Lcom/itextpdf/layout/borders/Border;
    if-eqz v13, :cond_1

    .line 435
    invoke-virtual {v13, v14}, Lcom/itextpdf/layout/borders/Border;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 436
    sget-object v12, Lcom/itextpdf/layout/borders/Border$Side;->NONE:Lcom/itextpdf/layout/borders/Border$Side;

    move-object v6, v13

    move-object/from16 v7, p4

    move/from16 v8, p3

    move v9, v3

    move/from16 v10, p3

    move v11, v4

    invoke-virtual/range {v6 .. v12}, Lcom/itextpdf/layout/borders/Border;->drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V

    .line 437
    move v3, v4

    goto :goto_1

    .line 440
    :cond_1
    add-int/lit8 v6, v5, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v3, v6

    .line 441
    move v4, v3

    .line 443
    :cond_2
    :goto_1
    if-eqz v14, :cond_3

    .line 444
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v4, v6

    .line 431
    .end local v13    # "prevBorder":Lcom/itextpdf/layout/borders/Border;
    .end local v14    # "curBorder":Lcom/itextpdf/layout/borders/Border;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 447
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 448
    return-object v0

    .line 450
    :cond_5
    iget v6, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v7, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v6, v7

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lcom/itextpdf/layout/borders/Border;

    .line 451
    .local v13, "lastBorder":Lcom/itextpdf/layout/borders/Border;
    if-eqz v13, :cond_6

    .line 452
    sget-object v12, Lcom/itextpdf/layout/borders/Border$Side;->NONE:Lcom/itextpdf/layout/borders/Border$Side;

    move-object v6, v13

    move-object/from16 v7, p4

    move/from16 v8, p3

    move v9, v3

    move/from16 v10, p3

    move v11, v4

    invoke-virtual/range {v6 .. v12}, Lcom/itextpdf/layout/borders/Border;->drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V

    .line 454
    :cond_6
    return-object v0
.end method

.method protected fixHeaderOccupiedArea(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 2
    .param p1, "occupiedBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 610
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getMaxTopWidth()F

    move-result v0

    .line 611
    .local v0, "topBorderMaxWidth":F
    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 612
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 613
    return-object p0
.end method

.method public getBottomBorderCollapseWith()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->bottomBorderCollapseWith:Ljava/util/List;

    return-object v0
.end method

.method public getCellBorderIndents(IIII)[F
    .locals 8
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "rowspan"    # I
    .param p4, "colspan"    # I

    .line 89
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 93
    .local v0, "indents":[F
    iget v1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    add-int/2addr v1, p1

    sub-int/2addr v1, p3

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v1

    .line 94
    .local v1, "borderList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    move v3, p2

    .local v3, "i":I
    :goto_0
    add-int v4, p2, p4

    if-ge v3, v4, :cond_1

    .line 95
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    .line 96
    .local v4, "border":Lcom/itextpdf/layout/borders/Border;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    const/4 v6, 0x0

    aget v7, v0, v6

    cmpl-float v5, v5, v7

    if-lez v5, :cond_0

    .line 97
    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    aput v5, v0, v6

    .line 94
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v3    # "i":I
    .end local v4    # "border":Lcom/itextpdf/layout/borders/Border;
    :cond_1
    add-int v3, p2, p4

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object v1

    .line 102
    iget v3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v3, v4

    add-int/2addr v3, p1

    sub-int/2addr v3, p3

    add-int/2addr v3, v2

    .restart local v3    # "i":I
    :goto_1
    iget v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v5, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v4, v5

    add-int/2addr v4, p1

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_3

    .line 103
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    .line 104
    .restart local v4    # "border":Lcom/itextpdf/layout/borders/Border;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    aget v6, v0, v2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 105
    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    aput v5, v0, v2

    .line 102
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 109
    .end local v3    # "i":I
    .end local v4    # "border":Lcom/itextpdf/layout/borders/Border;
    :cond_3
    iget v3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    add-int/2addr v3, p1

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v1

    .line 110
    move v3, p2

    .restart local v3    # "i":I
    :goto_2
    add-int v4, p2, p4

    if-ge v3, v4, :cond_5

    .line 111
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    .line 112
    .restart local v4    # "border":Lcom/itextpdf/layout/borders/Border;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    const/4 v6, 0x2

    aget v7, v0, v6

    cmpl-float v5, v5, v7

    if-lez v5, :cond_4

    .line 113
    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    aput v5, v0, v6

    .line 110
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 117
    .end local v3    # "i":I
    .end local v4    # "border":Lcom/itextpdf/layout/borders/Border;
    :cond_5
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object v1

    .line 118
    iget v3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v3, v4

    add-int/2addr v3, p1

    sub-int/2addr v3, p3

    add-int/2addr v3, v2

    .restart local v3    # "i":I
    :goto_3
    iget v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v5, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v4, v5

    add-int/2addr v4, p1

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_7

    .line 119
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    .line 120
    .restart local v4    # "border":Lcom/itextpdf/layout/borders/Border;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    const/4 v6, 0x3

    aget v7, v0, v6

    cmpl-float v5, v5, v7

    if-lez v5, :cond_6

    .line 121
    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    aput v5, v0, v6

    .line 118
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 124
    .end local v3    # "i":I
    .end local v4    # "border":Lcom/itextpdf/layout/borders/Border;
    :cond_7
    return-object v0
.end method

.method protected getCellVerticalAddition([F)F
    .locals 3
    .param p1, "indents"    # [F

    .line 544
    const/4 v0, 0x0

    aget v0, p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public getHorizontalBorder(I)Ljava/util/List;
    .locals 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 141
    iget v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    const/16 v1, 0x10

    if-ne p1, v0, :cond_6

    .line 142
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->topBorderCollapseWith:Ljava/util/List;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->numberOfColumns:I

    invoke-static {v0, v2, v3}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->createAndFillBorderList(Ljava/util/List;Lcom/itextpdf/layout/borders/Border;I)Ljava/util/List;

    move-result-object v0

    .line 143
    .local v0, "firstBorderOnCurrentPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    iget v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    if-ne p1, v2, :cond_0

    .line 144
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->horizontalBorders:Ljava/util/List;

    iget v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCollapsedList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5

    .line 147
    const/4 v2, 0x0

    .line 148
    .local v2, "col":I
    move v3, p1

    .line 149
    .local v3, "row":I
    :cond_1
    :goto_0
    iget v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->numberOfColumns:I

    if-ge v2, v4, :cond_5

    .line 150
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    iget v5, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int v5, v3, v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v4, v4, v2

    if-eqz v4, :cond_4

    sub-int v4, v3, p1

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    iget v6, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int v6, v3, v6

    .line 151
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual {v5}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v5

    if-gt v4, v5, :cond_4

    .line 152
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    iget v5, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int v5, v3, v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v4, v4, v2

    .line 153
    .local v4, "cell":Lcom/itextpdf/layout/renderer/CellRenderer;
    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/element/Cell;

    const/16 v6, 0xd

    invoke-static {v5, v6}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->getCellSideBorder(Lcom/itextpdf/layout/element/Cell;I)Lcom/itextpdf/layout/borders/Border;

    move-result-object v5

    .line 154
    .local v5, "cellModelTopBorder":Lcom/itextpdf/layout/borders/Border;
    invoke-virtual {v4, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 155
    .local v6, "colspan":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {v8}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 156
    :cond_2
    move v7, v2

    .local v7, "i":I
    :goto_1
    add-int v8, v2, v6

    if-ge v7, v8, :cond_3

    .line 157
    invoke-interface {v0, v7, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 156
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 160
    .end local v7    # "i":I
    :cond_3
    add-int/2addr v2, v6

    .line 161
    move v3, p1

    .line 162
    .end local v4    # "cell":Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v5    # "cellModelTopBorder":Lcom/itextpdf/layout/borders/Border;
    .end local v6    # "colspan":I
    goto :goto_0

    .line 163
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 164
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 170
    .end local v2    # "col":I
    .end local v3    # "row":I
    :cond_5
    return-object v0

    .line 172
    .end local v0    # "firstBorderOnCurrentPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    :cond_6
    iget v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->finishRow:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_d

    .line 173
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->bottomBorderCollapseWith:Ljava/util/List;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget v3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->numberOfColumns:I

    invoke-static {v0, v2, v3}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->createAndFillBorderList(Ljava/util/List;Lcom/itextpdf/layout/borders/Border;I)Ljava/util/List;

    move-result-object v0

    .line 174
    .local v0, "lastBorderOnCurrentPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    iget v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->horizontalBorders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_7

    .line 175
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->horizontalBorders:Ljava/util/List;

    iget v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCollapsedList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 177
    :cond_7
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_c

    .line 178
    const/4 v2, 0x0

    .line 179
    .restart local v2    # "col":I
    add-int/lit8 v3, p1, -0x1

    .line 180
    .restart local v3    # "row":I
    :cond_8
    :goto_2
    iget v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->numberOfColumns:I

    if-ge v2, v4, :cond_c

    .line 181
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    iget v5, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int v5, v3, v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v4, v4, v2

    if-eqz v4, :cond_b

    .line 182
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    iget v5, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int v5, v3, v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v4, v4, v2

    .line 183
    .restart local v4    # "cell":Lcom/itextpdf/layout/renderer/CellRenderer;
    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/element/Cell;

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->getCellSideBorder(Lcom/itextpdf/layout/element/Cell;I)Lcom/itextpdf/layout/borders/Border;

    move-result-object v5

    .line 184
    .local v5, "cellModelBottomBorder":Lcom/itextpdf/layout/borders/Border;
    invoke-virtual {v4, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 185
    .restart local v6    # "colspan":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_9

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {v8}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_a

    .line 186
    :cond_9
    move v7, v2

    .restart local v7    # "i":I
    :goto_3
    add-int v8, v2, v6

    if-ge v7, v8, :cond_a

    .line 187
    invoke-interface {v0, v7, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 186
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 190
    .end local v7    # "i":I
    :cond_a
    add-int/2addr v2, v6

    .line 191
    add-int/lit8 v3, p1, -0x1

    .line 192
    .end local v4    # "cell":Lcom/itextpdf/layout/renderer/CellRenderer;
    .end local v5    # "cellModelBottomBorder":Lcom/itextpdf/layout/borders/Border;
    .end local v6    # "colspan":I
    goto :goto_2

    .line 193
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 194
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 200
    .end local v2    # "col":I
    .end local v3    # "row":I
    :cond_c
    return-object v0

    .line 202
    .end local v0    # "lastBorderOnCurrentPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    :cond_d
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->horizontalBorders:Ljava/util/List;

    iget v1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getTopBorderCollapseWith()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->topBorderCollapseWith:Ljava/util/List;

    return-object v0
.end method

.method public getVerticalBorder(I)Ljava/util/List;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 129
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->createAndFillBorderList(Ljava/util/List;Lcom/itextpdf/layout/borders/Border;I)Ljava/util/List;

    move-result-object v0

    .line 130
    .local v0, "borderList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCollapsedList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 131
    .end local v0    # "borderList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    :cond_0
    iget v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->numberOfColumns:I

    if-ne p1, v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->createAndFillBorderList(Ljava/util/List;Lcom/itextpdf/layout/borders/Border;I)Ljava/util/List;

    move-result-object v0

    .line 133
    .restart local v0    # "borderList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBorders:Ljava/util/List;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCollapsedList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 135
    .end local v0    # "borderList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public setBottomBorderCollapseWith(Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;)",
            "Lcom/itextpdf/layout/renderer/CollapsedTableBorders;"
        }
    .end annotation

    .line 217
    .local p1, "bottomBorderCollapseWith":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->bottomBorderCollapseWith:Ljava/util/List;

    .line 218
    if-eqz p1, :cond_0

    .line 219
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 221
    :cond_0
    return-object p0
.end method

.method public setTopBorderCollapseWith(Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;)",
            "Lcom/itextpdf/layout/renderer/CollapsedTableBorders;"
        }
    .end annotation

    .line 209
    .local p1, "topBorderCollapseWith":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->topBorderCollapseWith:Ljava/util/List;

    .line 210
    if-eqz p1, :cond_0

    .line 211
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    :cond_0
    return-object p0
.end method

.method protected skipFooter([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 1
    .param p1, "borders"    # [Lcom/itextpdf/layout/borders/Border;

    .line 584
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setTableBoundingBorders([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 585
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setBottomBorderCollapseWith(Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    .line 586
    return-object p0
.end method

.method protected skipHeader([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 1
    .param p1, "borders"    # [Lcom/itextpdf/layout/borders/Border;

    .line 590
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setTableBoundingBorders([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 591
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setTopBorderCollapseWith(Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    .line 592
    return-object p0
.end method

.method protected updateBordersOnNewPage(ZZLcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/layout/renderer/TableRenderer;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 3
    .param p1, "isOriginalNonSplitRenderer"    # Z
    .param p2, "isFooterOrHeader"    # Z
    .param p3, "currentRenderer"    # Lcom/itextpdf/layout/renderer/TableRenderer;
    .param p4, "headerRenderer"    # Lcom/itextpdf/layout/renderer/TableRenderer;
    .param p5, "footerRenderer"    # Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 550
    if-nez p2, :cond_2

    .line 552
    if-eqz p1, :cond_1

    .line 553
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->processAllBordersAndEmptyRows()Lcom/itextpdf/layout/renderer/TableBorders;

    .line 555
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getMaxRightWidth()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rightBorderMaxWidth:F

    .line 556
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getMaxLeftWidth()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->leftBorderMaxWidth:F

    .line 558
    :cond_0
    invoke-virtual {p3}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getLastRowBottomBorder()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setTopBorderCollapseWith(Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    goto :goto_0

    .line 560
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setTopBorderCollapseWith(Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    .line 561
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setBottomBorderCollapseWith(Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    .line 564
    :cond_2
    :goto_0
    if-eqz p5, :cond_3

    .line 565
    iget-object v0, p5, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxRightWidth()F

    move-result v0

    .line 566
    .local v0, "rightFooterBorderWidth":F
    iget-object v1, p5, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxLeftWidth()F

    move-result v1

    .line 568
    .local v1, "leftFooterBorderWidth":F
    iget v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->leftBorderMaxWidth:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->leftBorderMaxWidth:F

    .line 569
    iget v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rightBorderMaxWidth:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rightBorderMaxWidth:F

    .line 572
    .end local v0    # "rightFooterBorderWidth":F
    .end local v1    # "leftFooterBorderWidth":F
    :cond_3
    if-eqz p4, :cond_4

    .line 573
    iget-object v0, p4, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxRightWidth()F

    move-result v0

    .line 574
    .local v0, "rightHeaderBorderWidth":F
    iget-object v1, p4, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxLeftWidth()F

    move-result v1

    .line 576
    .local v1, "leftHeaderBorderWidth":F
    iget v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->leftBorderMaxWidth:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->leftBorderMaxWidth:F

    .line 577
    iget v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rightBorderMaxWidth:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rightBorderMaxWidth:F

    .line 580
    .end local v0    # "rightHeaderBorderWidth":F
    .end local v1    # "leftHeaderBorderWidth":F
    :cond_4
    return-object p0
.end method
