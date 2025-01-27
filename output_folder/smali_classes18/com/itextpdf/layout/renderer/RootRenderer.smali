.class public abstract Lcom/itextpdf/layout/renderer/RootRenderer;
.super Lcom/itextpdf/layout/renderer/AbstractRenderer;
.source "RootRenderer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

.field protected currentPageNumber:I

.field private floatOverflowedCompletely:Z

.field floatRendererAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field protected immediateFlush:Z

.field private initialCurrentArea:Lcom/itextpdf/layout/layout/LayoutArea;

.field private keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

.field private keepWithNextHangingRendererLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

.field private marginsCollapseHandler:Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

.field protected waitingDrawingElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private waitingNextPageRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->immediateFlush:Z

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingDrawingElements:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingNextPageRenderers:Ljava/util/List;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->floatOverflowedCompletely:Z

    return-void
.end method

.method private addAllWaitingNextPageRenderers()V
    .locals 3

    .line 457
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x59

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/RootRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 458
    .local v0, "marginsCollapsingEnabled":Z
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingNextPageRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 459
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 460
    new-instance v2, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    invoke-direct {v2, p0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;-><init>(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    iput-object v2, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->marginsCollapseHandler:Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    .line 462
    :cond_0
    invoke-direct {p0, v1}, Lcom/itextpdf/layout/renderer/RootRenderer;->updateCurrentAndInitialArea(Lcom/itextpdf/layout/layout/LayoutResult;)V

    goto :goto_0

    .line 464
    :cond_1
    return-void
.end method

.method private addWaitingNextPageRenderers()V
    .locals 3

    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->floatOverflowedCompletely:Z

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingNextPageRenderers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 469
    .local v0, "waitingFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingNextPageRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 470
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 471
    .local v2, "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/RootRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 472
    .end local v2    # "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_0

    .line 473
    :cond_0
    return-void
.end method

.method private processRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;)V
    .locals 1
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;)V"
        }
    .end annotation

    .line 365
    .local p2, "resultRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/renderer/RootRenderer;->alignChildHorizontally(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 366
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->immediateFlush:Z

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/RootRenderer;->flushSingleRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_0

    .line 369
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :goto_0
    return-void
.end method

.method private processWaitingKeepWithNextElement(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 18
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 374
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v2, :cond_a

    .line 375
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/RootLayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    .line 376
    .local v2, "rest":Lcom/itextpdf/layout/layout/LayoutArea;
    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    iget-object v5, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRendererLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 377
    const/4 v3, 0x0

    .line 378
    .local v3, "ableToProcessKeepWithNext":Z
    invoke-interface {v1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    new-instance v5, Lcom/itextpdf/layout/layout/LayoutContext;

    invoke-direct {v5, v2}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-interface {v4, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v4, v5, :cond_0

    .line 380
    iget-object v4, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRendererLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

    invoke-virtual {v0, v4, v7, v8}, Lcom/itextpdf/layout/renderer/RootRenderer;->shrinkCurrentAreaAndProcessRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/layout/layout/LayoutResult;)V

    .line 381
    const/4 v3, 0x1

    move-object/from16 v16, v2

    goto/16 :goto_4

    .line 383
    :cond_0
    iget-object v4, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRendererLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    .line 384
    .local v4, "originalElementHeight":F
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v7, "trySplitHeightPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/high16 v8, 0x420c0000    # 35.0f

    .line 386
    .local v8, "delta":F
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    const/4 v10, 0x5

    if-gt v9, v10, :cond_1

    int-to-float v10, v9

    mul-float/2addr v10, v8

    sub-float v10, v4, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v4, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    .line 387
    int-to-float v10, v9

    mul-float/2addr v10, v8

    sub-float v10, v4, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 389
    .end local v9    # "i":I
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    if-nez v3, :cond_6

    .line 390
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 391
    .local v10, "curElementSplitHeight":F
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/RootLayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 392
    .local v11, "firstElementSplitLayoutArea":Lcom/itextpdf/layout/layout/RootLayoutArea;
    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v12

    iget-object v13, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 393
    invoke-virtual {v13}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v13

    sub-float/2addr v13, v10

    invoke-virtual {v12, v13}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 394
    iget-object v12, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v12, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v12

    new-instance v13, Lcom/itextpdf/layout/layout/LayoutContext;

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/RootLayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-interface {v12, v13}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v12

    .line 395
    .local v12, "firstElementSplitLayoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    .line 396
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 397
    .local v13, "storedArea":Lcom/itextpdf/layout/layout/RootLayoutArea;
    invoke-direct {v0, v12}, Lcom/itextpdf/layout/renderer/RootRenderer;->updateCurrentAndInitialArea(Lcom/itextpdf/layout/layout/LayoutResult;)V

    .line 398
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v14

    new-instance v15, Lcom/itextpdf/layout/layout/LayoutContext;

    iget-object v5, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/RootLayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-direct {v15, v5}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-interface {v14, v15}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v5

    .line 399
    .local v5, "firstElementOverflowLayoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v14

    if-ne v14, v6, :cond_2

    .line 400
    iget-object v14, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/RootLayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v14

    .line 401
    .local v14, "secondElementLayoutArea":Lcom/itextpdf/layout/layout/LayoutArea;
    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v15

    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v16

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v17

    sub-float v6, v16, v17

    invoke-virtual {v15, v6}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 402
    invoke-interface {v1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v6

    new-instance v15, Lcom/itextpdf/layout/layout/LayoutContext;

    invoke-direct {v15, v14}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-interface {v6, v15}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v6

    .line 403
    .local v6, "secondElementLayoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v15

    move-object/from16 v16, v2

    const/4 v2, 0x3

    .end local v2    # "rest":Lcom/itextpdf/layout/layout/LayoutArea;
    .local v16, "rest":Lcom/itextpdf/layout/layout/LayoutArea;
    if-eq v15, v2, :cond_3

    .line 404
    const/4 v3, 0x1

    .line 406
    iput-object v11, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 407
    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getPageNumber()I

    move-result v2

    iput v2, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentPageNumber:I

    .line 408
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v15, v12}, Lcom/itextpdf/layout/renderer/RootRenderer;->shrinkCurrentAreaAndProcessRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/layout/layout/LayoutResult;)V

    .line 409
    invoke-direct {v0, v12}, Lcom/itextpdf/layout/renderer/RootRenderer;->updateCurrentAndInitialArea(Lcom/itextpdf/layout/layout/LayoutResult;)V

    .line 410
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v15, v5}, Lcom/itextpdf/layout/renderer/RootRenderer;->shrinkCurrentAreaAndProcessRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/layout/layout/LayoutResult;)V

    goto :goto_2

    .line 399
    .end local v6    # "secondElementLayoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v14    # "secondElementLayoutArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v16    # "rest":Lcom/itextpdf/layout/layout/LayoutArea;
    .restart local v2    # "rest":Lcom/itextpdf/layout/layout/LayoutArea;
    :cond_2
    move-object/from16 v16, v2

    .line 413
    .end local v2    # "rest":Lcom/itextpdf/layout/layout/LayoutArea;
    .restart local v16    # "rest":Lcom/itextpdf/layout/layout/LayoutArea;
    :cond_3
    :goto_2
    if-nez v3, :cond_5

    .line 414
    iput-object v13, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 415
    invoke-virtual {v13}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getPageNumber()I

    move-result v2

    iput v2, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentPageNumber:I

    goto :goto_3

    .line 395
    .end local v5    # "firstElementOverflowLayoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v13    # "storedArea":Lcom/itextpdf/layout/layout/RootLayoutArea;
    .end local v16    # "rest":Lcom/itextpdf/layout/layout/LayoutArea;
    .restart local v2    # "rest":Lcom/itextpdf/layout/layout/LayoutArea;
    :cond_4
    move-object/from16 v16, v2

    .line 389
    .end local v2    # "rest":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v10    # "curElementSplitHeight":F
    .end local v11    # "firstElementSplitLayoutArea":Lcom/itextpdf/layout/layout/RootLayoutArea;
    .end local v12    # "firstElementSplitLayoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .restart local v16    # "rest":Lcom/itextpdf/layout/layout/LayoutArea;
    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v16

    const/4 v5, 0x3

    const/4 v6, 0x1

    goto/16 :goto_1

    .end local v16    # "rest":Lcom/itextpdf/layout/layout/LayoutArea;
    .restart local v2    # "rest":Lcom/itextpdf/layout/layout/LayoutArea;
    :cond_6
    move-object/from16 v16, v2

    .line 420
    .end local v2    # "rest":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v4    # "originalElementHeight":F
    .end local v7    # "trySplitHeightPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v8    # "delta":F
    .end local v9    # "i":I
    .restart local v16    # "rest":Lcom/itextpdf/layout/layout/LayoutArea;
    :goto_4
    const/4 v2, 0x0

    if-nez v3, :cond_8

    iget-object v4, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/RootLayoutArea;->isEmptyArea()Z

    move-result v4

    if-nez v4, :cond_8

    .line 421
    iget-object v4, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 422
    .local v4, "storedArea":Lcom/itextpdf/layout/layout/RootLayoutArea;
    invoke-direct {v0, v2}, Lcom/itextpdf/layout/renderer/RootRenderer;->updateCurrentAndInitialArea(Lcom/itextpdf/layout/layout/LayoutResult;)V

    .line 423
    iget-object v5, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v5, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    new-instance v6, Lcom/itextpdf/layout/layout/LayoutContext;

    iget-object v7, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/RootLayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-interface {v5, v6}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v5

    .line 424
    .local v5, "firstElementLayoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 425
    iget-object v6, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/RootLayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    .line 426
    .local v6, "secondElementLayoutArea":Lcom/itextpdf/layout/layout/LayoutArea;
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 427
    invoke-interface {v1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v7

    new-instance v8, Lcom/itextpdf/layout/layout/LayoutContext;

    invoke-direct {v8, v6}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-interface {v7, v8}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v7

    .line 428
    .local v7, "secondElementLayoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_7

    .line 429
    const/4 v3, 0x1

    .line 430
    iget-object v8, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRendererLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

    invoke-virtual {v0, v8, v9, v10}, Lcom/itextpdf/layout/renderer/RootRenderer;->shrinkCurrentAreaAndProcessRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/layout/layout/LayoutResult;)V

    .line 433
    .end local v6    # "secondElementLayoutArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v7    # "secondElementLayoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    :cond_7
    if-nez v3, :cond_8

    .line 434
    iput-object v4, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 435
    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getPageNumber()I

    move-result v6

    iput v6, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentPageNumber:I

    .line 438
    .end local v4    # "storedArea":Lcom/itextpdf/layout/layout/RootLayoutArea;
    .end local v5    # "firstElementLayoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    :cond_8
    if-nez v3, :cond_9

    .line 439
    const-class v4, Lcom/itextpdf/layout/renderer/RootRenderer;

    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    .line 440
    .local v4, "logger":Lorg/slf4j/Logger;
    const-string v5, "The renderer was not able to process keep with next property properly"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 441
    iget-object v5, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRendererLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

    invoke-virtual {v0, v5, v6, v7}, Lcom/itextpdf/layout/renderer/RootRenderer;->shrinkCurrentAreaAndProcessRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/layout/layout/LayoutResult;)V

    .line 443
    .end local v4    # "logger":Lorg/slf4j/Logger;
    :cond_9
    iput-object v2, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 444
    iput-object v2, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRendererLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

    .line 446
    .end local v3    # "ableToProcessKeepWithNext":Z
    .end local v16    # "rest":Lcom/itextpdf/layout/layout/LayoutArea;
    :cond_a
    return-void
.end method

.method private tryDisableKeepTogether(Lcom/itextpdf/layout/layout/LayoutResult;ZLcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;)Z
    .locals 7
    .param p1, "result"    # Lcom/itextpdf/layout/layout/LayoutResult;
    .param p2, "rendererIsFloat"    # Z
    .param p3, "rootRendererStateHandler"    # Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;

    .line 490
    const/4 v0, 0x0

    .line 493
    .local v0, "toDisableKeepTogether":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    .line 494
    .local v1, "current":Lcom/itextpdf/layout/renderer/IRenderer;
    :goto_0
    const/16 v2, 0x20

    if-eqz v1, :cond_1

    .line 495
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    move-object v0, v1

    .line 498
    :cond_0
    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    goto :goto_0

    .line 501
    :cond_1
    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 502
    return v3

    .line 509
    :cond_2
    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/itextpdf/layout/IPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 510
    const-class v2, Lcom/itextpdf/layout/renderer/RootRenderer;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 511
    .local v2, "logger":Lorg/slf4j/Logger;
    invoke-interface {v2}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 512
    new-array v4, v5, [Ljava/lang/Object;

    const-string v6, "KeepTogether property will be ignored."

    aput-object v6, v4, v3

    const-string v3, "Element does not fit current area. {0}"

    invoke-static {v3, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 516
    :cond_3
    if-nez p2, :cond_4

    .line 517
    invoke-virtual {p3, p0}, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->attemptGoBackToStoredPreviousStateAndStoreNextState(Lcom/itextpdf/layout/renderer/RootRenderer;)Z

    .line 519
    :cond_4
    return v5
.end method

.method private updateCurrentAndInitialArea(Lcom/itextpdf/layout/layout/LayoutResult;)V
    .locals 1
    .param p1, "overflowResult"    # Lcom/itextpdf/layout/layout/LayoutResult;

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->floatRendererAreas:Ljava/util/List;

    .line 450
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/RootRenderer;->updateCurrentArea(Lcom/itextpdf/layout/layout/LayoutResult;)Lcom/itextpdf/layout/layout/LayoutArea;

    .line 451
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/RootLayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->initialCurrentArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 453
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/RootRenderer;->addWaitingNextPageRenderers()V

    .line 454
    return-void
.end method

.method private updateForcedPlacement(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 5
    .param p1, "currentRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "overflowRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 476
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x1a

    invoke-interface {p1, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 477
    return v2

    .line 479
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 480
    const-class v1, Lcom/itextpdf/layout/renderer/RootRenderer;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 481
    .local v1, "logger":Lorg/slf4j/Logger;
    invoke-interface {v1}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 482
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v2

    const-string v2, "Element does not fit current area. {0}"

    invoke-static {v2, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 484
    :cond_1
    return v0
.end method


# virtual methods
.method public addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 23
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 83
    move-object/from16 v0, p0

    const-class v1, Lcom/itextpdf/layout/renderer/RootRenderer;

    const/16 v2, 0x6c

    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/RootRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    .line 84
    .local v2, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    if-eqz v2, :cond_0

    .line 85
    move-object/from16 v3, p1

    invoke-static {v2, v3}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addTreeHints(Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_0

    .line 84
    :cond_0
    move-object/from16 v3, p1

    .line 90
    :goto_0
    iget-object v4, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 91
    .local v4, "numberOfChildRenderers":I
    iget-object v5, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 92
    .local v5, "numberOfPositionedChildRenderers":I
    invoke-super/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 93
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .local v6, "addedRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .local v8, "addedPositionedRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :goto_1
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v4, :cond_1

    .line 96
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 99
    :cond_1
    :goto_2
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v5, :cond_2

    .line 100
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 104
    :cond_2
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v10, 0x59

    invoke-virtual {v0, v10}, Lcom/itextpdf/layout/renderer/RootRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 105
    .local v9, "marginsCollapsingEnabled":Z
    iget-object v10, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    const/4 v11, 0x0

    if-nez v10, :cond_3

    .line 106
    invoke-direct {v0, v11}, Lcom/itextpdf/layout/renderer/RootRenderer;->updateCurrentAndInitialArea(Lcom/itextpdf/layout/layout/LayoutResult;)V

    .line 107
    if-eqz v9, :cond_3

    .line 108
    new-instance v10, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    invoke-direct {v10, v0, v11}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;-><init>(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    iput-object v10, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->marginsCollapseHandler:Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    .line 113
    :cond_3
    const/4 v10, 0x0

    .end local p1    # "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v3, "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v10, "i":I
    :goto_3
    iget-object v12, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    if-eqz v12, :cond_21

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_21

    .line 114
    new-instance v12, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;

    invoke-direct {v12}, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;-><init>()V

    .line 116
    .local v12, "rootRendererStateHandler":Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v3, v14

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 117
    invoke-static {v3}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v14

    .line 118
    .local v14, "rendererIsFloat":Z
    iget-object v15, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingNextPageRenderers:Ljava/util/List;

    const/16 v11, 0x64

    invoke-interface {v3, v11}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Lcom/itextpdf/layout/property/ClearPropertyValue;

    invoke-static {v15, v11}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isClearanceApplied(Ljava/util/List;Lcom/itextpdf/layout/property/ClearPropertyValue;)Z

    move-result v11

    .line 119
    .local v11, "clearanceOverflowsToNextPage":Z
    if-eqz v14, :cond_5

    iget-boolean v15, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->floatOverflowedCompletely:Z

    if-nez v15, :cond_4

    if-eqz v11, :cond_5

    .line 120
    :cond_4
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingNextPageRenderers:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iput-boolean v7, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->floatOverflowedCompletely:Z

    .line 122
    move-object/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    goto/16 :goto_a

    .line 125
    :cond_5
    invoke-direct {v0, v3}, Lcom/itextpdf/layout/renderer/RootRenderer;->processWaitingKeepWithNextElement(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 127
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v15, "resultRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    const/16 v16, 0x0

    .line 130
    .local v16, "result":Lcom/itextpdf/layout/layout/LayoutResult;
    const/16 v17, 0x0

    .line 131
    .local v17, "childMarginsInfo":Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    if-eqz v9, :cond_6

    iget-object v13, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    if-eqz v13, :cond_6

    if-eqz v3, :cond_6

    .line 132
    iget-object v7, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->marginsCollapseHandler:Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    invoke-virtual {v13}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v13

    invoke-virtual {v7, v3, v13}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->startChildMarginsHandling(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object v17

    move-object/from16 v7, v17

    goto :goto_4

    .line 134
    :cond_6
    move-object/from16 v7, v17

    .end local v17    # "childMarginsInfo":Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .local v7, "childMarginsInfo":Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    :goto_4
    if-nez v11, :cond_9

    iget-object v13, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    if-eqz v13, :cond_8

    if-eqz v3, :cond_8

    .line 135
    invoke-interface {v3, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v13

    move-object/from16 v18, v2

    .end local v2    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .local v18, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    new-instance v2, Lcom/itextpdf/layout/layout/LayoutContext;

    move/from16 v19, v4

    .end local v4    # "numberOfChildRenderers":I
    .local v19, "numberOfChildRenderers":I
    iget-object v4, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 136
    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/RootLayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    move/from16 v20, v5

    .end local v5    # "numberOfPositionedChildRenderers":I
    .local v20, "numberOfPositionedChildRenderers":I
    iget-object v5, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->floatRendererAreas:Ljava/util/List;

    invoke-direct {v2, v4, v7, v5}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;Ljava/util/List;)V

    invoke-interface {v13, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v2

    move-object/from16 v16, v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_7

    goto :goto_5

    :cond_7
    move-object/from16 v4, v16

    goto/16 :goto_9

    .line 134
    .end local v18    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .end local v19    # "numberOfChildRenderers":I
    .end local v20    # "numberOfPositionedChildRenderers":I
    .restart local v2    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .restart local v4    # "numberOfChildRenderers":I
    .restart local v5    # "numberOfPositionedChildRenderers":I
    :cond_8
    move-object/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    .line 219
    .end local v2    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .end local v4    # "numberOfChildRenderers":I
    .end local v5    # "numberOfPositionedChildRenderers":I
    .restart local v18    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .restart local v19    # "numberOfChildRenderers":I
    .restart local v20    # "numberOfPositionedChildRenderers":I
    move-object/from16 v4, v16

    goto/16 :goto_9

    .line 134
    .end local v18    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .end local v19    # "numberOfChildRenderers":I
    .end local v20    # "numberOfPositionedChildRenderers":I
    .restart local v2    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .restart local v4    # "numberOfChildRenderers":I
    .restart local v5    # "numberOfPositionedChildRenderers":I
    :cond_9
    move-object/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    .line 137
    .end local v2    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .end local v4    # "numberOfChildRenderers":I
    .end local v5    # "numberOfPositionedChildRenderers":I
    .restart local v18    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .restart local v19    # "numberOfChildRenderers":I
    .restart local v20    # "numberOfPositionedChildRenderers":I
    :goto_5
    const/4 v2, 0x0

    .line 138
    .local v2, "currentAreaNeedsToBeUpdated":Z
    if-eqz v11, :cond_a

    .line 139
    new-instance v4, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v5, 0x3

    const/4 v13, 0x0

    invoke-direct {v4, v5, v13, v13, v3}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 140
    .end local v16    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    .local v4, "result":Lcom/itextpdf/layout/layout/LayoutResult;
    const/4 v2, 0x1

    goto :goto_6

    .line 138
    .end local v4    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    .restart local v16    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    :cond_a
    move-object/from16 v4, v16

    .line 142
    .end local v16    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    .restart local v4    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    :goto_6
    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v5

    const/4 v13, 0x2

    const/16 v16, 0x0

    if-ne v5, v13, :cond_d

    .line 143
    if-eqz v14, :cond_b

    .line 144
    iget-object v5, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingNextPageRenderers:Ljava/util/List;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    goto/16 :goto_9

    .line 147
    :cond_b
    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    invoke-direct {v0, v5, v15}, Lcom/itextpdf/layout/renderer/RootRenderer;->processRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;)V

    .line 148
    invoke-virtual {v12, v0}, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->attemptGoForwardToStoredNextState(Lcom/itextpdf/layout/renderer/RootRenderer;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 149
    const/4 v2, 0x1

    goto/16 :goto_c

    .line 148
    :cond_c
    move/from16 v21, v2

    goto/16 :goto_b

    .line 152
    :cond_d
    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v5

    const/4 v13, 0x3

    if-ne v5, v13, :cond_1b

    if-nez v11, :cond_1b

    .line 153
    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    instance-of v5, v5, Lcom/itextpdf/layout/renderer/ImageRenderer;

    if-eqz v5, :cond_11

    .line 154
    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/renderer/ImageRenderer;

    invoke-virtual {v5}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    .line 155
    .local v5, "imgHeight":F
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->floatRendererAreas:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_f

    iget-object v13, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 156
    invoke-virtual {v13}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v13

    cmpg-float v13, v13, v5

    if-gez v13, :cond_e

    iget-object v13, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v13}, Lcom/itextpdf/layout/layout/RootLayoutArea;->isEmptyArea()Z

    move-result v13

    if-nez v13, :cond_e

    move/from16 v21, v2

    move/from16 v22, v5

    goto :goto_7

    .line 164
    :cond_e
    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/layout/renderer/ImageRenderer;

    move/from16 v21, v2

    .end local v2    # "currentAreaNeedsToBeUpdated":Z
    .local v21, "currentAreaNeedsToBeUpdated":Z
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v13, v2}, Lcom/itextpdf/layout/renderer/ImageRenderer;->autoScale(Lcom/itextpdf/layout/layout/LayoutArea;)Lcom/itextpdf/layout/renderer/ImageRenderer;

    .line 165
    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    move/from16 v22, v5

    const/4 v13, 0x1

    .end local v5    # "imgHeight":F
    .local v22, "imgHeight":F
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v13, 0x1a

    invoke-interface {v2, v13, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 166
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 167
    .local v2, "logger":Lorg/slf4j/Logger;
    const/4 v5, 0x1

    new-array v13, v5, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v13, v16

    const-string v5, "Element does not fit current area. {0}"

    invoke-static {v5, v13}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    move/from16 v2, v21

    goto :goto_8

    .line 155
    .end local v21    # "currentAreaNeedsToBeUpdated":Z
    .end local v22    # "imgHeight":F
    .local v2, "currentAreaNeedsToBeUpdated":Z
    .restart local v5    # "imgHeight":F
    :cond_f
    move/from16 v21, v2

    move/from16 v22, v5

    .line 157
    .end local v2    # "currentAreaNeedsToBeUpdated":Z
    .end local v5    # "imgHeight":F
    .restart local v21    # "currentAreaNeedsToBeUpdated":Z
    .restart local v22    # "imgHeight":F
    :goto_7
    if-eqz v14, :cond_10

    .line 158
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingNextPageRenderers:Ljava/util/List;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->floatOverflowedCompletely:Z

    .line 160
    goto :goto_9

    .line 162
    :cond_10
    const/4 v2, 0x1

    .line 169
    .end local v21    # "currentAreaNeedsToBeUpdated":Z
    .end local v22    # "imgHeight":F
    .restart local v2    # "currentAreaNeedsToBeUpdated":Z
    :goto_8
    goto/16 :goto_c

    .line 170
    :cond_11
    move/from16 v21, v2

    .end local v2    # "currentAreaNeedsToBeUpdated":Z
    .restart local v21    # "currentAreaNeedsToBeUpdated":Z
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/RootLayoutArea;->isEmptyArea()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v2

    if-nez v2, :cond_14

    .line 171
    invoke-direct {v0, v4, v14, v12}, Lcom/itextpdf/layout/renderer/RootRenderer;->tryDisableKeepTogether(Lcom/itextpdf/layout/layout/LayoutResult;ZLcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;)Z

    move-result v2

    .line 174
    .local v2, "keepTogetherChanged":Z
    xor-int/lit8 v5, v2, 0x1

    .line 175
    .local v5, "areKeepTogetherAndForcedPlacementBothNotChanged":Z
    if-eqz v5, :cond_12

    .line 176
    nop

    .line 177
    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v13

    invoke-direct {v0, v3, v13}, Lcom/itextpdf/layout/renderer/RootRenderer;->updateForcedPlacement(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v13

    const/16 v17, 0x1

    xor-int/lit8 v13, v13, 0x1

    move v5, v13

    .line 180
    :cond_12
    if-nez v5, :cond_13

    .line 189
    .end local v2    # "keepTogetherChanged":Z
    .end local v5    # "areKeepTogetherAndForcedPlacementBothNotChanged":Z
    goto/16 :goto_b

    .line 184
    .restart local v2    # "keepTogetherChanged":Z
    .restart local v5    # "areKeepTogetherAndForcedPlacementBothNotChanged":Z
    :cond_13
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 190
    .end local v2    # "keepTogetherChanged":Z
    .end local v5    # "areKeepTogetherAndForcedPlacementBothNotChanged":Z
    :cond_14
    invoke-virtual {v12, v0}, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->storePreviousState(Lcom/itextpdf/layout/renderer/RootRenderer;)Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;

    .line 191
    invoke-virtual {v12, v0}, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->attemptGoForwardToStoredNextState(Lcom/itextpdf/layout/renderer/RootRenderer;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 192
    if-eqz v14, :cond_1a

    .line 193
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingNextPageRenderers:Ljava/util/List;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->floatOverflowedCompletely:Z

    .line 195
    nop

    .line 219
    .end local v21    # "currentAreaNeedsToBeUpdated":Z
    :goto_9
    if-eqz v9, :cond_15

    .line 220
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->marginsCollapseHandler:Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    iget-object v5, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endChildMarginsHandling(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 223
    :cond_15
    if-eqz v4, :cond_16

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 224
    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    .line 228
    :cond_16
    if-eqz v3, :cond_19

    if-eqz v4, :cond_19

    .line 229
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v5, 0x51

    invoke-interface {v3, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 230
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v5, 0x1a

    invoke-interface {v3, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 231
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 232
    .local v2, "logger":Lorg/slf4j/Logger;
    const-string v5, "Element was placed in a forced way. Keep with next property will be ignored"

    invoke-interface {v2, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0, v3, v15, v4}, Lcom/itextpdf/layout/renderer/RootRenderer;->shrinkCurrentAreaAndProcessRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/layout/layout/LayoutResult;)V

    .line 234
    .end local v2    # "logger":Lorg/slf4j/Logger;
    goto :goto_a

    .line 235
    :cond_17
    iput-object v3, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 236
    iput-object v4, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRendererLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

    goto :goto_a

    .line 238
    :cond_18
    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_19

    .line 239
    invoke-virtual {v0, v3, v15, v4}, Lcom/itextpdf/layout/renderer/RootRenderer;->shrinkCurrentAreaAndProcessRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/layout/layout/LayoutResult;)V

    .line 113
    .end local v4    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v7    # "childMarginsInfo":Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .end local v11    # "clearanceOverflowsToNextPage":Z
    .end local v12    # "rootRendererStateHandler":Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;
    .end local v14    # "rendererIsFloat":Z
    .end local v15    # "resultRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :cond_19
    :goto_a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v18

    move/from16 v4, v19

    move/from16 v5, v20

    const/4 v7, 0x1

    const/4 v11, 0x0

    goto/16 :goto_3

    .line 197
    .restart local v4    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    .restart local v7    # "childMarginsInfo":Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .restart local v11    # "clearanceOverflowsToNextPage":Z
    .restart local v12    # "rootRendererStateHandler":Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;
    .restart local v14    # "rendererIsFloat":Z
    .restart local v15    # "resultRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v21    # "currentAreaNeedsToBeUpdated":Z
    :cond_1a
    const/4 v2, 0x1

    .end local v21    # "currentAreaNeedsToBeUpdated":Z
    .local v2, "currentAreaNeedsToBeUpdated":Z
    goto :goto_c

    .line 152
    :cond_1b
    move/from16 v21, v2

    .line 203
    .end local v2    # "currentAreaNeedsToBeUpdated":Z
    .restart local v21    # "currentAreaNeedsToBeUpdated":Z
    :cond_1c
    :goto_b
    move/from16 v2, v21

    .end local v21    # "currentAreaNeedsToBeUpdated":Z
    .restart local v2    # "currentAreaNeedsToBeUpdated":Z
    :goto_c
    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    .line 205
    if-eqz v9, :cond_1d

    .line 206
    iget-object v5, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->marginsCollapseHandler:Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    iget-object v13, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v13}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endChildMarginsHandling(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 208
    :cond_1d
    if-eqz v2, :cond_1e

    .line 209
    invoke-direct {v0, v4}, Lcom/itextpdf/layout/renderer/RootRenderer;->updateCurrentAndInitialArea(Lcom/itextpdf/layout/layout/LayoutResult;)V

    .line 211
    :cond_1e
    if-eqz v9, :cond_1f

    .line 212
    new-instance v5, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    const/4 v13, 0x0

    invoke-direct {v5, v0, v13}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;-><init>(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    iput-object v5, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->marginsCollapseHandler:Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    .line 213
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v13}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v13

    invoke-virtual {v5, v3, v13}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->startChildMarginsHandling(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object v5

    move-object v7, v5

    .line 216
    :cond_1f
    if-eqz v11, :cond_20

    iget-object v5, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingNextPageRenderers:Ljava/util/List;

    .line 217
    const/16 v13, 0x64

    invoke-interface {v3, v13}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v13, v17

    check-cast v13, Lcom/itextpdf/layout/property/ClearPropertyValue;

    invoke-static {v5, v13}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isClearanceApplied(Ljava/util/List;Lcom/itextpdf/layout/property/ClearPropertyValue;)Z

    move-result v5

    if-eqz v5, :cond_20

    const/16 v16, 0x1

    goto :goto_d

    :cond_20
    nop

    :goto_d
    move/from16 v11, v16

    .line 218
    .end local v2    # "currentAreaNeedsToBeUpdated":Z
    move-object/from16 v16, v4

    move-object/from16 v2, v18

    move/from16 v4, v19

    move/from16 v5, v20

    goto/16 :goto_4

    .line 113
    .end local v7    # "childMarginsInfo":Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .end local v11    # "clearanceOverflowsToNextPage":Z
    .end local v12    # "rootRendererStateHandler":Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;
    .end local v14    # "rendererIsFloat":Z
    .end local v15    # "resultRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v18    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .end local v19    # "numberOfChildRenderers":I
    .end local v20    # "numberOfPositionedChildRenderers":I
    .local v2, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .local v4, "numberOfChildRenderers":I
    .local v5, "numberOfPositionedChildRenderers":I
    :cond_21
    move-object/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    .line 244
    .end local v2    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .end local v4    # "numberOfChildRenderers":I
    .end local v5    # "numberOfPositionedChildRenderers":I
    .end local v10    # "i":I
    .restart local v18    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .restart local v19    # "numberOfChildRenderers":I
    .restart local v20    # "numberOfPositionedChildRenderers":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 245
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    iget-object v4, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 247
    const/16 v2, 0x33

    invoke-interface {v3, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 248
    .local v2, "positionedPageNumber":Ljava/lang/Integer;
    if-nez v2, :cond_22

    .line 249
    iget v4, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentPageNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 255
    :cond_22
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x34

    invoke-interface {v3, v7}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-static {v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->noAbsolutePositionInfo(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 256
    new-instance v5, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v10, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v10}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v10

    invoke-direct {v5, v7, v10}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    .local v5, "layoutArea":Lcom/itextpdf/layout/layout/LayoutArea;
    goto :goto_f

    .line 258
    .end local v5    # "layoutArea":Lcom/itextpdf/layout/layout/LayoutArea;
    :cond_23
    new-instance v5, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v10, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->initialCurrentArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v10}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v10

    invoke-direct {v5, v7, v10}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    .line 260
    .restart local v5    # "layoutArea":Lcom/itextpdf/layout/layout/LayoutArea;
    :goto_f
    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    .line 261
    .local v7, "fullBbox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v10

    invoke-virtual {v0, v3, v7, v10}, Lcom/itextpdf/layout/renderer/RootRenderer;->preparePositionedRendererAndAreaForLayout(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 262
    new-instance v10, Lcom/itextpdf/layout/layout/PositionedLayoutContext;

    new-instance v11, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v12

    invoke-direct {v11, v12, v7}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v10, v11, v5}, Lcom/itextpdf/layout/layout/PositionedLayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-interface {v3, v10}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    .line 264
    iget-boolean v10, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->immediateFlush:Z

    if-eqz v10, :cond_24

    .line 265
    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/renderer/RootRenderer;->flushSingleRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 266
    iget-object v10, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    iget-object v11, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_10

    .line 264
    :cond_24
    const/4 v12, 0x1

    .line 244
    .end local v2    # "positionedPageNumber":Ljava/lang/Integer;
    .end local v5    # "layoutArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v7    # "fullBbox":Lcom/itextpdf/kernel/geom/Rectangle;
    :goto_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e

    .line 269
    .end local v1    # "i":I
    :cond_25
    return-void
.end method

.method public close()V
    .locals 3

    .line 293
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/RootRenderer;->addAllWaitingNextPageRenderers()V

    .line 294
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_0

    .line 295
    const/16 v1, 0x51

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 297
    .local v0, "rendererToBeAdded":Lcom/itextpdf/layout/renderer/IRenderer;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 298
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/RootRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 300
    .end local v0    # "rendererToBeAdded":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->immediateFlush:Z

    if-nez v0, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/RootRenderer;->flush()V

    .line 303
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/RootRenderer;->flushWaitingDrawingElements(Z)V

    .line 304
    const/16 v0, 0x6c

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/RootRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    .line 305
    .local v0, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    if-eqz v0, :cond_2

    .line 306
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->releaseAllHints()V

    .line 308
    :cond_2
    return-void
.end method

.method public flush()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 278
    .local v1, "resultRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/RootRenderer;->flushSingleRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 279
    .end local v1    # "resultRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 281
    .restart local v1    # "resultRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/RootRenderer;->flushSingleRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 282
    .end local v1    # "resultRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_1

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 284
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 285
    return-void
.end method

.method protected abstract flushSingleRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V
.end method

.method protected flushWaitingDrawingElements()V
    .locals 1

    .line 345
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/RootRenderer;->flushWaitingDrawingElements(Z)V

    .line 346
    return-void
.end method

.method flushWaitingDrawingElements(Z)V
    .locals 5
    .param p1, "force"    # Z

    .line 349
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 350
    .local v0, "flushedElements":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingDrawingElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 352
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingDrawingElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 354
    .local v2, "waitingDrawingElement":Lcom/itextpdf/layout/renderer/IRenderer;
    if-nez p1, :cond_1

    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getPageNumber()I

    move-result v4

    if-ge v3, v4, :cond_0

    goto :goto_1

    .line 357
    :cond_0
    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    if-nez v3, :cond_2

    .line 358
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 355
    :cond_1
    :goto_1
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/RootRenderer;->flushSingleRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 356
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 350
    .end local v2    # "waitingDrawingElement":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingDrawingElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 362
    return-void
.end method

.method public getCurrentArea()Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    if-nez v0, :cond_0

    .line 320
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/RootRenderer;->updateCurrentAndInitialArea(Lcom/itextpdf/layout/layout/LayoutResult;)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    return-object v0
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 2
    .param p1, "layoutContext"    # Lcom/itextpdf/layout/layout/LayoutContext;

    .line 315
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Layout is not supported for root renderers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected shrinkCurrentAreaAndProcessRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/layout/layout/LayoutResult;)V
    .locals 3
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p3, "result"    # Lcom/itextpdf/layout/layout/LayoutResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            ")V"
        }
    .end annotation

    .line 330
    .local p2, "resultRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    if-eqz v0, :cond_2

    .line 331
    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    .line 332
    .local v0, "resultRendererHeight":F
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 333
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/RootLayoutArea;->isEmptyArea()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    invoke-static {p1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/layout/RootLayoutArea;->setEmptyArea(Z)V

    .line 336
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/renderer/RootRenderer;->processRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;)V

    .line 339
    .end local v0    # "resultRendererHeight":F
    :cond_2
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->immediateFlush:Z

    if-nez v0, :cond_3

    .line 340
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 342
    :cond_3
    return-void
.end method

.method protected abstract updateCurrentArea(Lcom/itextpdf/layout/layout/LayoutResult;)Lcom/itextpdf/layout/layout/LayoutArea;
.end method
