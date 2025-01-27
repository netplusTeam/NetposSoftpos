.class Lcom/github/barteksc/pdfviewer/DragPinchManager;
.super Ljava/lang/Object;
.source "DragPinchManager.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

.field private enabled:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private scaling:Z

.field private scrolling:Z


# direct methods
.method constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/AnimationManager;)V
    .locals 2
    .param p1, "pdfView"    # Lcom/github/barteksc/pdfviewer/PDFView;
    .param p2, "animationManager"    # Lcom/github/barteksc/pdfviewer/AnimationManager;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scrolling:Z

    .line 47
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scaling:Z

    .line 48
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->enabled:Z

    .line 51
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 52
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    .line 53
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->gestureDetector:Landroid/view/GestureDetector;

    .line 54
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 55
    invoke-virtual {p1, p0}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 56
    return-void
.end method

.method private checkDoPageFling(FF)Z
    .locals 5
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .line 313
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 314
    .local v0, "absX":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 315
    .local v1, "absY":F
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    goto :goto_0

    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    return v3
.end method

.method private checkLinkTapped(FF)Z
    .locals 21
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 89
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, v1, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    .line 90
    .local v1, "pdfFile":Lcom/github/barteksc/pdfviewer/PdfFile;
    const/4 v9, 0x0

    if-nez v1, :cond_0

    .line 91
    return v9

    .line 93
    :cond_0
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v2

    neg-float v2, v2

    add-float v15, v2, p1

    .line 94
    .local v15, "mappedX":F
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v2

    neg-float v2, v2

    add-float v14, v2, p2

    .line 95
    .local v14, "mappedY":F
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v14

    goto :goto_0

    :cond_1
    move v2, v15

    :goto_0
    iget-object v3, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageAtOffset(FF)I

    move-result v13

    .line 96
    .local v13, "page":I
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v2

    invoke-virtual {v1, v13, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getScaledPageSize(IF)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v17

    .line 98
    .local v17, "pageSize":Lcom/shockwave/pdfium/util/SizeF;
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v2

    invoke-virtual {v1, v13, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getSecondaryPageOffset(IF)F

    move-result v2

    float-to-int v2, v2

    .line 100
    .local v2, "pageX":I
    iget-object v3, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v3

    invoke-virtual {v1, v13, v3}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v3

    float-to-int v3, v3

    move/from16 v18, v2

    move/from16 v19, v3

    .local v3, "pageY":I
    goto :goto_1

    .line 102
    .end local v2    # "pageX":I
    .end local v3    # "pageY":I
    :cond_2
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v2

    invoke-virtual {v1, v13, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getSecondaryPageOffset(IF)F

    move-result v2

    float-to-int v3, v2

    .line 103
    .restart local v3    # "pageY":I
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v2

    invoke-virtual {v1, v13, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v2

    float-to-int v2, v2

    move/from16 v18, v2

    move/from16 v19, v3

    .line 105
    .end local v3    # "pageY":I
    .local v18, "pageX":I
    .local v19, "pageY":I
    :goto_1
    invoke-virtual {v1, v13}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageLinks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/shockwave/pdfium/PdfDocument$Link;

    .line 106
    .local v20, "link":Lcom/shockwave/pdfium/PdfDocument$Link;
    invoke-virtual/range {v17 .. v17}, Lcom/shockwave/pdfium/util/SizeF;->getWidth()F

    move-result v2

    float-to-int v6, v2

    .line 107
    invoke-virtual/range {v17 .. v17}, Lcom/shockwave/pdfium/util/SizeF;->getHeight()F

    move-result v2

    float-to-int v7, v2

    invoke-virtual/range {v20 .. v20}, Lcom/shockwave/pdfium/PdfDocument$Link;->getBounds()Landroid/graphics/RectF;

    move-result-object v8

    .line 106
    move-object v2, v1

    move v3, v13

    move/from16 v4, v18

    move/from16 v5, v19

    invoke-virtual/range {v2 .. v8}, Lcom/github/barteksc/pdfviewer/PdfFile;->mapRectToDevice(IIIIILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    .line 108
    .local v2, "mapped":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->sort()V

    .line 109
    invoke-virtual {v2, v15, v14}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 110
    iget-object v3, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v3, v3, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    new-instance v4, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;

    move-object v10, v4

    move/from16 v11, p1

    move/from16 v12, p2

    move v5, v13

    .end local v13    # "page":I
    .local v5, "page":I
    move v13, v15

    move v6, v14

    .end local v14    # "mappedY":F
    .local v6, "mappedY":F
    move v7, v15

    .end local v15    # "mappedX":F
    .local v7, "mappedX":F
    move-object v15, v2

    move-object/from16 v16, v20

    invoke-direct/range {v10 .. v16}, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;-><init>(FFFFLandroid/graphics/RectF;Lcom/shockwave/pdfium/PdfDocument$Link;)V

    invoke-virtual {v3, v4}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->callLinkHandler(Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;)V

    .line 111
    const/4 v3, 0x1

    return v3

    .line 109
    .end local v5    # "page":I
    .end local v6    # "mappedY":F
    .end local v7    # "mappedX":F
    .restart local v13    # "page":I
    .restart local v14    # "mappedY":F
    .restart local v15    # "mappedX":F
    :cond_3
    move v5, v13

    move v6, v14

    move v7, v15

    .line 113
    .end local v2    # "mapped":Landroid/graphics/RectF;
    .end local v13    # "page":I
    .end local v14    # "mappedY":F
    .end local v15    # "mappedX":F
    .end local v20    # "link":Lcom/shockwave/pdfium/PdfDocument$Link;
    .restart local v5    # "page":I
    .restart local v6    # "mappedY":F
    .restart local v7    # "mappedX":F
    goto :goto_2

    .line 114
    .end local v5    # "page":I
    .end local v6    # "mappedY":F
    .end local v7    # "mappedX":F
    .restart local v13    # "page":I
    .restart local v14    # "mappedY":F
    .restart local v15    # "mappedX":F
    :cond_4
    return v9
.end method

.method private hideHandle()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object v0

    .line 307
    .local v0, "scrollHandle":Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->shown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    invoke-interface {v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->hideDelayed()V

    .line 310
    :cond_0
    return-void
.end method

.method private onBoundedFling(FF)V
    .locals 20
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v1

    float-to-int v1, v1

    .line 236
    .local v1, "xOffset":I
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v2

    float-to-int v11, v2

    .line 238
    .local v11, "yOffset":I
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v12, v2, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    .line 240
    .local v12, "pdfFile":Lcom/github/barteksc/pdfviewer/PdfFile;
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentPage()I

    move-result v2

    iget-object v3, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v3

    invoke-virtual {v12, v2, v3}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v2

    neg-float v13, v2

    .line 241
    .local v13, "pageStart":F
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentPage()I

    move-result v2

    iget-object v3, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v3

    invoke-virtual {v12, v2, v3}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageLength(IF)F

    move-result v2

    sub-float v14, v13, v2

    .line 243
    .local v14, "pageEnd":F
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v12}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageWidth()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v2

    iget-object v3, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    .line 245
    .local v2, "minX":F
    iget-object v3, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v14

    .line 246
    .local v3, "minY":F
    const/4 v4, 0x0

    .line 247
    .local v4, "maxX":F
    move v5, v13

    move v15, v2

    move v10, v3

    move v9, v4

    move v8, v5

    .local v5, "maxY":F
    goto :goto_0

    .line 249
    .end local v2    # "minX":F
    .end local v3    # "minY":F
    .end local v4    # "maxX":F
    .end local v5    # "maxY":F
    :cond_0
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v14

    .line 250
    .restart local v2    # "minX":F
    iget-object v3, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v12}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v3

    iget-object v4, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    neg-float v3, v3

    .line 251
    .restart local v3    # "minY":F
    move v4, v13

    .line 252
    .restart local v4    # "maxX":F
    const/4 v5, 0x0

    move v15, v2

    move v10, v3

    move v9, v4

    move v8, v5

    .line 255
    .end local v2    # "minX":F
    .end local v3    # "minY":F
    .end local v4    # "maxX":F
    .local v8, "maxY":F
    .local v9, "maxX":F
    .local v10, "minY":F
    .local v15, "minX":F
    :goto_0
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    move/from16 v7, p1

    float-to-int v5, v7

    move/from16 v6, p2

    float-to-int v4, v6

    float-to-int v3, v15

    float-to-int v0, v9

    move/from16 v16, v9

    .end local v9    # "maxX":F
    .local v16, "maxX":F
    float-to-int v9, v10

    move/from16 v17, v10

    .end local v10    # "minY":F
    .local v17, "minY":F
    float-to-int v10, v8

    move/from16 v18, v3

    move v3, v1

    move/from16 v19, v4

    move v4, v11

    move/from16 v6, v19

    move/from16 v7, v18

    move/from16 v18, v8

    .end local v8    # "maxY":F
    .local v18, "maxY":F
    move v8, v0

    move/from16 v0, v16

    .end local v16    # "maxX":F
    .local v0, "maxX":F
    move/from16 v16, v17

    .end local v17    # "minY":F
    .local v16, "minY":F
    invoke-virtual/range {v2 .. v10}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startFlingAnimation(IIIIIIII)V

    .line 257
    return-void
.end method

.method private onScrollEnd(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 190
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    .line 191
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->hideHandle()V

    .line 192
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->isFlinging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->performPageSnap()V

    .line 195
    :cond_0
    return-void
.end method

.method private startPageFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 10
    .param p1, "downEvent"    # Landroid/view/MotionEvent;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 118
    invoke-direct {p0, p3, p4}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->checkDoPageFling(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 124
    cmpl-float v0, p4, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    move v0, v1

    .local v0, "direction":I
    goto :goto_2

    .line 126
    .end local v0    # "direction":I
    :cond_2
    cmpl-float v0, p3, v2

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    move v0, v1

    .line 129
    .restart local v0    # "direction":I
    :goto_2
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    :goto_3
    sub-float/2addr v1, v2

    .line 130
    .local v1, "delta":F
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v2

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v4

    mul-float/2addr v4, v1

    sub-float/2addr v2, v4

    .line 131
    .local v2, "offsetX":F
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v4

    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v5}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v5

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    .line 132
    .local v4, "offsetY":F
    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v5, v2, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->findFocusPage(FF)I

    move-result v5

    .line 133
    .local v5, "startingPage":I
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v7}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v7

    sub-int/2addr v7, v3

    add-int v3, v5, v0

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 135
    .local v3, "targetPage":I
    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v6, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->findSnapEdge(I)Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    move-result-object v6

    .line 136
    .local v6, "edge":Lcom/github/barteksc/pdfviewer/util/SnapEdge;
    iget-object v7, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v7, v3, v6}, Lcom/github/barteksc/pdfviewer/PDFView;->snapOffsetForPage(ILcom/github/barteksc/pdfviewer/util/SnapEdge;)F

    move-result v7

    .line 137
    .local v7, "offset":F
    iget-object v8, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    neg-float v9, v7

    invoke-virtual {v8, v9}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startPageFlingAnimation(F)V

    .line 138
    return-void
.end method


# virtual methods
.method disable()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->enabled:Z

    .line 64
    return-void
.end method

.method disableLongpress()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 68
    return-void
.end method

.method enable()V
    .locals 1

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->enabled:Z

    .line 60
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 142
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isDoubletapEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    return v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getMidZoom()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getMidZoom()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomWithAnimation(FFF)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getMaxZoom()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getMaxZoom()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomWithAnimation(FFF)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->resetZoomWithAnimation()V

    .line 153
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 163
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopFling()V

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 19
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 204
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    iget-object v3, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    const/4 v3, 0x0

    return v3

    .line 207
    :cond_0
    iget-object v3, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->isPageFlingEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 208
    iget-object v3, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->pageFillsScreen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    invoke-direct {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->onBoundedFling(FF)V

    goto :goto_0

    .line 211
    :cond_1
    invoke-direct/range {p0 .. p4}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->startPageFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 213
    :goto_0
    return v4

    .line 216
    :cond_2
    iget-object v3, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v3

    float-to-int v3, v3

    .line 217
    .local v3, "xOffset":I
    iget-object v5, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v5}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v5

    float-to-int v14, v5

    .line 220
    .local v14, "yOffset":I
    iget-object v5, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v15, v5, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    .line 221
    .local v15, "pdfFile":Lcom/github/barteksc/pdfviewer/PdfFile;
    iget-object v5, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v5}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 222
    iget-object v5, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v15}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageWidth()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v5

    iget-object v6, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v6}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    .line 223
    .local v5, "minX":F
    iget-object v6, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v6}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v6

    invoke-virtual {v15, v6}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v6

    iget-object v7, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v7}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    neg-float v6, v6

    move v13, v5

    move v12, v6

    .local v6, "minY":F
    goto :goto_1

    .line 225
    .end local v5    # "minX":F
    .end local v6    # "minY":F
    :cond_3
    iget-object v5, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v5}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v5

    invoke-virtual {v15, v5}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v5

    iget-object v6, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v6}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    .line 226
    .restart local v5    # "minX":F
    iget-object v6, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v15}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageHeight()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v6

    iget-object v7, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v7}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    neg-float v6, v6

    move v13, v5

    move v12, v6

    .line 229
    .end local v5    # "minX":F
    .local v12, "minY":F
    .local v13, "minX":F
    :goto_1
    iget-object v5, v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    float-to-int v8, v1

    float-to-int v9, v2

    float-to-int v10, v13

    const/4 v11, 0x0

    float-to-int v7, v12

    const/16 v16, 0x0

    move v6, v3

    move/from16 v17, v7

    move v7, v14

    move/from16 v18, v12

    .end local v12    # "minY":F
    .local v18, "minY":F
    move/from16 v12, v17

    move/from16 v17, v13

    .end local v13    # "minX":F
    .local v17, "minX":F
    move/from16 v13, v16

    invoke-virtual/range {v5 .. v13}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startFlingAnimation(IIIIIIII)V

    .line 231
    return v4
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 199
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->callOnLongPress(Landroid/view/MotionEvent;)V

    .line 200
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 261
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 262
    .local v0, "dr":F
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v1

    mul-float/2addr v1, v0

    .line 263
    .local v1, "wantedZoom":F
    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MINIMUM_ZOOM:F

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getMinZoom()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 264
    .local v2, "minZoom":F
    sget v3, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MAXIMUM_ZOOM:F

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getMaxZoom()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 265
    .local v3, "maxZoom":F
    cmpg-float v4, v1, v2

    if-gez v4, :cond_0

    .line 266
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v4

    div-float v0, v2, v4

    goto :goto_0

    .line 267
    :cond_0
    cmpl-float v4, v1, v3

    if-lez v4, :cond_1

    .line 268
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v4

    div-float v0, v3, v4

    .line 270
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v0, v5}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomCenteredRelativeTo(FLandroid/graphics/PointF;)V

    .line 271
    const/4 v4, 0x1

    return v4
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scaling:Z

    .line 277
    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 282
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    .line 283
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->hideHandle()V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scaling:Z

    .line 285
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scrolling:Z

    .line 180
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->isZooming()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    neg-float v2, p3

    neg-float v3, p4

    invoke-virtual {v1, v2, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->moveRelativeTo(FF)V

    .line 183
    :cond_1
    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scaling:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->doRenderDuringScale()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPageByOffset()V

    .line 186
    :cond_3
    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 170
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 72
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->callOnTap(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 73
    .local v0, "onTapHandled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->checkLinkTapped(FF)Z

    move-result v1

    .line 74
    .local v1, "linkTapped":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 75
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object v2

    .line 76
    .local v2, "ps":Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->documentFitsView()Z

    move-result v3

    if-nez v3, :cond_1

    .line 77
    invoke-interface {v2}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->shown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    invoke-interface {v2}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->show()V

    goto :goto_0

    .line 80
    :cond_0
    invoke-interface {v2}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->hide()V

    .line 84
    .end local v2    # "ps":Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->performClick()Z

    .line 85
    const/4 v2, 0x1

    return v2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 289
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 290
    return v1

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 294
    .local v0, "retVal":Z
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    move v0, v2

    .line 296
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 297
    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scrolling:Z

    if-eqz v2, :cond_3

    .line 298
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scrolling:Z

    .line 299
    invoke-direct {p0, p2}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->onScrollEnd(Landroid/view/MotionEvent;)V

    .line 302
    :cond_3
    return v0
.end method
