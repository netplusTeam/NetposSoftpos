.class Lcom/github/barteksc/pdfviewer/PagesLoader;
.super Ljava/lang/Object;
.source "PagesLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/PagesLoader$GridSize;,
        Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;,
        Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;
    }
.end annotation


# instance fields
.field private cacheOrder:I

.field private pageRelativePartHeight:F

.field private pageRelativePartWidth:F

.field private partRenderHeight:F

.field private partRenderWidth:F

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private final preloadOffset:I

.field private final thumbnailRect:Landroid/graphics/RectF;

.field private xOffset:F

.field private yOffset:F


# direct methods
.method constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 3
    .param p1, "pdfView"    # Lcom/github/barteksc/pdfviewer/PDFView;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailRect:Landroid/graphics/RectF;

    .line 95
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 96
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/github/barteksc/pdfviewer/util/Constants;->PRELOAD_OFFSET:I

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/util/Util;->getDP(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->preloadOffset:I

    .line 97
    return-void
.end method

.method private calculatePartSize(Lcom/github/barteksc/pdfviewer/PagesLoader$GridSize;)V
    .locals 2
    .param p1, "grid"    # Lcom/github/barteksc/pdfviewer/PagesLoader$GridSize;

    .line 110
    iget v0, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$GridSize;->cols:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartWidth:F

    .line 111
    iget v0, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$GridSize;->rows:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartHeight:F

    .line 112
    sget v0, Lcom/github/barteksc/pdfviewer/util/Constants;->PART_SIZE:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartWidth:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->partRenderWidth:F

    .line 113
    sget v0, Lcom/github/barteksc/pdfviewer/util/Constants;->PART_SIZE:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartHeight:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->partRenderHeight:F

    .line 114
    return-void
.end method

.method private getPageColsRows(Lcom/github/barteksc/pdfviewer/PagesLoader$GridSize;I)V
    .locals 7
    .param p1, "grid"    # Lcom/github/barteksc/pdfviewer/PagesLoader$GridSize;
    .param p2, "pageIndex"    # I

    .line 100
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v0, p2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageSize(I)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v0

    .line 101
    .local v0, "size":Lcom/shockwave/pdfium/util/SizeF;
    invoke-virtual {v0}, Lcom/shockwave/pdfium/util/SizeF;->getWidth()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    .line 102
    .local v1, "ratioX":F
    invoke-virtual {v0}, Lcom/shockwave/pdfium/util/SizeF;->getHeight()F

    move-result v3

    div-float v3, v2, v3

    .line 103
    .local v3, "ratioY":F
    sget v4, Lcom/github/barteksc/pdfviewer/util/Constants;->PART_SIZE:F

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v5}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v5

    div-float/2addr v4, v5

    .line 104
    .local v4, "partHeight":F
    sget v5, Lcom/github/barteksc/pdfviewer/util/Constants;->PART_SIZE:F

    mul-float/2addr v5, v1

    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v6}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v6

    div-float/2addr v5, v6

    .line 105
    .local v5, "partWidth":F
    div-float v6, v2, v4

    invoke-static {v6}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->ceil(F)I

    move-result v6

    iput v6, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$GridSize;->rows:I

    .line 106
    div-float/2addr v2, v5

    invoke-static {v2}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->ceil(F)I

    move-result v2

    iput v2, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$GridSize;->cols:I

    .line 107
    return-void
.end method

.method private getRenderRangeList(FFFF)Ljava/util/List;
    .locals 27
    .param p1, "firstXOffset"    # F
    .param p2, "firstYOffset"    # F
    .param p3, "lastXOffset"    # F
    .param p4, "lastYOffset"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Ljava/util/List<",
            "Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;",
            ">;"
        }
    .end annotation

    .line 122
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v2, v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(FF)F

    move-result v3

    neg-float v3, v3

    .line 123
    .local v3, "fixedFirstXOffset":F
    move/from16 v4, p2

    invoke-static {v4, v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(FF)F

    move-result v5

    neg-float v5, v5

    .line 125
    .local v5, "fixedFirstYOffset":F
    move/from16 v6, p3

    invoke-static {v6, v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(FF)F

    move-result v7

    neg-float v7, v7

    .line 126
    .local v7, "fixedLastXOffset":F
    move/from16 v8, p4

    invoke-static {v8, v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(FF)F

    move-result v9

    neg-float v9, v9

    .line 128
    .local v9, "fixedLastYOffset":F
    iget-object v10, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v10}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v10

    if-eqz v10, :cond_0

    move v10, v5

    goto :goto_0

    :cond_0
    move v10, v3

    .line 129
    .local v10, "offsetFirst":F
    :goto_0
    iget-object v11, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v11}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v9

    goto :goto_1

    :cond_1
    move v11, v7

    .line 131
    .local v11, "offsetLast":F
    :goto_1
    iget-object v12, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v12, v12, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget-object v13, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v13}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v13

    invoke-virtual {v12, v10, v13}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageAtOffset(FF)I

    move-result v12

    .line 132
    .local v12, "firstPage":I
    iget-object v13, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v13, v13, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget-object v14, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v14}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v14

    invoke-virtual {v13, v11, v14}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageAtOffset(FF)I

    move-result v13

    .line 133
    .local v13, "lastPage":I
    sub-int v14, v13, v12

    const/4 v15, 0x1

    add-int/2addr v14, v15

    .line 135
    .local v14, "pageCount":I
    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v17, v16

    .line 137
    .local v17, "renderRanges":Ljava/util/List;, "Ljava/util/List<Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;>;"
    move/from16 v16, v12

    move/from16 v1, v16

    .local v1, "page":I
    :goto_2
    if-gt v1, v13, :cond_9

    .line 138
    new-instance v15, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;

    invoke-direct {v15, v0}, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;-><init>(Lcom/github/barteksc/pdfviewer/PagesLoader;)V

    .line 139
    .local v15, "range":Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;
    iput v1, v15, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->page:I

    .line 142
    if-ne v1, v12, :cond_4

    .line 143
    move/from16 v18, v3

    .line 144
    .local v18, "pageFirstXOffset":F
    move/from16 v19, v5

    .line 145
    .local v19, "pageFirstYOffset":F
    const/4 v2, 0x1

    if-ne v14, v2, :cond_2

    .line 146
    move/from16 v16, v7

    .line 147
    .local v16, "pageLastXOffset":F
    move/from16 v20, v9

    move/from16 v6, v16

    .local v20, "pageLastYOffset":F
    goto/16 :goto_5

    .line 149
    .end local v16    # "pageLastXOffset":F
    .end local v20    # "pageLastYOffset":F
    :cond_2
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v2, v2, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget-object v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v4

    invoke-virtual {v2, v1, v4}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v2

    .line 150
    .local v2, "pageOffset":F
    iget-object v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v4, v4, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget-object v6, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v6}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v6

    invoke-virtual {v4, v1, v6}, Lcom/github/barteksc/pdfviewer/PdfFile;->getScaledPageSize(IF)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v4

    .line 151
    .local v4, "pageSize":Lcom/shockwave/pdfium/util/SizeF;
    iget-object v6, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v6}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 152
    move v6, v7

    .line 153
    .local v6, "pageLastXOffset":F
    invoke-virtual {v4}, Lcom/shockwave/pdfium/util/SizeF;->getHeight()F

    move-result v20

    add-float v20, v2, v20

    move/from16 v26, v20

    move/from16 v20, v6

    move/from16 v6, v26

    .restart local v20    # "pageLastYOffset":F
    goto :goto_3

    .line 155
    .end local v6    # "pageLastXOffset":F
    .end local v20    # "pageLastYOffset":F
    :cond_3
    move v6, v9

    .line 156
    .local v6, "pageLastYOffset":F
    invoke-virtual {v4}, Lcom/shockwave/pdfium/util/SizeF;->getWidth()F

    move-result v20

    add-float v20, v2, v20

    .line 158
    .end local v2    # "pageOffset":F
    .end local v4    # "pageSize":Lcom/shockwave/pdfium/util/SizeF;
    .local v20, "pageLastXOffset":F
    :goto_3
    move/from16 v26, v20

    move/from16 v20, v6

    move/from16 v6, v26

    goto/16 :goto_5

    .line 159
    .end local v6    # "pageLastYOffset":F
    .end local v18    # "pageFirstXOffset":F
    .end local v19    # "pageFirstYOffset":F
    .end local v20    # "pageLastXOffset":F
    :cond_4
    if-ne v1, v13, :cond_6

    .line 160
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v2, v2, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget-object v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v4

    invoke-virtual {v2, v1, v4}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v2

    .line 162
    .restart local v2    # "pageOffset":F
    iget-object v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 163
    move v4, v3

    .line 164
    .local v4, "pageFirstXOffset":F
    move v6, v2

    move/from16 v18, v4

    move/from16 v19, v6

    .local v6, "pageFirstYOffset":F
    goto :goto_4

    .line 166
    .end local v4    # "pageFirstXOffset":F
    .end local v6    # "pageFirstYOffset":F
    :cond_5
    move v4, v5

    .line 167
    .local v4, "pageFirstYOffset":F
    move v6, v2

    move/from16 v19, v4

    move/from16 v18, v6

    .line 170
    .end local v4    # "pageFirstYOffset":F
    .restart local v18    # "pageFirstXOffset":F
    .restart local v19    # "pageFirstYOffset":F
    :goto_4
    move v4, v7

    .line 171
    .local v4, "pageLastXOffset":F
    move/from16 v20, v9

    .line 173
    .end local v2    # "pageOffset":F
    .local v20, "pageLastYOffset":F
    move v6, v4

    goto :goto_5

    .line 174
    .end local v4    # "pageLastXOffset":F
    .end local v18    # "pageFirstXOffset":F
    .end local v19    # "pageFirstYOffset":F
    .end local v20    # "pageLastYOffset":F
    :cond_6
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v2, v2, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget-object v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v4

    invoke-virtual {v2, v1, v4}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v2

    .line 175
    .restart local v2    # "pageOffset":F
    iget-object v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v4, v4, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget-object v6, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v6}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v6

    invoke-virtual {v4, v1, v6}, Lcom/github/barteksc/pdfviewer/PdfFile;->getScaledPageSize(IF)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v4

    .line 176
    .local v4, "pageSize":Lcom/shockwave/pdfium/util/SizeF;
    iget-object v6, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v6}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 177
    move/from16 v18, v3

    .line 178
    .restart local v18    # "pageFirstXOffset":F
    move/from16 v19, v2

    .line 180
    .restart local v19    # "pageFirstYOffset":F
    move v6, v7

    .line 181
    .local v6, "pageLastXOffset":F
    invoke-virtual {v4}, Lcom/shockwave/pdfium/util/SizeF;->getHeight()F

    move-result v20

    add-float v20, v2, v20

    .restart local v20    # "pageLastYOffset":F
    goto :goto_5

    .line 183
    .end local v6    # "pageLastXOffset":F
    .end local v18    # "pageFirstXOffset":F
    .end local v19    # "pageFirstYOffset":F
    .end local v20    # "pageLastYOffset":F
    :cond_7
    move/from16 v18, v2

    .line 184
    .restart local v18    # "pageFirstXOffset":F
    move/from16 v19, v5

    .line 186
    .restart local v19    # "pageFirstYOffset":F
    invoke-virtual {v4}, Lcom/shockwave/pdfium/util/SizeF;->getWidth()F

    move-result v6

    add-float/2addr v6, v2

    .line 187
    .restart local v6    # "pageLastXOffset":F
    move/from16 v20, v9

    .line 191
    .end local v2    # "pageOffset":F
    .end local v4    # "pageSize":Lcom/shockwave/pdfium/util/SizeF;
    .restart local v20    # "pageLastYOffset":F
    :goto_5
    iget-object v2, v15, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->gridSize:Lcom/github/barteksc/pdfviewer/PagesLoader$GridSize;

    iget v4, v15, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->page:I

    invoke-direct {v0, v2, v4}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageColsRows(Lcom/github/barteksc/pdfviewer/PagesLoader$GridSize;I)V

    .line 192
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v2, v2, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v4, v15, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->page:I

    move/from16 v21, v3

    .end local v3    # "fixedFirstXOffset":F
    .local v21, "fixedFirstXOffset":F
    iget-object v3, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/github/barteksc/pdfviewer/PdfFile;->getScaledPageSize(IF)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v2

    .line 193
    .local v2, "scaledPageSize":Lcom/shockwave/pdfium/util/SizeF;
    invoke-virtual {v2}, Lcom/shockwave/pdfium/util/SizeF;->getHeight()F

    move-result v3

    iget-object v4, v15, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->gridSize:Lcom/github/barteksc/pdfviewer/PagesLoader$GridSize;

    iget v4, v4, Lcom/github/barteksc/pdfviewer/PagesLoader$GridSize;->rows:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 194
    .local v3, "rowHeight":F
    invoke-virtual {v2}, Lcom/shockwave/pdfium/util/SizeF;->getWidth()F

    move-result v4

    move-object/from16 v22, v2

    .end local v2    # "scaledPageSize":Lcom/shockwave/pdfium/util/SizeF;
    .local v22, "scaledPageSize":Lcom/shockwave/pdfium/util/SizeF;
    iget-object v2, v15, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->gridSize:Lcom/github/barteksc/pdfviewer/PagesLoader$GridSize;

    iget v2, v2, Lcom/github/barteksc/pdfviewer/PagesLoader$GridSize;->cols:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    .line 204
    .local v4, "colWidth":F
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v2, v2, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    move/from16 v23, v5

    .end local v5    # "fixedFirstYOffset":F
    .local v23, "fixedFirstYOffset":F
    iget-object v5, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v5}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v5

    invoke-virtual {v2, v1, v5}, Lcom/github/barteksc/pdfviewer/PdfFile;->getSecondaryPageOffset(IF)F

    move-result v2

    .line 207
    .local v2, "secondaryOffset":F
    iget-object v5, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v5}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 208
    iget-object v5, v15, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->leftTop:Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move/from16 v24, v7

    .end local v7    # "fixedLastXOffset":F
    .local v24, "fixedLastXOffset":F
    iget-object v7, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v7, v7, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v8, v15, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->page:I

    move/from16 v25, v9

    .end local v9    # "fixedLastYOffset":F
    .local v25, "fixedLastYOffset":F
    iget-object v9, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v9}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v7

    sub-float v7, v19, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float/2addr v7, v3

    invoke-static {v7}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v7

    iput v7, v5, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    .line 209
    iget-object v5, v15, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->leftTop:Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    sub-float v7, v18, v2

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->min(FF)F

    move-result v7

    div-float/2addr v7, v4

    invoke-static {v7}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v7

    iput v7, v5, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    .line 211
    iget-object v5, v15, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->rightBottom:Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    iget-object v7, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v7, v7, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v8, v15, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->page:I

    iget-object v9, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v9}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v7

    sub-float v7, v20, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float/2addr v7, v3

    invoke-static {v7}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->ceil(F)I

    move-result v7

    iput v7, v5, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    .line 212
    iget-object v5, v15, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->rightBottom:Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    sub-float v7, v6, v2

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->min(FF)F

    move-result v7

    div-float/2addr v7, v4

    invoke-static {v7}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v7

    iput v7, v5, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    const/4 v8, 0x0

    goto :goto_6

    .line 214
    .end local v24    # "fixedLastXOffset":F
    .end local v25    # "fixedLastYOffset":F
    .restart local v7    # "fixedLastXOffset":F
    .restart local v9    # "fixedLastYOffset":F
    :cond_8
    move/from16 v24, v7

    move/from16 v25, v9

    .end local v7    # "fixedLastXOffset":F
    .end local v9    # "fixedLastYOffset":F
    .restart local v24    # "fixedLastXOffset":F
    .restart local v25    # "fixedLastYOffset":F
    iget-object v5, v15, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->leftTop:Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    iget-object v7, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v7, v7, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v8, v15, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->page:I

    iget-object v9, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v9}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v7

    sub-float v7, v18, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float/2addr v7, v4

    invoke-static {v7}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v7

    iput v7, v5, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    .line 215
    iget-object v5, v15, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->leftTop:Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    sub-float v7, v19, v2

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->min(FF)F

    move-result v7

    div-float/2addr v7, v3

    invoke-static {v7}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v7

    iput v7, v5, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    .line 217
    iget-object v5, v15, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->rightBottom:Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    iget-object v7, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v7, v7, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v8, v15, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->page:I

    iget-object v9, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v9}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v7

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float/2addr v7, v4

    invoke-static {v7}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v7

    iput v7, v5, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    .line 218
    iget-object v5, v15, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->rightBottom:Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    sub-float v7, v20, v2

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->min(FF)F

    move-result v7

    div-float/2addr v7, v3

    invoke-static {v7}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v7

    iput v7, v5, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    .line 221
    :goto_6
    move-object/from16 v5, v17

    .end local v17    # "renderRanges":Ljava/util/List;, "Ljava/util/List<Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;>;"
    .local v5, "renderRanges":Ljava/util/List;, "Ljava/util/List<Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;>;"
    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v2    # "secondaryOffset":F
    .end local v3    # "rowHeight":F
    .end local v4    # "colWidth":F
    .end local v6    # "pageLastXOffset":F
    .end local v15    # "range":Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;
    .end local v18    # "pageFirstXOffset":F
    .end local v19    # "pageFirstYOffset":F
    .end local v20    # "pageLastYOffset":F
    .end local v22    # "scaledPageSize":Lcom/shockwave/pdfium/util/SizeF;
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v3, v21

    move/from16 v5, v23

    move/from16 v7, v24

    move/from16 v9, v25

    const/4 v15, 0x1

    goto/16 :goto_2

    .end local v21    # "fixedFirstXOffset":F
    .end local v23    # "fixedFirstYOffset":F
    .end local v24    # "fixedLastXOffset":F
    .end local v25    # "fixedLastYOffset":F
    .local v3, "fixedFirstXOffset":F
    .local v5, "fixedFirstYOffset":F
    .restart local v7    # "fixedLastXOffset":F
    .restart local v9    # "fixedLastYOffset":F
    .restart local v17    # "renderRanges":Ljava/util/List;, "Ljava/util/List<Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;>;"
    :cond_9
    move/from16 v23, v5

    move-object/from16 v5, v17

    .line 224
    .end local v1    # "page":I
    .end local v17    # "renderRanges":Ljava/util/List;, "Ljava/util/List<Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;>;"
    .local v5, "renderRanges":Ljava/util/List;, "Ljava/util/List<Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;>;"
    .restart local v23    # "fixedFirstYOffset":F
    return-object v5
.end method

.method private loadCell(IIIFF)Z
    .locals 21
    .param p1, "page"    # I
    .param p2, "row"    # I
    .param p3, "col"    # I
    .param p4, "pageRelativePartWidth"    # F
    .param p5, "pageRelativePartHeight"    # F

    .line 269
    move-object/from16 v0, p0

    move/from16 v1, p3

    int-to-float v2, v1

    mul-float v2, v2, p4

    .line 270
    .local v2, "relX":F
    move/from16 v3, p2

    int-to-float v4, v3

    mul-float v4, v4, p5

    .line 271
    .local v4, "relY":F
    move/from16 v5, p4

    .line 272
    .local v5, "relWidth":F
    move/from16 v6, p5

    .line 274
    .local v6, "relHeight":F
    iget v7, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->partRenderWidth:F

    .line 275
    .local v7, "renderWidth":F
    iget v8, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->partRenderHeight:F

    .line 276
    .local v8, "renderHeight":F
    add-float v9, v2, v5

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    .line 277
    sub-float v5, v10, v2

    .line 279
    :cond_0
    add-float v9, v4, v6

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    .line 280
    sub-float v6, v10, v4

    .line 282
    :cond_1
    mul-float/2addr v7, v5

    .line 283
    mul-float/2addr v8, v6

    .line 284
    new-instance v9, Landroid/graphics/RectF;

    add-float v10, v2, v5

    add-float v11, v4, v6

    invoke-direct {v9, v2, v4, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v15, v9

    .line 286
    .local v15, "pageRelativeBounds":Landroid/graphics/RectF;
    const/4 v9, 0x0

    cmpl-float v10, v7, v9

    if-lez v10, :cond_3

    cmpl-float v9, v8, v9

    if-lez v9, :cond_3

    .line 287
    iget-object v9, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v9, v9, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    iget v10, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    move/from16 v14, p1

    invoke-virtual {v9, v14, v15, v10}, Lcom/github/barteksc/pdfviewer/CacheManager;->upPartIfContained(ILandroid/graphics/RectF;I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 288
    iget-object v9, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v9, v9, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    const/16 v16, 0x0

    iget v13, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    iget-object v10, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 289
    invoke-virtual {v10}, Lcom/github/barteksc/pdfviewer/PDFView;->isBestQuality()Z

    move-result v17

    iget-object v10, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 290
    invoke-virtual {v10}, Lcom/github/barteksc/pdfviewer/PDFView;->isAnnotationRendering()Z

    move-result v18

    .line 288
    move/from16 v10, p1

    move v11, v7

    move v12, v8

    move/from16 v19, v13

    move-object v13, v15

    move/from16 v14, v16

    move-object/from16 v20, v15

    .end local v15    # "pageRelativeBounds":Landroid/graphics/RectF;
    .local v20, "pageRelativeBounds":Landroid/graphics/RectF;
    move/from16 v15, v19

    move/from16 v16, v17

    move/from16 v17, v18

    invoke-virtual/range {v9 .. v17}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->addRenderingTask(IFFLandroid/graphics/RectF;ZIZZ)V

    goto :goto_0

    .line 287
    .end local v20    # "pageRelativeBounds":Landroid/graphics/RectF;
    .restart local v15    # "pageRelativeBounds":Landroid/graphics/RectF;
    :cond_2
    move-object/from16 v20, v15

    .line 293
    .end local v15    # "pageRelativeBounds":Landroid/graphics/RectF;
    .restart local v20    # "pageRelativeBounds":Landroid/graphics/RectF;
    :goto_0
    iget v9, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    const/4 v10, 0x1

    add-int/2addr v9, v10

    iput v9, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    .line 294
    return v10

    .line 286
    .end local v20    # "pageRelativeBounds":Landroid/graphics/RectF;
    .restart local v15    # "pageRelativeBounds":Landroid/graphics/RectF;
    :cond_3
    move-object/from16 v20, v15

    .line 296
    .end local v15    # "pageRelativeBounds":Landroid/graphics/RectF;
    .restart local v20    # "pageRelativeBounds":Landroid/graphics/RectF;
    const/4 v9, 0x0

    return v9
.end method

.method private loadPage(IIIIII)I
    .locals 9
    .param p1, "page"    # I
    .param p2, "firstRow"    # I
    .param p3, "lastRow"    # I
    .param p4, "firstCol"    # I
    .param p5, "lastCol"    # I
    .param p6, "nbOfPartsLoadable"    # I

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "loaded":I
    move v1, p2

    move v7, v1

    .local v7, "row":I
    :goto_0
    if-gt v7, p3, :cond_3

    .line 255
    move v1, p4

    move v8, v1

    .local v8, "col":I
    :goto_1
    if-gt v8, p5, :cond_2

    .line 256
    iget v5, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartWidth:F

    iget v6, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartHeight:F

    move-object v1, p0

    move v2, p1

    move v3, v7

    move v4, v8

    invoke-direct/range {v1 .. v6}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadCell(IIIFF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    add-int/lit8 v0, v0, 0x1

    .line 259
    :cond_0
    if-lt v0, p6, :cond_1

    .line 260
    return v0

    .line 255
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 254
    .end local v8    # "col":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 264
    .end local v7    # "row":I
    :cond_3
    return v0
.end method

.method private loadThumbnail(I)V
    .locals 12
    .param p1, "page"    # I

    .line 300
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageSize(I)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v0

    .line 301
    .local v0, "pageSize":Lcom/shockwave/pdfium/util/SizeF;
    invoke-virtual {v0}, Lcom/shockwave/pdfium/util/SizeF;->getWidth()F

    move-result v1

    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants;->THUMBNAIL_RATIO:F

    mul-float/2addr v1, v2

    .line 302
    .local v1, "thumbnailWidth":F
    invoke-virtual {v0}, Lcom/shockwave/pdfium/util/SizeF;->getHeight()F

    move-result v2

    sget v3, Lcom/github/barteksc/pdfviewer/util/Constants;->THUMBNAIL_RATIO:F

    mul-float/2addr v2, v3

    .line 303
    .local v2, "thumbnailHeight":F
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v3, v3, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailRect:Landroid/graphics/RectF;

    invoke-virtual {v3, p1, v4}, Lcom/github/barteksc/pdfviewer/CacheManager;->containsThumbnail(ILandroid/graphics/RectF;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 304
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v3, v3, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    iget-object v7, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailRect:Landroid/graphics/RectF;

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 306
    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->isBestQuality()Z

    move-result v10

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->isAnnotationRendering()Z

    move-result v11

    .line 304
    move v4, p1

    move v5, v1

    move v6, v2

    invoke-virtual/range {v3 .. v11}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->addRenderingTask(IFFLandroid/graphics/RectF;ZIZZ)V

    .line 308
    :cond_0
    return-void
.end method

.method private loadVisible()V
    .locals 18

    .line 228
    move-object/from16 v7, p0

    const/4 v0, 0x0

    .line 229
    .local v0, "parts":I
    iget v1, v7, Lcom/github/barteksc/pdfviewer/PagesLoader;->preloadOffset:I

    int-to-float v8, v1

    .line 230
    .local v8, "scaledPreloadOffset":F
    iget v1, v7, Lcom/github/barteksc/pdfviewer/PagesLoader;->xOffset:F

    neg-float v2, v1

    add-float v9, v2, v8

    .line 231
    .local v9, "firstXOffset":F
    neg-float v1, v1

    iget-object v2, v7, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float v10, v1, v8

    .line 232
    .local v10, "lastXOffset":F
    iget v1, v7, Lcom/github/barteksc/pdfviewer/PagesLoader;->yOffset:F

    neg-float v2, v1

    add-float v11, v2, v8

    .line 233
    .local v11, "firstYOffset":F
    neg-float v1, v1

    iget-object v2, v7, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float v12, v1, v8

    .line 235
    .local v12, "lastYOffset":F
    invoke-direct {v7, v9, v11, v10, v12}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getRenderRangeList(FFFF)Ljava/util/List;

    move-result-object v13

    .line 237
    .local v13, "rangeList":Ljava/util/List;, "Ljava/util/List<Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;

    .line 238
    .local v2, "range":Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;
    iget v3, v2, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->page:I

    invoke-direct {v7, v3}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadThumbnail(I)V

    .line 239
    .end local v2    # "range":Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;
    goto :goto_0

    .line 241
    :cond_0
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v0

    .end local v0    # "parts":I
    .local v15, "parts":I
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;

    .line 242
    .local v6, "range":Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;
    iget-object v0, v6, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->gridSize:Lcom/github/barteksc/pdfviewer/PagesLoader$GridSize;

    invoke-direct {v7, v0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->calculatePartSize(Lcom/github/barteksc/pdfviewer/PagesLoader$GridSize;)V

    .line 243
    iget v1, v6, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->page:I

    iget-object v0, v6, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->leftTop:Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    iget v2, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    iget-object v0, v6, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->rightBottom:Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    iget v3, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    iget-object v0, v6, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->leftTop:Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    iget v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    iget-object v0, v6, Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;->rightBottom:Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    iget v5, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    sget v0, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    sub-int v16, v0, v15

    move-object/from16 v0, p0

    move-object/from16 v17, v6

    .end local v6    # "range":Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;
    .local v17, "range":Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;
    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadPage(IIIIII)I

    move-result v0

    add-int/2addr v15, v0

    .line 244
    sget v0, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-lt v15, v0, :cond_1

    .line 245
    goto :goto_2

    .line 247
    .end local v17    # "range":Lcom/github/barteksc/pdfviewer/PagesLoader$RenderRange;
    :cond_1
    goto :goto_1

    .line 249
    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method loadPages()V
    .locals 2

    .line 311
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    .line 312
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(FF)F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->xOffset:F

    .line 313
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v0

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(FF)F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->yOffset:F

    .line 315
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadVisible()V

    .line 316
    return-void
.end method
