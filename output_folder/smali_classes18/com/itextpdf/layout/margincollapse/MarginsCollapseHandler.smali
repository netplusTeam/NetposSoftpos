.class public Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
.super Ljava/lang/Object;
.source "MarginsCollapseHandler.java"


# instance fields
.field private backupCollapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

.field private backupLayoutBox:Lcom/itextpdf/kernel/geom/Rectangle;

.field private childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

.field private collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

.field private firstNotEmptyKidIndex:I

.field private lastKidCollapsedAfterHasClearanceApplied:Z

.field private prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

.field private processedChildrenNum:I

.field private renderer:Lcom/itextpdf/layout/renderer/IRenderer;

.field private rendererChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V
    .locals 1
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "marginsCollapseInfo"    # Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstNotEmptyKidIndex:I

    .line 79
    iput v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->processedChildrenNum:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->rendererChildren:Ljava/util/List;

    .line 90
    iput-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 91
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-direct {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 92
    return-void
.end method

.method private addNotYetAppliedTopMargin(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 2
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 446
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v0

    .line 447
    .local v0, "indentTop":F
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 451
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->applyTopMargin(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    .line 452
    return-void
.end method

.method private applyBottomMargin(Lcom/itextpdf/kernel/geom/Rectangle;F)V
    .locals 4
    .param p1, "box"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "bottomIndent"    # F

    .line 378
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnBottom()F

    move-result v0

    sub-float v0, p2, v0

    .line 379
    .local v0, "bottomIndentLeftovers":F
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 380
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1, p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setUsedBufferSpaceOnBottom(F)V

    .line 381
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    neg-float v2, v0

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnBottom(F)V

    goto :goto_0

    .line 383
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnBottom()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setUsedBufferSpaceOnBottom(F)V

    .line 384
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnBottom(F)V

    .line 385
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 386
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 388
    :goto_0
    return-void
.end method

.method private applySelfCollapsedKidMarginWithClearance(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 2
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 466
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v0

    .line 467
    .local v0, "clearedKidMarginWithClearance":F
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 468
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 469
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 471
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 472
    return-void
.end method

.method private applyTopMargin(Lcom/itextpdf/kernel/geom/Rectangle;F)V
    .locals 4
    .param p1, "box"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "topIndent"    # F

    .line 358
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnTop()F

    move-result v0

    sub-float/2addr v0, p2

    .line 359
    .local v0, "bufferLeftoversOnTop":F
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnTop()F

    move-result v2

    .line 360
    .local v2, "usedTopBuffer":F
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v3, v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setUsedBufferSpaceOnTop(F)V

    .line 361
    invoke-direct {p0, v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->subtractUsedTopBufferFromBottomBuffer(F)V

    .line 363
    cmpl-float v3, v0, v1

    if-ltz v3, :cond_1

    .line 364
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnTop(F)V

    .line 365
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_1

    .line 367
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnTop()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 368
    iget-object v3, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v3, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnTop(F)V

    .line 369
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 371
    :goto_1
    return-void
.end method

.method private createMarginsInfoForBlockChild(I)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .locals 7
    .param p1, "childIndex"    # I

    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, "ignoreChildTopMargin":Z
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->lastChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v1

    .line 139
    .local v1, "ignoreChildBottomMargin":Z
    iget v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstNotEmptyKidIndex:I

    if-ne p1, v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    .line 144
    :cond_0
    if-nez p1, :cond_2

    .line 145
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v2

    .line 146
    .local v2, "parentCollapseBefore":Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    if-eqz v0, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-direct {v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;-><init>()V

    :goto_0
    move-object v2, v3

    .line 147
    .local v2, "childCollapseBefore":Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    goto :goto_3

    .line 148
    .end local v2    # "childCollapseBefore":Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 149
    .local v2, "prevChildCollapseAfter":Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    :goto_1
    if-eqz v2, :cond_4

    move-object v3, v2

    goto :goto_2

    :cond_4
    new-instance v3, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-direct {v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;-><init>()V

    :goto_2
    move-object v2, v3

    .line 152
    .local v2, "childCollapseBefore":Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    :goto_3
    iget-object v3, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->clone()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v3

    .line 153
    .local v3, "parentCollapseAfter":Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    if-eqz v1, :cond_5

    move-object v4, v3

    goto :goto_4

    :cond_5
    new-instance v4, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-direct {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;-><init>()V

    .line 154
    .local v4, "childCollapseAfter":Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    :goto_4
    new-instance v5, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-direct {v5, v0, v1, v2, v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;-><init>(ZZLcom/itextpdf/layout/margincollapse/MarginsCollapse;Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 155
    .local v5, "childMarginsInfo":Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    if-eqz v0, :cond_6

    iget v6, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstNotEmptyKidIndex:I

    if-ne p1, v6, :cond_6

    .line 156
    iget-object v6, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v6}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnTop()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnTop(F)V

    .line 158
    :cond_6
    if-eqz v1, :cond_7

    .line 159
    iget-object v6, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v6}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnBottom()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnBottom(F)V

    .line 161
    :cond_7
    return-object v5
.end method

.method private static firstChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 1
    .param p0, "parent"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 497
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/BlockFormattingContextUtil;->isRendererCreateBfc(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_0

    .line 499
    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasTopBorders(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasTopPadding(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 497
    :goto_0
    return v0
.end method

.method private fixPrevChildOccupiedArea(I)V
    .locals 7
    .param p1, "childIndex"    # I

    .line 419
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->getRendererChild(I)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    .line 421
    .local v0, "prevRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 423
    .local v1, "bBox":Lcom/itextpdf/kernel/geom/Rectangle;
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginBottom()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 424
    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginTop()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    .line 426
    .local v2, "prevChildHasAppliedCollapseAfter":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 427
    iget-object v5, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v5}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v5

    .line 428
    .local v5, "bottomMargin":F
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    sub-float/2addr v6, v5

    invoke-virtual {v1, v6}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 429
    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 430
    invoke-static {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->ignoreModelBottomMargin(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 433
    .end local v5    # "bottomMargin":F
    :cond_2
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->getRendererChild(I)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->isBlockElement(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v5

    xor-int/2addr v5, v4

    .line 434
    .local v5, "isNotBlockChild":Z
    iget-object v6, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v6}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v6}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginTop()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    move v3, v4

    .line 435
    .local v3, "prevChildCanApplyCollapseAfter":Z
    :cond_4
    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    .line 436
    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v4

    .line 437
    .local v4, "ownCollapsedMargins":F
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    add-float/2addr v6, v4

    invoke-virtual {v1, v6}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 438
    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 439
    invoke-static {v0, v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->overrideModelBottomMargin(Lcom/itextpdf/layout/renderer/IRenderer;F)V

    .line 441
    .end local v4    # "ownCollapsedMargins":F
    :cond_5
    return-void
.end method

.method private static getModelBottomMargin(Lcom/itextpdf/layout/renderer/IRenderer;)F
    .locals 5
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 601
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    .line 602
    .local v0, "marginUV":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 603
    const-class v1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 604
    .local v1, "logger":Lorg/slf4j/Logger;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x2e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Property {0} in percents is not supported"

    invoke-static {v3, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 607
    .end local v1    # "logger":Lorg/slf4j/Logger;
    :cond_0
    if-eqz v0, :cond_1

    instance-of v1, p0, Lcom/itextpdf/layout/renderer/CellRenderer;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static getModelTopMargin(Lcom/itextpdf/layout/renderer/IRenderer;)F
    .locals 5
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 583
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    .line 584
    .local v0, "marginUV":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 585
    const-class v2, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 586
    .local v2, "logger":Lorg/slf4j/Logger;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "Property {0} in percents is not supported"

    invoke-static {v1, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 589
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :cond_0
    if-eqz v0, :cond_1

    instance-of v1, p0, Lcom/itextpdf/layout/renderer/CellRenderer;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getRendererChild(I)Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1
    .param p1, "index"    # I

    .line 475
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->rendererChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    return-object v0
.end method

.method private getRidOfCollapseArtifactsAtopOccupiedArea()V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 484
    .local v0, "bBox":Lcom/itextpdf/kernel/geom/Rectangle;
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 485
    return-void
.end method

.method private static hasBottomBorders(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 2
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 570
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    .line 571
    .local v0, "modelElement":Lcom/itextpdf/layout/IPropertyContainer;
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/IPropertyContainer;->hasProperty(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/IPropertyContainer;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private static hasBottomPadding(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 6
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 556
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    .line 557
    .local v0, "padding":Lcom/itextpdf/layout/property/UnitValue;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 558
    const-class v4, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    .line 559
    .local v4, "logger":Lorg/slf4j/Logger;
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    const-string v1, "Property {0} in percents is not supported"

    invoke-static {v1, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 561
    .end local v4    # "logger":Lorg/slf4j/Logger;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2
.end method

.method private static hasHeightProp(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 2
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 514
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/IPropertyContainer;->hasProperty(I)Z

    move-result v0

    return v0
.end method

.method private static hasPositiveHeight(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 5
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 534
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    .line 536
    .local v0, "height":F
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_2

    .line 537
    const/16 v2, 0x1b

    invoke-interface {p0, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/property/UnitValue;

    .line 538
    .local v2, "heightPropVal":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v3, 0x55

    invoke-interface {p0, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/property/UnitValue;

    .line 539
    .local v3, "minHeightPropVal":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v3, :cond_0

    .line 540
    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v4

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 541
    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    move v0, v4

    .line 543
    .end local v2    # "heightPropVal":Lcom/itextpdf/layout/property/UnitValue;
    .end local v3    # "minHeightPropVal":Lcom/itextpdf/layout/property/UnitValue;
    :cond_2
    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private static hasTopBorders(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 2
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 565
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    .line 566
    .local v0, "modelElement":Lcom/itextpdf/layout/IPropertyContainer;
    const/16 v1, 0xd

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/IPropertyContainer;->hasProperty(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/IPropertyContainer;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private static hasTopPadding(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 6
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 547
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    const/16 v1, 0x32

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    .line 548
    .local v0, "padding":Lcom/itextpdf/layout/property/UnitValue;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 549
    const-class v4, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    .line 550
    .local v4, "logger":Lorg/slf4j/Logger;
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    const-string v1, "Property {0} in percents is not supported"

    invoke-static {v1, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 552
    .end local v4    # "logger":Lorg/slf4j/Logger;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2
.end method

.method private static ignoreModelBottomMargin(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 2
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 611
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-interface {p0, v1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 612
    return-void
.end method

.method private static ignoreModelTopMargin(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 2
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 593
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-interface {p0, v1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 594
    return-void
.end method

.method private static isBlockElement(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 1
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 509
    instance-of v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static lastChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 1
    .param p0, "parent"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 503
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/BlockFormattingContextUtil;->isRendererCreateBfc(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_0

    .line 505
    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasBottomBorders(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasBottomPadding(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasHeightProp(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 503
    :goto_0
    return v0
.end method

.method private static marginsCouldBeSelfCollapsing(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 1
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 488
    instance-of v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_1

    .line 489
    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->rendererIsFloated(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasBottomBorders(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasTopBorders(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 491
    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasBottomPadding(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasTopPadding(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasPositiveHeight(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->isBlockElement(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 488
    :goto_0
    return v0
.end method

.method private static overrideModelBottomMargin(Lcom/itextpdf/layout/renderer/IRenderer;F)V
    .locals 2
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p1, "collapsedMargins"    # F

    .line 615
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-interface {p0, v1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 616
    return-void
.end method

.method private static overrideModelTopMargin(Lcom/itextpdf/layout/renderer/IRenderer;F)V
    .locals 2
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p1, "collapsedMargins"    # F

    .line 597
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-interface {p0, v1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 598
    return-void
.end method

.method private prepareBoxForLayoutAttempt(Lcom/itextpdf/kernel/geom/Rectangle;IZ)V
    .locals 6
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "childIndex"    # I
    .param p3, "childIsBlockElement"    # Z

    .line 308
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 309
    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginBottom()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 310
    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginTop()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 311
    .local v0, "prevChildHasAppliedCollapseAfter":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v5}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 315
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginTop()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    .line 316
    .local v2, "prevChildCanApplyCollapseAfter":Z
    :cond_4
    :goto_1
    if-nez p3, :cond_7

    if-eqz v2, :cond_7

    .line 317
    iget-object v3, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v3

    .line 318
    .local v3, "ownCollapseAfter":Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v1

    .line 319
    .local v1, "ownCollapsedMargins":F
    :goto_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_3

    .line 321
    .end local v0    # "prevChildHasAppliedCollapseAfter":Z
    .end local v1    # "ownCollapsedMargins":F
    .end local v2    # "prevChildCanApplyCollapseAfter":Z
    .end local v3    # "ownCollapseAfter":Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    :cond_6
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstNotEmptyKidIndex:I

    if-le p2, v0, :cond_7

    .line 322
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->lastChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 325
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v0

    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getUsedBufferSpaceOnBottom()F

    move-result v2

    sub-float/2addr v0, v2

    .line 326
    .local v0, "bottomIndent":F
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnBottom()F

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getUsedBufferSpaceOnBottom()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnBottom(F)V

    .line 327
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setUsedBufferSpaceOnBottom(F)V

    .line 328
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 329
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_4

    .line 321
    .end local v0    # "bottomIndent":F
    :cond_7
    :goto_3
    nop

    .line 334
    :cond_8
    :goto_4
    if-nez p3, :cond_a

    .line 335
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstNotEmptyKidIndex:I

    if-ne p2, v0, :cond_9

    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 336
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v0

    .line 337
    .local v0, "topIndent":F
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->applyTopMargin(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    .line 341
    .end local v0    # "topIndent":F
    :cond_9
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->lastChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 342
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v0

    .line 343
    .local v0, "bottomIndent":F
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->applyBottomMargin(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    .line 346
    .end local v0    # "bottomIndent":F
    :cond_a
    return-void
.end method

.method private processUsedChildBufferSpaceOnTop(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 3
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 391
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getUsedBufferSpaceOnTop()F

    move-result v0

    .line 392
    .local v0, "childUsedBufferSpaceOnTop":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnTop()F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnTop()F

    move-result v0

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnTop()F

    move-result v2

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnTop(F)V

    .line 398
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setUsedBufferSpaceOnTop(F)V

    .line 401
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 403
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->subtractUsedTopBufferFromBottomBuffer(F)V

    .line 405
    :cond_1
    return-void
.end method

.method private removeRendererChild(I)Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1
    .param p1, "index"    # I

    .line 479
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->rendererChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    return-object v0
.end method

.method private static rendererIsFloated(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 3
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 575
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 576
    return v0

    .line 578
    :cond_0
    const/16 v1, 0x63

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/FloatPropertyValue;

    .line 579
    .local v1, "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    if-eqz v1, :cond_1

    sget-object v2, Lcom/itextpdf/layout/property/FloatPropertyValue;->NONE:Lcom/itextpdf/layout/property/FloatPropertyValue;

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/property/FloatPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private restoreLayoutBoxAfterFailedLayoutAttempt(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 2
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 349
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupLayoutBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupLayoutBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupLayoutBox:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 350
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupLayoutBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 351
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupCollapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->copyTo(Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupLayoutBox:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 354
    iput-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupCollapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 355
    return-void
.end method

.method private subtractUsedTopBufferFromBottomBuffer(F)V
    .locals 2
    .param p1, "usedTopBuffer"    # F

    .line 408
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnTop()F

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnBottom()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnTop()F

    move-result v0

    sub-float/2addr v0, p1

    .line 410
    .local v0, "bufferLeftoversOnTop":F
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnBottom()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnBottom(F)V

    .line 413
    .end local v0    # "bufferLeftoversOnTop":F
    :cond_0
    goto :goto_0

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnBottom()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnBottom(F)V

    .line 416
    :goto_0
    return-void
.end method

.method private updateCollapseBeforeIfPrevKidIsFirstAndSelfCollapsed(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V
    .locals 1
    .param p1, "collapseAfter"    # Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    .line 301
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginTop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->joinMargin(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 305
    :cond_0
    return-void
.end method


# virtual methods
.method public applyClearance(F)V
    .locals 2
    .param p1, "clearHeightCorrection"    # F

    .line 131
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setClearanceApplied(Z)V

    .line 132
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->joinMargin(F)V

    .line 133
    return-void
.end method

.method public endChildMarginsHandling(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 5
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 170
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->processedChildrenNum:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 171
    .local v0, "childIndex":I
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->getRendererChild(I)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->rendererIsFloated(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    return-void

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 176
    iget v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstNotEmptyKidIndex:I

    if-ne v4, v0, :cond_1

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstNotEmptyKidIndex:I

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setSelfCollapsing(Z)V

    .line 181
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isClearanceApplied()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->lastKidCollapsedAfterHasClearanceApplied:Z

    goto :goto_2

    .line 183
    :cond_4
    iput-boolean v3, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->lastKidCollapsedAfterHasClearanceApplied:Z

    .line 184
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1, v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setSelfCollapsing(Z)V

    .line 187
    :goto_2
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    if-eqz v1, :cond_5

    .line 188
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->fixPrevChildOccupiedArea(I)V

    .line 190
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->updateCollapseBeforeIfPrevKidIsFirstAndSelfCollapsed(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 193
    :cond_5
    iget v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstNotEmptyKidIndex:I

    if-ne v1, v0, :cond_6

    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 194
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v1

    if-nez v1, :cond_6

    .line 195
    invoke-direct {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->getRidOfCollapseArtifactsAtopOccupiedArea()V

    .line 196
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    if-eqz v1, :cond_6

    .line 197
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->processUsedChildBufferSpaceOnTop(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 202
    :cond_6
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    iput-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 205
    iput-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupLayoutBox:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 206
    iput-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupCollapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 207
    return-void
.end method

.method public endMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 7
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 228
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupLayoutBox:Lcom/itextpdf/kernel/geom/Rectangle;

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->restoreLayoutBoxAfterFailedLayoutAttempt(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->updateCollapseBeforeIfPrevKidIsFirstAndSelfCollapsed(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->marginsCouldBeSelfCollapsing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->lastKidCollapsedAfterHasClearanceApplied:Z

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 237
    .local v0, "couldBeSelfCollapsing":Z
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v3

    .line 238
    .local v3, "blockHasNoKidsWithContent":Z
    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 239
    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    .line 240
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->addNotYetAppliedTopMargin(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 243
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    move v5, v1

    goto :goto_1

    :cond_4
    move v5, v2

    :goto_1
    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setSelfCollapsing(Z)V

    .line 245
    if-nez v3, :cond_5

    iget-boolean v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->lastKidCollapsedAfterHasClearanceApplied:Z

    if-eqz v4, :cond_5

    .line 246
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->applySelfCollapsedKidMarginWithClearance(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 250
    :cond_5
    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginBottom()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->lastKidCollapsedAfterHasClearanceApplied:Z

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    .line 251
    .local v1, "lastChildMarginJoinedToParent":Z
    :goto_2
    if-eqz v1, :cond_7

    .line 252
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v2

    .local v2, "ownCollapseAfter":Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    goto :goto_3

    .line 254
    .end local v2    # "ownCollapseAfter":Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    :cond_7
    new-instance v2, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-direct {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;-><init>()V

    .line 256
    .restart local v2    # "ownCollapseAfter":Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    :goto_3
    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->getModelBottomMargin(Lcom/itextpdf/layout/renderer/IRenderer;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->joinMargin(F)V

    .line 257
    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v4, v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setOwnCollapseAfter(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 259
    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 260
    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    if-eqz v4, :cond_8

    .line 261
    iget-object v5, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setCollapseAfter(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    goto :goto_4

    .line 263
    :cond_8
    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v5}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->joinMargin(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 264
    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v5}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->joinMargin(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 266
    :goto_4
    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginBottom()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginTop()Z

    move-result v4

    if-nez v4, :cond_c

    .line 267
    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v4

    .line 268
    .local v4, "collapsedMargins":F
    iget-object v5, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v5, v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->overrideModelBottomMargin(Lcom/itextpdf/layout/renderer/IRenderer;F)V

    .line 269
    .end local v4    # "collapsedMargins":F
    goto :goto_5

    .line 271
    :cond_9
    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v4

    .line 272
    .local v4, "marginsCollapseBefore":Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    iget-object v5, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v5}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginTop()Z

    move-result v5

    if-nez v5, :cond_a

    .line 273
    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v5

    .line 274
    .local v5, "collapsedMargins":F
    iget-object v6, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v6, v5}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->overrideModelTopMargin(Lcom/itextpdf/layout/renderer/IRenderer;F)V

    .line 277
    .end local v5    # "collapsedMargins":F
    :cond_a
    if-eqz v1, :cond_b

    .line 278
    iget-object v5, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    iget-object v6, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v6}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setCollapseAfter(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 280
    :cond_b
    iget-object v5, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v5}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginBottom()Z

    move-result v5

    if-nez v5, :cond_c

    .line 281
    iget-object v5, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v5}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v5

    .line 282
    .restart local v5    # "collapsedMargins":F
    iget-object v6, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v6, v5}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->overrideModelBottomMargin(Lcom/itextpdf/layout/renderer/IRenderer;F)V

    .line 286
    .end local v4    # "marginsCollapseBefore":Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    .end local v5    # "collapsedMargins":F
    :cond_c
    :goto_5
    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->lastChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    if-nez v4, :cond_d

    if-eqz v3, :cond_e

    .line 288
    :cond_d
    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v4

    .line 295
    .local v4, "collapsedMargins":F
    invoke-direct {p0, p1, v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->applyBottomMargin(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    .line 298
    .end local v4    # "collapsedMargins":F
    :cond_e
    return-void
.end method

.method public processFixedHeightAdjustment(F)V
    .locals 2
    .param p1, "heightDelta"    # F

    .line 95
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnTop()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnTop(F)V

    .line 96
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnBottom()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnBottom(F)V

    .line 97
    return-void
.end method

.method public startChildMarginsHandling(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .locals 4
    .param p1, "child"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 100
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupLayoutBox:Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->restoreLayoutBoxAfterFailedLayoutAttempt(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 103
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->processedChildrenNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->processedChildrenNum:I

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->removeRendererChild(I)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->rendererChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->processedChildrenNum:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->processedChildrenNum:I

    .line 113
    .local v0, "childIndex":I
    invoke-static {p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->rendererIsFloated(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->isBlockElement(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 115
    .local v1, "childIsBlockElement":Z
    :goto_0
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupLayoutBox:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 116
    new-instance v2, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-direct {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupCollapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 117
    iget-object v3, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v3, v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->copyTo(Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    .line 119
    invoke-direct {p0, p2, v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prepareBoxForLayoutAttempt(Lcom/itextpdf/kernel/geom/Rectangle;IZ)V

    .line 121
    if-eqz v1, :cond_2

    .line 122
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->createMarginsInfoForBlockChild(I)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 124
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    return-object v2
.end method

.method public startMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 2
    .param p1, "parentBBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 210
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->getModelTopMargin(Lcom/itextpdf/layout/renderer/IRenderer;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->joinMargin(F)V

    .line 211
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->getModelBottomMargin(Lcom/itextpdf/layout/renderer/IRenderer;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->joinMargin(F)V

    .line 213
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v0

    .line 215
    .local v0, "topIndent":F
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->applyTopMargin(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    .line 217
    .end local v0    # "topIndent":F
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->lastChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v0

    .line 219
    .local v0, "bottomIndent":F
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->applyBottomMargin(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    .line 223
    .end local v0    # "bottomIndent":F
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->ignoreModelTopMargin(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 224
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->ignoreModelBottomMargin(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 225
    return-void
.end method
