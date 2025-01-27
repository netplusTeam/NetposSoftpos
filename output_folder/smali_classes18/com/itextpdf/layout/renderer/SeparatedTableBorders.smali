.class Lcom/itextpdf/layout/renderer/SeparatedTableBorders;
.super Lcom/itextpdf/layout/renderer/TableBorders;
.source "SeparatedTableBorders.java"


# direct methods
.method public constructor <init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;)V
    .locals 0
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

    .line 59
    .local p1, "rows":Ljava/util/List;, "Ljava/util/List<[Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/renderer/TableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;)V

    .line 60
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

    .line 63
    .local p1, "rows":Ljava/util/List;, "Ljava/util/List<[Lcom/itextpdf/layout/renderer/CellRenderer;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/layout/renderer/TableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;I)V

    .line 64
    return-void
.end method


# virtual methods
.method protected applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 2
    .param p1, "occupiedBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "reverse"    # Z

    .line 96
    if-eqz p3, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->getMaxBottomWidth()F

    move-result v1

    mul-float/2addr v0, v1

    .line 97
    .local v0, "bottomTableBorderWidth":F
    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 98
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 99
    return-object p0
.end method

.method protected applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 1
    .param p1, "occupiedBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "isEmpty"    # Z
    .param p4, "force"    # Z
    .param p5, "reverse"    # Z

    .line 91
    invoke-virtual {p0, p1, p2, p5}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    move-result-object v0

    return-object v0
.end method

.method protected applyCellIndents(Lcom/itextpdf/kernel/geom/Rectangle;FFFFZ)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 6
    .param p1, "box"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "topIndent"    # F
    .param p3, "rightIndent"    # F
    .param p4, "bottomIndent"    # F
    .param p5, "leftIndent"    # F
    .param p6, "reverse"    # Z

    .line 139
    const/4 v5, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 140
    return-object p0
.end method

.method protected applyLeftAndRightTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 6
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "reverse"    # Z

    .line 104
    if-eqz p1, :cond_0

    .line 105
    const/4 v1, 0x0

    iget v2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->rightBorderMaxWidth:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->leftBorderMaxWidth:F

    move-object v0, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 108
    :cond_0
    return-object p0
.end method

.method protected applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 2
    .param p1, "occupiedBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "reverse"    # Z

    .line 83
    if-eqz p3, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->getMaxTopWidth()F

    move-result v1

    mul-float/2addr v0, v1

    .line 84
    .local v0, "topIndent":F
    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 85
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 86
    return-object p0
.end method

.method protected applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 1
    .param p1, "occupiedBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "isEmpty"    # Z
    .param p4, "force"    # Z
    .param p5, "reverse"    # Z

    .line 78
    invoke-virtual {p0, p1, p2, p5}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    move-result-object v0

    return-object v0
.end method

.method protected buildBordersArrays(Lcom/itextpdf/layout/renderer/CellRenderer;II[I)V
    .locals 16
    .param p1, "cell"    # Lcom/itextpdf/layout/renderer/CellRenderer;
    .param p2, "row"    # I
    .param p3, "col"    # I
    .param p4, "rowspansToDeduct"    # [I

    .line 196
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 197
    .local v9, "colspan":I
    const/16 v0, 0x3c

    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 198
    .local v0, "rowspan":I
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Cell;->getCol()I

    move-result v10

    .line 199
    .local v10, "colN":I
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v11

    .line 202
    .local v11, "cellBorders":[Lcom/itextpdf/layout/borders/Border;
    add-int/lit8 v1, v8, 0x1

    sub-int/2addr v1, v0

    if-gez v1, :cond_0

    .line 203
    add-int/lit8 v0, v8, 0x1

    move v12, v0

    goto :goto_0

    .line 202
    :cond_0
    move v12, v0

    .line 207
    .end local v0    # "rowspan":I
    .local v12, "rowspan":I
    :goto_0
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_1
    const/4 v14, 0x2

    if-ge v13, v9, :cond_1

    .line 208
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->horizontalBorders:Ljava/util/List;

    add-int/lit8 v0, v8, 0x1

    sub-int/2addr v0, v12

    mul-int/lit8 v2, v0, 0x2

    add-int v3, v10, v13

    const/4 v0, 0x0

    aget-object v4, v11, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->checkAndReplaceBorderInArray(Ljava/util/List;IILcom/itextpdf/layout/borders/Border;Z)Z

    .line 207
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 211
    .end local v13    # "i":I
    :cond_1
    const/4 v0, 0x0

    move v13, v0

    .restart local v13    # "i":I
    :goto_2
    const/4 v15, 0x1

    if-ge v13, v9, :cond_2

    .line 212
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->horizontalBorders:Ljava/util/List;

    mul-int/lit8 v0, v8, 0x2

    add-int/lit8 v2, v0, 0x1

    add-int v3, v10, v13

    aget-object v4, v11, v14

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->checkAndReplaceBorderInArray(Ljava/util/List;IILcom/itextpdf/layout/borders/Border;Z)Z

    .line 211
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 215
    .end local v13    # "i":I
    :cond_2
    sub-int v0, v8, v12

    add-int/2addr v0, v15

    move v13, v0

    .local v13, "j":I
    :goto_3
    if-gt v13, v8, :cond_3

    .line 216
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->verticalBorders:Ljava/util/List;

    mul-int/lit8 v2, v10, 0x2

    const/4 v0, 0x3

    aget-object v4, v11, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v3, v13

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->checkAndReplaceBorderInArray(Ljava/util/List;IILcom/itextpdf/layout/borders/Border;Z)Z

    .line 215
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 219
    .end local v13    # "j":I
    :cond_3
    sub-int v0, v8, v12

    add-int/2addr v0, v15

    move v13, v0

    .local v13, "i":I
    :goto_4
    if-gt v13, v8, :cond_4

    .line 220
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->verticalBorders:Ljava/util/List;

    add-int v0, v10, v9

    mul-int/2addr v0, v14

    add-int/lit8 v2, v0, -0x1

    aget-object v4, v11, v15

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v3, v13

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->checkAndReplaceBorderInArray(Ljava/util/List;IILcom/itextpdf/layout/borders/Border;Z)Z

    .line 219
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 222
    .end local v13    # "i":I
    :cond_4
    return-void
.end method

.method protected checkAndReplaceBorderInArray(Ljava/util/List;IILcom/itextpdf/layout/borders/Border;Z)Z
    .locals 4
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

    .line 230
    .local p1, "borderArray":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 247
    .local v0, "borders":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/borders/Border;

    .line 248
    .local v1, "neighbour":Lcom/itextpdf/layout/borders/Border;
    if-nez v1, :cond_0

    .line 249
    invoke-interface {v0, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 251
    :cond_0
    const-class v2, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 252
    .local v2, "logger":Lorg/slf4j/Logger;
    const-string v3, "Unexpected behaviour during table row collapsing. Calculated rowspan was less then 1."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 255
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method protected collapseTableWithFooter(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0
    .param p1, "footerBordersHandler"    # Lcom/itextpdf/layout/renderer/TableBorders;
    .param p2, "hasContent"    # Z

    .line 124
    return-object p0
.end method

.method protected collapseTableWithHeader(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0
    .param p1, "headerBordersHandler"    # Lcom/itextpdf/layout/renderer/TableBorders;
    .param p2, "updateBordersHandler"    # Z

    .line 129
    return-object p0
.end method

.method protected drawHorizontalBorder(IFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;[F)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0
    .param p1, "i"    # I
    .param p2, "startX"    # F
    .param p3, "y1"    # F
    .param p4, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p5, "countedColumnWidth"    # [F

    .line 68
    return-object p0
.end method

.method protected drawVerticalBorder(IFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Ljava/util/List;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0
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

    .line 73
    .local p5, "heights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    return-object p0
.end method

.method protected fixHeaderOccupiedArea(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0
    .param p1, "occupiedBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 134
    return-object p0
.end method

.method public getCellBorderIndents(IIII)[F
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "rowspan"    # I
    .param p4, "colspan"    # I

    .line 192
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected getCellVerticalAddition([F)F
    .locals 1
    .param p1, "indents"    # [F

    .line 155
    const/4 v0, 0x0

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

    .line 282
    iget v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->startRow:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalBorder(I)Ljava/util/List;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->horizontalBorders:Ljava/util/List;

    iget v1, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->largeTableIndexOffset:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
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

    .line 287
    iget v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->finishRow:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaxBottomWidth()F
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getMaxLeftWidth()F
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getMaxRightWidth()F
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getMaxTopWidth()F
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getVerticalBorder(I)Ljava/util/List;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method protected initializeBorders()Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 5

    .line 262
    :goto_0
    iget v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->numberOfColumns:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-le v0, v2, :cond_1

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v0, "tempBorders":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v2, v4, :cond_0

    .line 265
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    .end local v0    # "tempBorders":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->horizontalBorders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .restart local v0    # "tempBorders":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    :goto_3
    iget v2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->numberOfColumns:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v2, v4, :cond_2

    .line 273
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 275
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->horizontalBorders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 277
    .end local v0    # "tempBorders":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    :cond_3
    return-object p0
.end method

.method protected skipFooter([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0
    .param p1, "borders"    # [Lcom/itextpdf/layout/borders/Border;

    .line 113
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->setTableBoundingBorders([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 114
    return-object p0
.end method

.method protected skipHeader([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0
    .param p1, "borders"    # [Lcom/itextpdf/layout/borders/Border;

    .line 119
    return-object p0
.end method

.method protected updateBordersOnNewPage(ZZLcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/layout/renderer/TableRenderer;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 3
    .param p1, "isOriginalNonSplitRenderer"    # Z
    .param p2, "isFooterOrHeader"    # Z
    .param p3, "currentRenderer"    # Lcom/itextpdf/layout/renderer/TableRenderer;
    .param p4, "headerRenderer"    # Lcom/itextpdf/layout/renderer/TableRenderer;
    .param p5, "footerRenderer"    # Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 160
    if-nez p2, :cond_0

    .line 162
    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->rows:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->processAllBordersAndEmptyRows()Lcom/itextpdf/layout/renderer/TableBorders;

    .line 165
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->getMaxRightWidth()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->rightBorderMaxWidth:F

    .line 166
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->getMaxLeftWidth()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->leftBorderMaxWidth:F

    .line 170
    :cond_0
    if-eqz p5, :cond_1

    .line 171
    iget-object v0, p5, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxRightWidth()F

    move-result v0

    .line 172
    .local v0, "rightFooterBorderWidth":F
    iget-object v1, p5, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxLeftWidth()F

    move-result v1

    .line 174
    .local v1, "leftFooterBorderWidth":F
    iget v2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->leftBorderMaxWidth:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->leftBorderMaxWidth:F

    .line 175
    iget v2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->rightBorderMaxWidth:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->rightBorderMaxWidth:F

    .line 178
    .end local v0    # "rightFooterBorderWidth":F
    .end local v1    # "leftFooterBorderWidth":F
    :cond_1
    if-eqz p4, :cond_2

    .line 179
    iget-object v0, p4, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxRightWidth()F

    move-result v0

    .line 180
    .local v0, "rightHeaderBorderWidth":F
    iget-object v1, p4, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxLeftWidth()F

    move-result v1

    .line 182
    .local v1, "leftHeaderBorderWidth":F
    iget v2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->leftBorderMaxWidth:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->leftBorderMaxWidth:F

    .line 183
    iget v2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->rightBorderMaxWidth:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->rightBorderMaxWidth:F

    .line 186
    .end local v0    # "rightHeaderBorderWidth":F
    .end local v1    # "leftHeaderBorderWidth":F
    :cond_2
    return-object p0
.end method
