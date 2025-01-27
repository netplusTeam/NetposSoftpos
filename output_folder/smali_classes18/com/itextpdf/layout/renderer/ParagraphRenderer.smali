.class public Lcom/itextpdf/layout/renderer/ParagraphRenderer;
.super Lcom/itextpdf/layout/renderer/BlockRenderer;
.source "ParagraphRenderer.java"


# instance fields
.field protected lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/LineRenderer;",
            ">;"
        }
    .end annotation
.end field

.field protected previousDescent:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/element/Paragraph;)V
    .locals 1
    .param p1, "modelElement"    # Lcom/itextpdf/layout/element/Paragraph;

    .line 97
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;-><init>(Lcom/itextpdf/layout/element/IElement;)V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->previousDescent:F

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    .line 98
    return-void
.end method

.method private alignStaticKids(Lcom/itextpdf/layout/renderer/LineRenderer;F)V
    .locals 3
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/LineRenderer;
    .param p2, "dxRight"    # F

    .line 684
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 685
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 686
    .local v1, "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-static {v1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 687
    goto :goto_0

    .line 689
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 690
    .end local v1    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_0

    .line 691
    :cond_1
    return-void
.end method

.method private applyTextAlignment(Lcom/itextpdf/layout/property/TextAlignment;Lcom/itextpdf/layout/layout/LineLayoutResult;Lcom/itextpdf/layout/renderer/LineRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/List;ZF)V
    .locals 4
    .param p1, "textAlignment"    # Lcom/itextpdf/layout/property/TextAlignment;
    .param p2, "result"    # Lcom/itextpdf/layout/layout/LineLayoutResult;
    .param p3, "processedRenderer"    # Lcom/itextpdf/layout/renderer/LineRenderer;
    .param p4, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p6, "onlyOverflowedFloatsLeft"    # Z
    .param p7, "lineIndent"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/property/TextAlignment;",
            "Lcom/itextpdf/layout/layout/LineLayoutResult;",
            "Lcom/itextpdf/layout/renderer/LineRenderer;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;ZF)V"
        }
    .end annotation

    .line 695
    .local p5, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    sget-object v0, Lcom/itextpdf/layout/property/TextAlignment;->JUSTIFIED:Lcom/itextpdf/layout/property/TextAlignment;

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LineLayoutResult;->isSplitForcedByNewline()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p6, :cond_1

    :cond_0
    sget-object v0, Lcom/itextpdf/layout/property/TextAlignment;->JUSTIFIED_ALL:Lcom/itextpdf/layout/property/TextAlignment;

    if-ne p1, v0, :cond_2

    .line 697
    :cond_1
    if-eqz p3, :cond_3

    .line 698
    invoke-virtual {p4}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 699
    .local v0, "actualLineLayoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-static {p5, v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustLineAreaAccordingToFloats(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 700
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    sub-float/2addr v1, p7

    invoke-virtual {p3, v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->justify(F)V

    .line 701
    .end local v0    # "actualLineLayoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    goto :goto_0

    .line 702
    :cond_2
    sget-object v0, Lcom/itextpdf/layout/property/TextAlignment;->LEFT:Lcom/itextpdf/layout/property/TextAlignment;

    if-eq p1, v0, :cond_3

    if-eqz p3, :cond_3

    .line 703
    invoke-virtual {p4}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 704
    .restart local v0    # "actualLineLayoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-static {p5, v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustLineAreaAccordingToFloats(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 705
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    sub-float/2addr v2, p7

    invoke-virtual {p3}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 706
    .local v1, "deltaX":F
    sget-object v2, Lcom/itextpdf/layout/renderer/ParagraphRenderer$1;->$SwitchMap$com$itextpdf$layout$property$TextAlignment:[I

    invoke-virtual {p1}, Lcom/itextpdf/layout/property/TextAlignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 714
    :pswitch_0
    sget-object v2, Lcom/itextpdf/layout/property/BaseDirection;->RIGHT_TO_LEFT:Lcom/itextpdf/layout/property/BaseDirection;

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/property/BaseDirection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 715
    invoke-direct {p0, p3, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->alignStaticKids(Lcom/itextpdf/layout/renderer/LineRenderer;F)V

    goto :goto_0

    .line 711
    :pswitch_1
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    invoke-direct {p0, p3, v2}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->alignStaticKids(Lcom/itextpdf/layout/renderer/LineRenderer;F)V

    .line 712
    goto :goto_0

    .line 708
    :pswitch_2
    invoke-direct {p0, p3, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->alignStaticKids(Lcom/itextpdf/layout/renderer/LineRenderer;F)V

    .line 720
    .end local v0    # "actualLineLayoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v1    # "deltaX":F
    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createOverflowRenderer()Lcom/itextpdf/layout/renderer/ParagraphRenderer;
    .locals 1

    .line 603
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    return-object v0
.end method

.method private createSplitRenderer()Lcom/itextpdf/layout/renderer/ParagraphRenderer;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    return-object v0
.end method

.method private fixOverflowRenderer(Lcom/itextpdf/layout/renderer/ParagraphRenderer;)V
    .locals 4
    .param p1, "overflowRenderer"    # Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    .line 677
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 678
    .local v1, "firstLineIndent":F
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_0

    .line 679
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->setProperty(ILjava/lang/Object;)V

    .line 681
    :cond_0
    return-void
.end method

.method private static updateParentLines(Lcom/itextpdf/layout/renderer/ParagraphRenderer;)V
    .locals 5
    .param p0, "re"    # Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    .line 723
    if-nez p0, :cond_0

    .line 724
    return-void

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/LineRenderer;

    .line 727
    .local v1, "lineRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    invoke-virtual {v1, p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 728
    .end local v1    # "lineRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    goto :goto_0

    .line 729
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 730
    .local v1, "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    .line 731
    .local v2, "line":Lcom/itextpdf/layout/renderer/IRenderer;
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/LineRenderer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    move-object v4, v2

    check-cast v4, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 732
    :cond_2
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 734
    .end local v1    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v2    # "line":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_3
    goto :goto_1

    .line 735
    :cond_4
    return-void
.end method


# virtual methods
.method protected createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 1
    .param p1, "layoutResult"    # I

    .line 627
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->createOverflowRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    move-result-object v0

    return-object v0
.end method

.method protected createOverflowRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/ParagraphRenderer;
    .locals 2
    .param p1, "parent"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 611
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->createOverflowRenderer()Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    move-result-object v0

    .line 612
    .local v0, "overflowRenderer":Lcom/itextpdf/layout/renderer/ParagraphRenderer;
    iput-object p1, v0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 613
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->fixOverflowRenderer(Lcom/itextpdf/layout/renderer/ParagraphRenderer;)V

    .line 614
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 615
    return-object v0
.end method

.method protected createSplitRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/ParagraphRenderer;
    .locals 2
    .param p1, "parent"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 619
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->createSplitRenderer()Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    move-result-object v0

    .line 620
    .local v0, "splitRenderer":Lcom/itextpdf/layout/renderer/ParagraphRenderer;
    iput-object p1, v0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 621
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 622
    return-object v0
.end method

.method protected directLayout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 72
    .param p1, "layoutContext"    # Lcom/itextpdf/layout/layout/LayoutContext;

    .line 117
    move-object/from16 v8, p0

    const/4 v7, 0x0

    .line 118
    .local v7, "wasHeightClipped":Z
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->isClippedHeight()Z

    move-result v9

    .line 119
    .local v9, "wasParentsHeightClipped":Z
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v10

    .line 120
    .local v10, "pageNumber":I
    const/4 v6, 0x0

    .line 121
    .local v6, "anythingPlaced":Z
    const/4 v11, 0x1

    .line 122
    .local v11, "firstLineInBox":Z
    new-instance v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-direct {v0}, Lcom/itextpdf/layout/renderer/LineRenderer;-><init>()V

    invoke-virtual {v0, v8}, Lcom/itextpdf/layout/renderer/LineRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/itextpdf/layout/renderer/LineRenderer;

    .line 123
    .local v12, "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v13

    .line 125
    .local v13, "parentBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v0, 0x0

    .line 126
    .local v0, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v2, 0x59

    invoke-virtual {v8, v2}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 127
    .local v14, "marginsCollapsingEnabled":Z
    if-eqz v14, :cond_0

    .line 128
    new-instance v1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getMarginsCollapseInfo()Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object v2

    invoke-direct {v1, v8, v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;-><init>(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    move-object v0, v1

    move-object v15, v0

    goto :goto_0

    .line 127
    :cond_0
    move-object v15, v0

    .line 131
    .end local v0    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .local v15, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    :goto_0
    const/16 v5, 0x67

    invoke-virtual {v8, v5}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/itextpdf/layout/property/OverflowPropertyValue;

    .line 133
    .local v4, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    const/16 v0, 0x76

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v3

    .line 134
    .local v3, "nowrapProp":Ljava/lang/Boolean;
    invoke-virtual {v12, v0, v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    .line 136
    const/16 v16, 0x0

    .line 137
    .local v16, "notAllKidsAreFloats":Z
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v2

    .line 138
    .local v2, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    const/16 v0, 0x63

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/layout/property/FloatPropertyValue;

    .line 139
    .local v1, "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    invoke-static {v8, v2, v13}, Lcom/itextpdf/layout/renderer/FloatingHelper;->calculateClearHeightCorrection(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)F

    move-result v0

    .line 140
    .local v0, "clearHeightCorrection":F
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v5

    invoke-static {v13, v15, v0, v5}, Lcom/itextpdf/layout/renderer/FloatingHelper;->applyClearance(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;FZ)V

    .line 141
    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    invoke-virtual {v8, v5}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object v18

    .line 142
    .local v18, "blockWidth":Ljava/lang/Float;
    invoke-static {v8, v1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/property/FloatPropertyValue;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    move v5, v0

    .end local v0    # "clearHeightCorrection":F
    .local v5, "clearHeightCorrection":F
    move-object/from16 v0, p0

    move-object/from16 v19, v1

    .end local v1    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .local v19, "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    move-object v1, v13

    move-object/from16 v20, v2

    .end local v2    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v20, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    move-object/from16 v2, v18

    move-object/from16 v21, v3

    .end local v3    # "nowrapProp":Ljava/lang/Boolean;
    .local v21, "nowrapProp":Ljava/lang/Boolean;
    move-object/from16 v3, v20

    move-object/from16 v22, v4

    .end local v4    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v22, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    move-object/from16 v4, v19

    move/from16 v23, v11

    move-object/from16 v17, v12

    const/16 v12, 0x67

    move v11, v5

    .end local v5    # "clearHeightCorrection":F
    .end local v12    # "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .local v11, "clearHeightCorrection":F
    .local v17, "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .local v23, "firstLineInBox":Z
    move-object/from16 v5, v22

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustFloatedBlockLayoutBox(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Ljava/util/List;Lcom/itextpdf/layout/property/FloatPropertyValue;Lcom/itextpdf/layout/property/OverflowPropertyValue;)Ljava/lang/Float;

    move-result-object v18

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    move-object v5, v2

    .end local v20    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v2    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    goto :goto_1

    .line 142
    .end local v17    # "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .end local v19    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .end local v21    # "nowrapProp":Ljava/lang/Boolean;
    .end local v22    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v23    # "firstLineInBox":Z
    .restart local v0    # "clearHeightCorrection":F
    .restart local v1    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .restart local v3    # "nowrapProp":Ljava/lang/Boolean;
    .restart local v4    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v11, "firstLineInBox":Z
    .restart local v12    # "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    :cond_1
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v11

    move-object/from16 v17, v12

    const/16 v12, 0x67

    move v11, v0

    .end local v0    # "clearHeightCorrection":F
    .end local v1    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .end local v2    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v3    # "nowrapProp":Ljava/lang/Boolean;
    .end local v4    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v12    # "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .local v11, "clearHeightCorrection":F
    .restart local v17    # "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .restart local v19    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .restart local v20    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v21    # "nowrapProp":Ljava/lang/Boolean;
    .restart local v22    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v23    # "firstLineInBox":Z
    move-object/from16 v5, v20

    .line 147
    .end local v20    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v5, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :goto_1
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 148
    const/4 v6, 0x1

    .line 149
    const/4 v0, 0x0

    move/from16 v17, v6

    move-object v6, v0

    .end local v17    # "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .local v0, "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    goto :goto_2

    .line 147
    .end local v0    # "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .restart local v17    # "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    :cond_2
    move-object/from16 v71, v17

    move/from16 v17, v6

    move-object/from16 v6, v71

    .line 152
    .local v6, "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .local v17, "anythingPlaced":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isPositioned()Z

    move-result v20

    .line 153
    .local v20, "isPositioned":Z
    const/16 v0, 0x37

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v24

    .line 155
    .local v24, "rotation":Ljava/lang/Float;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->retrieveMaxHeight()Ljava/lang/Float;

    move-result-object v25

    .line 156
    .local v25, "blockMaxHeight":Ljava/lang/Float;
    const/16 v4, 0x68

    if-eqz v25, :cond_3

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    :cond_3
    if-nez v9, :cond_4

    sget-object v0, Lcom/itextpdf/layout/property/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    goto :goto_3

    .line 159
    :cond_4
    invoke-virtual {v8, v4}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/OverflowPropertyValue;

    :goto_3
    move-object v3, v0

    .line 161
    .local v3, "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    if-nez v24, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isFixedLayout()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 162
    :cond_5
    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    const v1, 0x49742400    # 1000000.0f

    sub-float v0, v1, v0

    invoke-virtual {v13, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 164
    :cond_6
    if-eqz v24, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 165
    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-static {v0, v8}, Lcom/itextpdf/layout/renderer/RotationUtils;->retrieveRotatedLayoutWidth(FLcom/itextpdf/layout/renderer/AbstractRenderer;)Ljava/lang/Float;

    move-result-object v18

    move-object/from16 v2, v18

    goto :goto_4

    .line 168
    :cond_7
    move-object/from16 v2, v18

    .end local v18    # "blockWidth":Ljava/lang/Float;
    .local v2, "blockWidth":Ljava/lang/Float;
    :goto_4
    if-eqz v14, :cond_8

    .line 169
    invoke-virtual {v15, v13}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->startMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 171
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v1

    .line 172
    .local v1, "borders":[Lcom/itextpdf/layout/borders/Border;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPaddings()[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 174
    .local v0, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v8, v13, v1, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyBordersPaddingsMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;[Lcom/itextpdf/layout/property/UnitValue;)F

    move-result v12

    .line 175
    .local v12, "additionalWidth":F
    move-object/from16 v4, v22

    .end local v22    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v4    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    invoke-virtual {v8, v13, v2, v4}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyWidth(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Lcom/itextpdf/layout/property/OverflowPropertyValue;)V

    .line 176
    const/16 v22, 0x0

    move-object/from16 v27, v0

    .end local v0    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v27, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    move-object/from16 v0, p0

    move-object/from16 v28, v1

    .end local v1    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v28, "borders":[Lcom/itextpdf/layout/borders/Border;
    move-object v1, v13

    move-object/from16 v29, v2

    .end local v2    # "blockWidth":Ljava/lang/Float;
    .local v29, "blockWidth":Ljava/lang/Float;
    move-object/from16 v2, v25

    move-object/from16 v30, v3

    .end local v3    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v30, "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    move-object v3, v15

    move/from16 v26, v7

    move/from16 v31, v11

    const/16 v7, 0x68

    move-object v11, v4

    .end local v4    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v7    # "wasHeightClipped":Z
    .local v11, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v26, "wasHeightClipped":Z
    .local v31, "clearHeightCorrection":F
    move/from16 v4, v22

    move-object v7, v5

    .end local v5    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v7, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    move v5, v9

    move/from16 v32, v9

    move-object v9, v6

    .end local v6    # "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .local v9, "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .local v32, "wasParentsHeightClipped":Z
    move-object/from16 v6, v30

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyMaxHeight(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;ZZLcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v26

    .line 178
    new-instance v0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-direct {v0, v12}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>(F)V

    move-object v6, v0

    .line 179
    .local v6, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    new-instance v0, Lcom/itextpdf/layout/renderer/MaxMaxWidthHandler;

    invoke-direct {v0, v6}, Lcom/itextpdf/layout/renderer/MaxMaxWidthHandler;-><init>(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)V

    move-object v5, v0

    .line 182
    .local v5, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    if-eqz v20, :cond_9

    .line 183
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    .local v0, "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    goto :goto_5

    .line 185
    .end local v0    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :cond_9
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-direct {v0, v10, v13}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->initElementAreas(Lcom/itextpdf/layout/layout/LayoutArea;)Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    .line 188
    .local v4, "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :goto_5
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v2

    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v33

    add-float v3, v3, v33

    move-object/from16 v33, v6

    .end local v6    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v33, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    move/from16 v34, v12

    .end local v12    # "additionalWidth":F
    .local v34, "additionalWidth":F
    const/4 v12, 0x0

    invoke-direct {v1, v2, v3, v6, v12}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v0, v10, v1}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->shrinkOccupiedAreaForAbsolutePosition()V

    .line 191
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->addPageByID(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "currentAreaPos":I
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 195
    .local v1, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    .line 196
    iget-object v2, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 197
    .local v3, "child":Lcom/itextpdf/layout/renderer/IRenderer;
    if-nez v16, :cond_b

    invoke-static {v3}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v36

    if-nez v36, :cond_a

    goto :goto_7

    :cond_a
    move v12, v6

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v12, 0x1

    :goto_8
    move/from16 v16, v12

    .line 198
    invoke-virtual {v9, v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 199
    .end local v3    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    const/4 v12, 0x0

    goto :goto_6

    .line 201
    :cond_c
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    .line 203
    .local v2, "lastYLine":F
    const/4 v3, 0x0

    .line 204
    .local v3, "previousDescent":F
    const/16 v36, 0x0

    .line 205
    .local v36, "lastLineBottomLeadingIndent":F
    const/16 v37, 0x0

    .line 206
    .local v37, "onlyOverflowedFloatsLeft":Z
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v39, v38

    .line 207
    .local v39, "inlineFloatsOverflowedToNextPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    const/16 v38, 0x0

    .line 210
    .local v38, "floatOverflowedToNextPageWithNothing":Z
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 212
    .local v6, "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    if-eqz v14, :cond_d

    iget-object v12, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_d

    .line 214
    const/4 v12, 0x0

    invoke-virtual {v15, v12, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->startChildMarginsHandling(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 216
    :cond_d
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockFormattingContextUtil;->isRendererCreateBfc(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v12

    move/from16 v42, v37

    move/from16 v37, v17

    move/from16 v17, v2

    move-object v2, v9

    move v9, v0

    move/from16 v71, v3

    move-object v3, v1

    move/from16 v1, v38

    move/from16 v38, v36

    move/from16 v36, v23

    move/from16 v23, v71

    .line 217
    .end local v0    # "currentAreaPos":I
    .local v1, "floatOverflowedToNextPageWithNothing":Z
    .local v2, "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .local v3, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v9, "currentAreaPos":I
    .local v12, "includeFloatsInOccupiedArea":Z
    .local v17, "lastYLine":F
    .local v23, "previousDescent":F
    .local v36, "firstLineInBox":Z
    .local v37, "anythingPlaced":Z
    .local v38, "lastLineBottomLeadingIndent":F
    .local v42, "onlyOverflowedFloatsLeft":Z
    :goto_9
    move-object/from16 v43, v13

    .end local v13    # "parentBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v43, "parentBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    if-eqz v2, :cond_43

    .line 218
    const/16 v0, 0x43

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v2, v0, v13}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    .line 219
    const/16 v0, 0x45

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v2, v0, v13}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    .line 221
    if-eqz v37, :cond_e

    const/4 v0, 0x0

    goto :goto_a

    :cond_e
    const/16 v0, 0x12

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_a
    move v13, v0

    .line 222
    .local v13, "lineIndent":F
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    move-object/from16 v46, v4

    .end local v4    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v46, "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v4

    move-object/from16 v47, v6

    .end local v6    # "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v47, "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v6

    move/from16 v48, v12

    .end local v12    # "includeFloatsInOccupiedArea":Z
    .local v48, "includeFloatsInOccupiedArea":Z
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v12

    move-object/from16 v49, v15

    .end local v15    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .local v49, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v15

    invoke-direct {v0, v4, v6, v12, v15}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object v12, v0

    .line 223
    .local v12, "childLayoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    const/16 v15, 0x67

    invoke-virtual {v2, v15, v11}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    .line 224
    move-object/from16 v6, v30

    const/16 v4, 0x68

    .end local v30    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v6, "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    invoke-virtual {v2, v4, v6}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    .line 226
    new-instance v0, Lcom/itextpdf/layout/layout/LineLayoutContext;

    new-instance v4, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-direct {v4, v10, v12}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    if-nez v26, :cond_10

    if-eqz v32, :cond_f

    goto :goto_b

    :cond_f
    const/4 v15, 0x0

    goto :goto_c

    :cond_10
    :goto_b
    const/4 v15, 0x1

    :goto_c
    move-object/from16 v30, v6

    const/4 v6, 0x0

    .end local v6    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v30    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    invoke-direct {v0, v4, v6, v7, v15}, Lcom/itextpdf/layout/layout/LineLayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;Ljava/util/List;Z)V

    .line 228
    invoke-virtual {v0, v13}, Lcom/itextpdf/layout/layout/LineLayoutContext;->setTextIndent(F)Lcom/itextpdf/layout/layout/LineLayoutContext;

    move-result-object v0

    .line 229
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/layout/LineLayoutContext;->setFloatOverflowedToNextPageWithNothing(Z)Lcom/itextpdf/layout/layout/LineLayoutContext;

    move-result-object v15

    .line 230
    .local v15, "lineLayoutContext":Lcom/itextpdf/layout/layout/LineLayoutContext;
    invoke-virtual {v2, v8}, Lcom/itextpdf/layout/renderer/LineRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-virtual {v0, v15}, Lcom/itextpdf/layout/renderer/LineRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/itextpdf/layout/layout/LineLayoutResult;

    .line 232
    .local v6, "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getStatus()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_14

    .line 233
    invoke-static {v7, v3}, Lcom/itextpdf/layout/renderer/FloatingHelper;->calculateLineShiftUnderFloats(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)Ljava/lang/Float;

    move-result-object v0

    .line 234
    .local v0, "lineShiftUnderFloats":Ljava/lang/Float;
    if-eqz v0, :cond_11

    .line 235
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 236
    const/16 v36, 0x1

    .line 237
    move-object/from16 v13, v43

    move-object/from16 v4, v46

    move-object/from16 v6, v47

    move/from16 v12, v48

    move-object/from16 v15, v49

    goto/16 :goto_9

    .line 240
    :cond_11
    iget-object v4, v2, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/16 v41, 0x1

    xor-int/lit8 v4, v4, 0x1

    .line 241
    .local v4, "allRemainingKidsAreFloats":Z
    move-object/from16 v50, v0

    .end local v0    # "lineShiftUnderFloats":Ljava/lang/Float;
    .local v50, "lineShiftUnderFloats":Ljava/lang/Float;
    iget-object v0, v2, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 242
    .local v51, "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    if-eqz v4, :cond_12

    invoke-static/range {v51 .. v51}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v52

    if-eqz v52, :cond_12

    const/16 v52, 0x1

    goto :goto_e

    :cond_12
    const/16 v52, 0x0

    :goto_e
    move/from16 v4, v52

    .line 243
    .end local v51    # "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_d

    .line 244
    :cond_13
    if-eqz v4, :cond_14

    .line 245
    const/16 v42, 0x1

    .line 249
    .end local v4    # "allRemainingKidsAreFloats":Z
    .end local v50    # "lineShiftUnderFloats":Ljava/lang/Float;
    :cond_14
    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LineLayoutContext;->isFloatOverflowedToNextPageWithNothing()Z

    move-result v50

    .line 250
    .end local v1    # "floatOverflowedToNextPageWithNothing":Z
    .local v50, "floatOverflowedToNextPageWithNothing":Z
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getFloatsOverflowedToNextPage()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 251
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getFloatsOverflowedToNextPage()Ljava/util/List;

    move-result-object v0

    move-object/from16 v4, v39

    .end local v39    # "inlineFloatsOverflowedToNextPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v4, "inlineFloatsOverflowedToNextPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    .line 250
    .end local v4    # "inlineFloatsOverflowedToNextPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v39    # "inlineFloatsOverflowedToNextPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :cond_15
    move-object/from16 v4, v39

    .line 254
    .end local v39    # "inlineFloatsOverflowedToNextPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v4    # "inlineFloatsOverflowedToNextPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :goto_f
    const/4 v0, 0x0

    .line 255
    .local v0, "minChildWidth":F
    const/4 v1, 0x0

    .line 256
    .local v1, "maxChildWidth":F
    move/from16 v39, v0

    .end local v0    # "minChildWidth":F
    .local v39, "minChildWidth":F
    instance-of v0, v6, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    if-eqz v0, :cond_16

    .line 257
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v0

    .line 258
    .end local v39    # "minChildWidth":F
    .restart local v0    # "minChildWidth":F
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v1

    move/from16 v71, v1

    move v1, v0

    move/from16 v0, v71

    goto :goto_10

    .line 256
    .end local v0    # "minChildWidth":F
    .restart local v39    # "minChildWidth":F
    :cond_16
    move v0, v1

    move/from16 v1, v39

    .line 261
    .end local v39    # "minChildWidth":F
    .local v0, "maxChildWidth":F
    .local v1, "minChildWidth":F
    :goto_10
    invoke-virtual {v5, v1}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    .line 262
    invoke-virtual {v5, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    .line 264
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v39

    check-cast v39, Lcom/itextpdf/layout/renderer/LineRenderer;

    .line 265
    .local v39, "processedRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    if-nez v39, :cond_17

    move/from16 v51, v0

    .end local v0    # "maxChildWidth":F
    .local v51, "maxChildWidth":F
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getStatus()I

    move-result v0

    move/from16 v52, v1

    const/4 v1, 0x1

    .end local v1    # "minChildWidth":F
    .local v52, "minChildWidth":F
    if-ne v0, v1, :cond_18

    .line 266
    move-object/from16 v39, v2

    goto :goto_11

    .line 265
    .end local v51    # "maxChildWidth":F
    .end local v52    # "minChildWidth":F
    .restart local v0    # "maxChildWidth":F
    .restart local v1    # "minChildWidth":F
    :cond_17
    move/from16 v51, v0

    move/from16 v52, v1

    .line 269
    .end local v0    # "maxChildWidth":F
    .end local v1    # "minChildWidth":F
    .restart local v51    # "maxChildWidth":F
    .restart local v52    # "minChildWidth":F
    :cond_18
    :goto_11
    if-eqz v42, :cond_19

    .line 273
    const/16 v39, 0x0

    move-object/from16 v1, v39

    goto :goto_12

    .line 269
    :cond_19
    move-object/from16 v1, v39

    .line 276
    .end local v39    # "processedRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .local v1, "processedRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    :goto_12
    const/16 v0, 0x46

    move-object/from16 v39, v1

    .end local v1    # "processedRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .restart local v39    # "processedRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    sget-object v1, Lcom/itextpdf/layout/property/TextAlignment;->LEFT:Lcom/itextpdf/layout/property/TextAlignment;

    invoke-virtual {v8, v0, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v53, v0

    check-cast v53, Lcom/itextpdf/layout/property/TextAlignment;

    .line 277
    .local v53, "textAlignment":Lcom/itextpdf/layout/property/TextAlignment;
    move/from16 v44, v51

    const/16 v1, 0x1a

    .end local v51    # "maxChildWidth":F
    .local v44, "maxChildWidth":F
    move-object/from16 v0, p0

    move-object/from16 v51, v39

    move/from16 v39, v52

    move/from16 v52, v10

    move v10, v1

    .end local v10    # "pageNumber":I
    .local v39, "minChildWidth":F
    .local v51, "processedRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .local v52, "pageNumber":I
    move-object/from16 v1, v53

    move-object/from16 v54, v2

    .end local v2    # "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .local v54, "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    move-object v2, v6

    move-object/from16 v55, v3

    .end local v3    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v55, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    move-object/from16 v3, v51

    move-object v10, v4

    move-object/from16 v56, v46

    const/16 v46, 0x68

    .end local v4    # "inlineFloatsOverflowedToNextPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v46    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v10, "inlineFloatsOverflowedToNextPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v56, "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    move-object/from16 v4, v55

    move-object/from16 v57, v5

    .end local v5    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v57, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    move-object v5, v7

    move-object/from16 v58, v12

    move-object/from16 v59, v33

    move-object/from16 v12, v47

    move-object/from16 v33, v6

    .end local v6    # "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    .end local v47    # "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v12, "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v33, "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    .local v58, "childLayoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v59, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    move/from16 v6, v42

    move-object/from16 v47, v15

    move-object v15, v7

    .end local v7    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v15, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v47, "lineLayoutContext":Lcom/itextpdf/layout/layout/LineLayoutContext;
    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyTextAlignment(Lcom/itextpdf/layout/property/TextAlignment;Lcom/itextpdf/layout/layout/LineLayoutResult;Lcom/itextpdf/layout/renderer/LineRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/List;ZF)V

    .line 279
    sget-object v0, Lcom/itextpdf/layout/property/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/property/RenderingMode;

    .line 280
    const/16 v1, 0x7b

    invoke-virtual {v8, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/property/RenderingMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_13

    :cond_1a
    const/16 v0, 0x21

    .line 281
    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/Leading;

    :goto_13
    move-object v6, v0

    .line 283
    .local v6, "leading":Lcom/itextpdf/layout/property/Leading;
    move-object/from16 v7, v51

    .end local v51    # "processedRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .local v7, "processedRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_14

    :cond_1b
    const/4 v0, 0x0

    :goto_14
    move/from16 v51, v0

    .line 284
    .local v51, "lineHasContent":Z
    if-eqz v7, :cond_1c

    const/4 v0, 0x1

    goto :goto_15

    :cond_1c
    const/4 v0, 0x0

    .line 285
    .local v0, "isFit":Z
    :goto_15
    const/4 v1, 0x0

    .line 286
    .local v1, "deltaY":F
    if-eqz v0, :cond_26

    sget-object v2, Lcom/itextpdf/layout/property/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/property/RenderingMode;

    const/16 v3, 0x7b

    invoke-virtual {v8, v3}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/property/RenderingMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 287
    if-eqz v51, :cond_20

    .line 288
    sub-float v2, v23, v38

    if-eqz v6, :cond_1d

    invoke-virtual {v7, v6}, Lcom/itextpdf/layout/renderer/LineRenderer;->getTopLeadingIndent(Lcom/itextpdf/layout/property/Leading;)F

    move-result v3

    goto :goto_16

    :cond_1d
    const/4 v3, 0x0

    :goto_16
    sub-float/2addr v2, v3

    invoke-virtual {v7}, Lcom/itextpdf/layout/renderer/LineRenderer;->getMaxAscent()F

    move-result v3

    sub-float/2addr v2, v3

    .line 290
    .local v2, "indentFromLastLine":F
    if-eqz v7, :cond_1e

    invoke-virtual {v7}, Lcom/itextpdf/layout/renderer/LineRenderer;->containsImage()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 291
    add-float v2, v2, v23

    .line 293
    :cond_1e
    add-float v3, v17, v2

    invoke-virtual {v7}, Lcom/itextpdf/layout/renderer/LineRenderer;->getYLine()F

    move-result v4

    sub-float v1, v3, v4

    .line 294
    if-eqz v6, :cond_1f

    invoke-virtual {v7, v6}, Lcom/itextpdf/layout/renderer/LineRenderer;->getBottomLeadingIndent(Lcom/itextpdf/layout/property/Leading;)F

    move-result v3

    goto :goto_17

    :cond_1f
    const/4 v3, 0x0

    :goto_17
    move/from16 v38, v3

    .line 296
    const/4 v3, 0x0

    cmpg-float v4, v38, v3

    if-gez v4, :cond_21

    invoke-virtual {v7}, Lcom/itextpdf/layout/renderer/LineRenderer;->containsImage()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 297
    const/16 v38, 0x0

    goto :goto_18

    .line 287
    .end local v2    # "indentFromLastLine":F
    :cond_20
    const/4 v3, 0x0

    .line 302
    :cond_21
    :goto_18
    if-eqz v36, :cond_23

    .line 303
    if-eqz v7, :cond_22

    if-eqz v6, :cond_22

    invoke-virtual {v7, v6}, Lcom/itextpdf/layout/renderer/LineRenderer;->getTopLeadingIndent(Lcom/itextpdf/layout/property/Leading;)F

    move-result v2

    neg-float v2, v2

    goto :goto_19

    :cond_22
    move v2, v3

    :goto_19
    move v1, v2

    .line 305
    :cond_23
    if-eqz v6, :cond_25

    invoke-virtual {v7}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual/range {v55 .. v55}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_24

    goto :goto_1a

    :cond_24
    const/4 v2, 0x0

    goto :goto_1b

    :cond_25
    :goto_1a
    const/4 v2, 0x1

    :goto_1b
    move v0, v2

    move/from16 v35, v0

    move v5, v1

    goto :goto_1c

    .line 286
    :cond_26
    const/4 v3, 0x0

    .line 308
    move/from16 v35, v0

    move v5, v1

    .end local v0    # "isFit":Z
    .end local v1    # "deltaY":F
    .local v5, "deltaY":F
    .local v35, "isFit":Z
    :goto_1c
    if-nez v35, :cond_3f

    if-eqz v7, :cond_28

    invoke-static/range {v30 .. v30}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_1d

    :cond_27
    move/from16 v60, v9

    move-object/from16 v63, v10

    move/from16 v62, v13

    move-object/from16 v68, v28

    move-object/from16 v61, v30

    move/from16 v67, v31

    move-object/from16 v64, v49

    move-object/from16 v13, v55

    move-object/from16 v10, v59

    const/4 v0, 0x0

    move v9, v5

    goto/16 :goto_28

    .line 309
    :cond_28
    :goto_1d
    add-int/lit8 v0, v9, 0x1

    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 310
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v56

    .end local v56    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v2, "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 311
    .end local v55    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v0, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    add-float/2addr v1, v4

    .line 312
    .end local v17    # "lastYLine":F
    .local v1, "lastYLine":F
    const/4 v4, 0x1

    move-object v13, v0

    move/from16 v17, v1

    move/from16 v36, v4

    move-object/from16 v63, v10

    move-object/from16 v68, v28

    move-object/from16 v61, v30

    move/from16 v67, v31

    move-object/from16 v64, v49

    move-object/from16 v2, v54

    move-object/from16 v10, v59

    const/4 v0, 0x0

    .end local v36    # "firstLineInBox":Z
    .local v4, "firstLineInBox":Z
    goto/16 :goto_29

    .line 314
    .end local v0    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v1    # "lastYLine":F
    .end local v2    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v4    # "firstLineInBox":Z
    .restart local v17    # "lastYLine":F
    .restart local v36    # "firstLineInBox":Z
    .restart local v55    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v56    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :cond_29
    move-object/from16 v2, v56

    .end local v56    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v2    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isKeepTogether(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v18

    .line 315
    .local v18, "keepTogether":Z
    if-eqz v18, :cond_2b

    .line 316
    invoke-interface {v15, v12}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 317
    new-instance v22, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    if-nez v0, :cond_2a

    move-object/from16 v40, v8

    goto :goto_1e

    :cond_2a
    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    move-object/from16 v40, v0

    :goto_1e
    move-object/from16 v0, v22

    move-object/from16 v56, v2

    .end local v2    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v56    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, p0

    move/from16 v60, v9

    move v9, v5

    .end local v5    # "deltaY":F
    .local v9, "deltaY":F
    .local v60, "currentAreaPos":I
    move-object/from16 v5, v40

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v22

    .line 319
    .end local v56    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v60    # "currentAreaPos":I
    .restart local v2    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v5    # "deltaY":F
    .local v9, "currentAreaPos":I
    :cond_2b
    move-object/from16 v56, v2

    move/from16 v60, v9

    move v9, v5

    .end local v2    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v5    # "deltaY":F
    .local v9, "deltaY":F
    .restart local v56    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v60    # "currentAreaPos":I
    if-eqz v14, :cond_2d

    .line 320
    if-eqz v37, :cond_2c

    if-eqz v16, :cond_2c

    .line 321
    move-object/from16 v5, v49

    move-object/from16 v3, v55

    .end local v49    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v55    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v3    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v5, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    invoke-virtual {v5, v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endChildMarginsHandling(Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_1f

    .line 320
    .end local v3    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v5    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v49    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v55    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_2c
    move-object/from16 v5, v49

    move-object/from16 v3, v55

    .end local v49    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v55    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v3    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v5    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    goto :goto_1f

    .line 319
    .end local v3    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v5    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v49    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v55    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_2d
    move-object/from16 v5, v49

    move-object/from16 v3, v55

    .line 326
    .end local v49    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v55    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v3    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v5    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    :goto_1f
    if-eqz v42, :cond_2f

    if-eqz v48, :cond_2e

    goto :goto_20

    :cond_2e
    const/4 v0, 0x0

    goto :goto_21

    :cond_2f
    :goto_20
    const/4 v0, 0x1

    :goto_21
    move/from16 v45, v0

    .line 327
    .local v45, "includeFloatsInOccupiedAreaOnSplit":Z
    if-eqz v45, :cond_30

    .line 328
    invoke-static {v15, v8, v12}, Lcom/itextpdf/layout/renderer/FloatingHelper;->includeChildFloatsInOccupiedArea(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/Set;)V

    .line 329
    invoke-virtual {v8, v11, v3}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 332
    :cond_30
    if-eqz v14, :cond_31

    .line 333
    invoke-virtual {v5, v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 336
    :cond_31
    const/4 v0, 0x0

    .line 337
    .local v0, "minHeightOverflowed":Z
    if-nez v45, :cond_33

    .line 338
    move-object/from16 v2, v30

    .end local v30    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v2, "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    invoke-virtual {v8, v2, v3}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyMinHeight(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v1

    .line 339
    .local v1, "minHeightOverflow":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    if-eqz v1, :cond_32

    const/16 v30, 0x1

    goto :goto_22

    :cond_32
    const/16 v30, 0x0

    :goto_22
    move/from16 v0, v30

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyVerticalAlignment()V

    goto :goto_23

    .line 337
    .end local v1    # "minHeightOverflow":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .end local v2    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v30    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    :cond_33
    move-object/from16 v2, v30

    .end local v30    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v2    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    move/from16 v30, v0

    .line 343
    .end local v0    # "minHeightOverflowed":Z
    .local v30, "minHeightOverflowed":Z
    :goto_23
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->split()[Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    move-result-object v46

    .line 344
    .local v46, "split":[Lcom/itextpdf/layout/renderer/ParagraphRenderer;
    const/4 v0, 0x0

    aget-object v1, v46, v0

    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    iput-object v0, v1, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    .line 345
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/LineRenderer;

    .line 346
    .local v1, "line":Lcom/itextpdf/layout/renderer/LineRenderer;
    const/16 v40, 0x0

    aget-object v4, v46, v40

    iget-object v4, v4, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    move-object/from16 v55, v0

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 347
    .end local v1    # "line":Lcom/itextpdf/layout/renderer/LineRenderer;
    move-object/from16 v0, v55

    goto :goto_24

    .line 348
    :cond_34
    const/4 v0, 0x1

    aget-object v1, v46, v0

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 349
    if-eqz v7, :cond_35

    .line 350
    aget-object v1, v46, v0

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    invoke-virtual {v7}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 352
    :cond_35
    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 353
    aget-object v1, v46, v0

    iget-object v0, v1, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 356
    :cond_36
    if-eqz v42, :cond_37

    if-nez v48, :cond_37

    if-nez v30, :cond_37

    .line 357
    const/4 v0, 0x1

    aget-object v1, v46, v0

    invoke-static {v1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->removeParentArtifactsOnPageSplitIfOnlyFloatsOverflow(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 361
    :cond_37
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    .line 362
    .local v0, "usedHeight":F
    if-nez v45, :cond_38

    .line 363
    const/4 v4, 0x2

    new-array v1, v4, [Lcom/itextpdf/kernel/geom/Rectangle;

    const/16 v40, 0x0

    aput-object v3, v1, v40

    iget-object v4, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    const/16 v41, 0x1

    aput-object v4, v1, v41

    invoke-static {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 364
    .local v1, "commonRectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    move/from16 v55, v0

    goto :goto_25

    .line 362
    .end local v1    # "commonRectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_38
    const/16 v41, 0x1

    move/from16 v55, v0

    .line 367
    .end local v0    # "usedHeight":F
    .local v55, "usedHeight":F
    :goto_25
    aget-object v4, v46, v41

    move-object/from16 v0, p0

    move/from16 v1, v55

    move-object/from16 v61, v2

    .end local v2    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v61, "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    move/from16 v2, v26

    move/from16 v62, v13

    move-object v13, v3

    .end local v3    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v13, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v62, "lineIndent":F
    move-object/from16 v3, p0

    move-object/from16 v63, v10

    const/4 v10, 0x2

    .end local v10    # "inlineFloatsOverflowedToNextPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v63, "inlineFloatsOverflowedToNextPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    move-object/from16 v64, v5

    .end local v5    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .local v64, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    move/from16 v5, v45

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->updateHeightsOnSplit(FZLcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;Z)V

    .line 368
    invoke-virtual {v8, v13}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->correctFixedLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 369
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v5, v27

    const/4 v1, 0x1

    .end local v27    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v5, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v8, v0, v5, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 370
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v4, v28

    .end local v28    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v4, "borders":[Lcom/itextpdf/layout/borders/Border;
    invoke-virtual {v8, v0, v4, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 371
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v8, v0, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 373
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyAbsolutePositionIfNeeded(Lcom/itextpdf/layout/layout/LayoutContext;)V

    .line 375
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    move/from16 v3, v31

    .end local v31    # "clearHeightCorrection":F
    .local v3, "clearHeightCorrection":F
    invoke-static {v8, v0, v1, v3, v14}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    .line 376
    .local v2, "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    if-eqz v26, :cond_39

    .line 377
    new-instance v0, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    const/4 v1, 0x0

    aget-object v1, v46, v1

    move/from16 v31, v3

    const/4 v3, 0x1

    const/4 v10, 0x0

    .end local v3    # "clearHeightCorrection":F
    .restart local v31    # "clearHeightCorrection":F
    invoke-direct {v0, v3, v2, v1, v10}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    move-object/from16 v1, v59

    .end local v59    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v1, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->setMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    move-result-object v0

    return-object v0

    .line 378
    .end local v1    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .end local v31    # "clearHeightCorrection":F
    .restart local v3    # "clearHeightCorrection":F
    .restart local v59    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    :cond_39
    move/from16 v31, v3

    move-object/from16 v0, v59

    const/4 v1, 0x0

    const/4 v3, 0x1

    .end local v3    # "clearHeightCorrection":F
    .end local v59    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v0, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .restart local v31    # "clearHeightCorrection":F
    if-eqz v37, :cond_3a

    .line 379
    new-instance v10, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    aget-object v1, v46, v1

    aget-object v3, v46, v3

    move-object/from16 v28, v4

    const/4 v4, 0x2

    .end local v4    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v28    # "borders":[Lcom/itextpdf/layout/borders/Border;
    invoke-direct {v10, v4, v2, v1, v3}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    invoke-virtual {v10, v0}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->setMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    move-result-object v1

    return-object v1

    .line 381
    .end local v28    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v4    # "borders":[Lcom/itextpdf/layout/borders/Border;
    :cond_3a
    move-object/from16 v28, v4

    move v4, v10

    .end local v4    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v28    # "borders":[Lcom/itextpdf/layout/borders/Border;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v3, 0x1a

    invoke-virtual {v8, v3}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 382
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    new-array v3, v4, [Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v4, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    const/4 v10, 0x0

    aput-object v4, v3, v10

    invoke-virtual/range {v54 .. v54}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    const/4 v10, 0x1

    aput-object v4, v3, v10

    invoke-static {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/layout/layout/LayoutArea;->setBBox(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 383
    invoke-virtual {v8, v11, v13}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 384
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v3, 0x19

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 385
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    move-object/from16 v10, v54

    .end local v54    # "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .local v10, "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getStatus()I

    move-result v1

    const/4 v3, 0x2

    if-ne v3, v1, :cond_3c

    .line 388
    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    .line 389
    .local v4, "childNotRendered":Lcom/itextpdf/layout/renderer/IRenderer;
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 390
    .local v3, "firstNotRendered":I
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    move-object/from16 v59, v0

    .end local v0    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .restart local v59    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    move-object/from16 v22, v2

    const/4 v2, 0x0

    .end local v2    # "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .local v22, "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 392
    invoke-virtual {v10}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 393
    .local v1, "child":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-interface {v1, v10}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 394
    .end local v1    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_26

    .line 395
    :cond_3b
    const/4 v0, 0x1

    aget-object v1, v46, v0

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    aget-object v2, v46, v0

    iget-object v2, v2, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v2, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 396
    new-instance v2, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    const/4 v1, 0x2

    const/4 v0, 0x1

    aget-object v27, v46, v0

    const/16 v40, 0x0

    move-object/from16 v65, v59

    .end local v59    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v65, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    move-object v0, v2

    move-object/from16 v66, v2

    move-object/from16 v2, v22

    move/from16 v67, v31

    move/from16 v31, v3

    .end local v3    # "firstNotRendered":I
    .local v31, "firstNotRendered":I
    .local v67, "clearHeightCorrection":F
    move-object/from16 v3, p0

    move-object/from16 v68, v28

    move-object/from16 v28, v4

    .end local v4    # "childNotRendered":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v28, "childNotRendered":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v68, "borders":[Lcom/itextpdf/layout/borders/Border;
    move-object/from16 v4, v27

    move-object/from16 v54, v10

    move-object v10, v5

    .end local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v10, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v54    # "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    move-object/from16 v5, v40

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    move-object/from16 v5, v65

    move-object/from16 v0, v66

    .end local v65    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v5, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    invoke-virtual {v0, v5}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->setMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    move-result-object v0

    return-object v0

    .line 398
    .end local v22    # "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v54    # "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .end local v67    # "clearHeightCorrection":F
    .end local v68    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v0    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .restart local v2    # "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .local v5, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v10, "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .local v28, "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v31, "clearHeightCorrection":F
    :cond_3c
    move-object/from16 v54, v10

    move-object v10, v5

    move-object v5, v0

    .end local v0    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v5, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v10, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v54    # "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    new-instance v4, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v27, 0x0

    move-object v0, v4

    move-object/from16 v69, v4

    move-object/from16 v4, v27

    move-object/from16 v27, v10

    move-object v10, v5

    .end local v5    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v10, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .restart local v27    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    move-object/from16 v0, v69

    invoke-virtual {v0, v10}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->setMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    move-result-object v0

    return-object v0

    .line 401
    .end local v10    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .end local v27    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v0    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v5, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    :cond_3d
    move-object v10, v0

    move-object/from16 v22, v2

    move-object/from16 v27, v5

    move-object/from16 v68, v28

    move/from16 v67, v31

    .end local v0    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .end local v2    # "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v28    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v31    # "clearHeightCorrection":F
    .restart local v10    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .restart local v22    # "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .restart local v27    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v67    # "clearHeightCorrection":F
    .restart local v68    # "borders":[Lcom/itextpdf/layout/borders/Border;
    invoke-interface {v15, v12}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 402
    new-instance v28, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    if-nez v0, :cond_3e

    move-object v5, v8

    goto :goto_27

    :cond_3e
    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    move-object v5, v0

    :goto_27
    move-object/from16 v0, v28

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v28

    .line 308
    .end local v18    # "keepTogether":Z
    .end local v22    # "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v45    # "includeFloatsInOccupiedAreaOnSplit":Z
    .end local v46    # "split":[Lcom/itextpdf/layout/renderer/ParagraphRenderer;
    .end local v60    # "currentAreaPos":I
    .end local v61    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v62    # "lineIndent":F
    .end local v63    # "inlineFloatsOverflowedToNextPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v64    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v67    # "clearHeightCorrection":F
    .end local v68    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v5, "deltaY":F
    .local v9, "currentAreaPos":I
    .local v10, "inlineFloatsOverflowedToNextPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v13, "lineIndent":F
    .restart local v28    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v30, "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v31    # "clearHeightCorrection":F
    .restart local v49    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .local v55, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v59    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    :cond_3f
    move/from16 v60, v9

    move-object/from16 v63, v10

    move/from16 v62, v13

    move-object/from16 v68, v28

    move-object/from16 v61, v30

    move/from16 v67, v31

    move-object/from16 v64, v49

    move-object/from16 v13, v55

    move-object/from16 v10, v59

    const/4 v0, 0x0

    move v9, v5

    .line 408
    .end local v5    # "deltaY":F
    .end local v28    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v30    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v31    # "clearHeightCorrection":F
    .end local v49    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v55    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v59    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v9, "deltaY":F
    .local v10, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v13, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v60    # "currentAreaPos":I
    .restart local v61    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v62    # "lineIndent":F
    .restart local v63    # "inlineFloatsOverflowedToNextPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v64    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v67    # "clearHeightCorrection":F
    .restart local v68    # "borders":[Lcom/itextpdf/layout/borders/Border;
    :goto_28
    if-eqz v6, :cond_40

    .line 409
    invoke-virtual {v7, v9}, Lcom/itextpdf/layout/renderer/LineRenderer;->applyLeading(F)V

    .line 410
    if-eqz v51, :cond_40

    .line 411
    invoke-virtual {v7}, Lcom/itextpdf/layout/renderer/LineRenderer;->getYLine()F

    move-result v17

    .line 414
    :cond_40
    if-eqz v51, :cond_41

    .line 415
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v4, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-virtual {v7}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/layout/LayoutArea;->setBBox(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 416
    invoke-virtual {v8, v11, v13}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 418
    :cond_41
    const/4 v1, 0x0

    .line 420
    .end local v36    # "firstLineInBox":Z
    .local v1, "firstLineInBox":Z
    invoke-virtual {v7}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v4

    sub-float/2addr v2, v4

    invoke-virtual {v13, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 421
    iget-object v2, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    const/4 v2, 0x1

    .line 425
    .end local v37    # "anythingPlaced":Z
    .local v2, "anythingPlaced":Z
    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/LineRenderer;

    .line 426
    .end local v54    # "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .local v4, "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    invoke-virtual {v7}, Lcom/itextpdf/layout/renderer/LineRenderer;->getMaxDescent()F

    move-result v5

    .line 428
    .end local v23    # "previousDescent":F
    .local v5, "previousDescent":F
    invoke-interface/range {v63 .. v63}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_42

    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v22

    if-nez v22, :cond_42

    .line 429
    const/16 v22, 0x1

    .line 432
    .end local v42    # "onlyOverflowedFloatsLeft":Z
    .local v22, "onlyOverflowedFloatsLeft":Z
    new-instance v23, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-direct/range {v23 .. v23}, Lcom/itextpdf/layout/renderer/LineRenderer;-><init>()V

    move-object/from16 v4, v23

    move/from16 v36, v1

    move/from16 v37, v2

    move-object v2, v4

    move/from16 v23, v5

    move/from16 v42, v22

    move/from16 v9, v60

    goto :goto_29

    .line 435
    .end local v6    # "leading":Lcom/itextpdf/layout/property/Leading;
    .end local v7    # "processedRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .end local v9    # "deltaY":F
    .end local v22    # "onlyOverflowedFloatsLeft":Z
    .end local v33    # "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    .end local v35    # "isFit":Z
    .end local v39    # "minChildWidth":F
    .end local v44    # "maxChildWidth":F
    .end local v47    # "lineLayoutContext":Lcom/itextpdf/layout/layout/LineLayoutContext;
    .end local v51    # "lineHasContent":Z
    .end local v53    # "textAlignment":Lcom/itextpdf/layout/property/TextAlignment;
    .end local v58    # "childLayoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v62    # "lineIndent":F
    .restart local v42    # "onlyOverflowedFloatsLeft":Z
    :cond_42
    move/from16 v36, v1

    move/from16 v37, v2

    move-object v2, v4

    move/from16 v23, v5

    move/from16 v9, v60

    .end local v1    # "firstLineInBox":Z
    .end local v4    # "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .end local v5    # "previousDescent":F
    .end local v60    # "currentAreaPos":I
    .local v2, "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .local v9, "currentAreaPos":I
    .restart local v23    # "previousDescent":F
    .restart local v36    # "firstLineInBox":Z
    .restart local v37    # "anythingPlaced":Z
    :goto_29
    move-object/from16 v33, v10

    move-object v6, v12

    move-object v3, v13

    move-object v7, v15

    move-object/from16 v13, v43

    move/from16 v12, v48

    move/from16 v1, v50

    move/from16 v10, v52

    move-object/from16 v4, v56

    move-object/from16 v5, v57

    move-object/from16 v30, v61

    move-object/from16 v39, v63

    move-object/from16 v15, v64

    move/from16 v31, v67

    move-object/from16 v28, v68

    goto/16 :goto_9

    .line 436
    .end local v13    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v48    # "includeFloatsInOccupiedArea":Z
    .end local v50    # "floatOverflowedToNextPageWithNothing":Z
    .end local v52    # "pageNumber":I
    .end local v56    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v57    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .end local v61    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v63    # "inlineFloatsOverflowedToNextPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v64    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v67    # "clearHeightCorrection":F
    .end local v68    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v1, "floatOverflowedToNextPageWithNothing":Z
    .local v3, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v4, "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v5, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v6, "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v7, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v10, "pageNumber":I
    .local v12, "includeFloatsInOccupiedArea":Z
    .local v15, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v28    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v30    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v31    # "clearHeightCorrection":F
    .local v33, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v39, "inlineFloatsOverflowedToNextPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :cond_43
    move-object/from16 v54, v2

    move-object v13, v3

    move-object/from16 v56, v4

    move-object/from16 v57, v5

    move/from16 v60, v9

    move/from16 v52, v10

    move/from16 v48, v12

    move-object/from16 v64, v15

    move-object/from16 v68, v28

    move-object/from16 v61, v30

    move/from16 v67, v31

    move-object/from16 v10, v33

    move-object/from16 v63, v39

    move-object v12, v6

    move-object v15, v7

    .end local v2    # "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .end local v3    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v4    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v5    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .end local v6    # "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v7    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v9    # "currentAreaPos":I
    .end local v28    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v30    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v31    # "clearHeightCorrection":F
    .end local v33    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .end local v39    # "inlineFloatsOverflowedToNextPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v10, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v12, "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v13    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v15, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v48    # "includeFloatsInOccupiedArea":Z
    .restart local v52    # "pageNumber":I
    .restart local v54    # "currentRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    .restart local v56    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v57    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v60    # "currentAreaPos":I
    .restart local v61    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v63    # "inlineFloatsOverflowedToNextPage":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v64    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v67    # "clearHeightCorrection":F
    .restart local v68    # "borders":[Lcom/itextpdf/layout/borders/Border;
    sget-object v0, Lcom/itextpdf/layout/property/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/property/RenderingMode;

    const/16 v2, 0x7b

    invoke-virtual {v8, v2}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/property/RenderingMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 437
    move/from16 v0, v38

    .line 438
    .local v0, "moveDown":F
    invoke-static/range {v61 .. v61}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_44

    .line 439
    iget-object v2, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    sub-float v0, v2, v3

    .line 441
    :cond_44
    iget-object v2, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 442
    iget-object v2, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    iget-object v3, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 445
    .end local v0    # "moveDown":F
    :cond_45
    if-eqz v14, :cond_47

    .line 446
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_46

    if-eqz v16, :cond_46

    .line 447
    move-object/from16 v6, v64

    .end local v64    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .local v6, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    invoke-virtual {v6, v13}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endChildMarginsHandling(Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_2a

    .line 446
    .end local v6    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v64    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    :cond_46
    move-object/from16 v6, v64

    .end local v64    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v6    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    goto :goto_2a

    .line 445
    .end local v6    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v64    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    :cond_47
    move-object/from16 v6, v64

    .line 451
    .end local v64    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v6    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    :goto_2a
    if-eqz v48, :cond_48

    .line 452
    invoke-static {v15, v8, v12}, Lcom/itextpdf/layout/renderer/FloatingHelper;->includeChildFloatsInOccupiedArea(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/Set;)V

    .line 453
    invoke-virtual {v8, v11, v13}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 456
    :cond_48
    if-eqz v26, :cond_49

    .line 457
    move-object/from16 v7, v61

    .end local v61    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v7, "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    invoke-virtual {v8, v7, v13}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->fixOccupiedAreaIfOverflowedY(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_2b

    .line 456
    .end local v7    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v61    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    :cond_49
    move-object/from16 v7, v61

    .line 460
    .end local v61    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v7    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    :goto_2b
    if-eqz v14, :cond_4a

    .line 461
    invoke-virtual {v6, v13}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 464
    :cond_4a
    invoke-virtual {v8, v7, v13}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyMinHeight(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v9

    .line 465
    .local v9, "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    if-eqz v9, :cond_4b

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isKeepTogether()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 466
    invoke-interface {v15, v12}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 467
    new-instance v18, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move/from16 v50, v1

    .end local v1    # "floatOverflowedToNextPageWithNothing":Z
    .restart local v50    # "floatOverflowedToNextPageWithNothing":Z
    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v18

    .line 465
    .end local v50    # "floatOverflowedToNextPageWithNothing":Z
    .restart local v1    # "floatOverflowedToNextPageWithNothing":Z
    :cond_4b
    move/from16 v50, v1

    .line 470
    .end local v1    # "floatOverflowedToNextPageWithNothing":Z
    .restart local v50    # "floatOverflowedToNextPageWithNothing":Z
    invoke-virtual {v8, v13}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->correctFixedLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 472
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v5, v27

    const/4 v1, 0x1

    .end local v27    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v5, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v8, v0, v5, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 473
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v4, v68

    .end local v68    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v4, "borders":[Lcom/itextpdf/layout/borders/Border;
    invoke-virtual {v8, v0, v4, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 474
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v8, v0, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 476
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyAbsolutePositionIfNeeded(Lcom/itextpdf/layout/layout/LayoutContext;)V

    .line 478
    if-eqz v24, :cond_4f

    .line 479
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyRotationLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 480
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isNotFittingLayoutArea(Lcom/itextpdf/layout/layout/LayoutArea;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 481
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isNotFittingWidth(Lcom/itextpdf/layout/layout/LayoutArea;)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isNotFittingHeight(Lcom/itextpdf/layout/layout/LayoutArea;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 482
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "It fits by height so it will be forced placed"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Element does not fit current area. {0}"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    move-object/from16 v22, v4

    move-object/from16 v27, v5

    goto :goto_2c

    .line 483
    :cond_4c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x1a

    invoke-virtual {v8, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 484
    invoke-interface {v15, v12}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 485
    new-instance v18, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v22, v4

    .end local v4    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v22, "borders":[Lcom/itextpdf/layout/borders/Border;
    move-object/from16 v4, p0

    move-object/from16 v27, v5

    .end local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v27    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v18

    .line 483
    .end local v22    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v27    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v4    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    :cond_4d
    move-object/from16 v22, v4

    move-object/from16 v27, v5

    .end local v4    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v22    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v27    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    goto :goto_2c

    .line 480
    .end local v22    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v27    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v4    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    :cond_4e
    move-object/from16 v22, v4

    move-object/from16 v27, v5

    .end local v4    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v22    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v27    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    goto :goto_2c

    .line 478
    .end local v22    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v27    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v4    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    :cond_4f
    move-object/from16 v22, v4

    move-object/from16 v27, v5

    .line 490
    .end local v4    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v22    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v27    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    :goto_2c
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyVerticalAlignment()V

    .line 492
    invoke-static {v15, v8}, Lcom/itextpdf/layout/renderer/FloatingHelper;->removeFloatsAboveRendererBottom(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 493
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    move/from16 v5, v67

    .end local v67    # "clearHeightCorrection":F
    .local v5, "clearHeightCorrection":F
    invoke-static {v8, v0, v1, v5, v14}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v18

    .line 496
    .local v18, "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    if-nez v9, :cond_50

    .line 497
    new-instance v0, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    const/16 v65, 0x1

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    move-object/from16 v64, v0

    move-object/from16 v66, v18

    invoke-direct/range {v64 .. v69}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    invoke-virtual {v0, v10}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->setMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    move-result-object v0

    return-object v0

    .line 499
    :cond_50
    new-instance v4, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    const/4 v1, 0x2

    const/16 v28, 0x0

    move-object v0, v4

    move-object/from16 v2, v18

    move-object/from16 v3, p0

    move-object/from16 v70, v4

    move-object v4, v9

    move/from16 v30, v5

    .end local v5    # "clearHeightCorrection":F
    .local v30, "clearHeightCorrection":F
    move-object/from16 v5, v28

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->setMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    move-result-object v0

    return-object v0
.end method

.method public drawChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 2
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 548
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 549
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/LineRenderer;

    .line 550
    .local v1, "line":Lcom/itextpdf/layout/renderer/LineRenderer;
    invoke-virtual {v1, p1}, Lcom/itextpdf/layout/renderer/LineRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 551
    .end local v1    # "line":Lcom/itextpdf/layout/renderer/LineRenderer;
    goto :goto_0

    .line 553
    :cond_0
    return-void
.end method

.method public getDefaultProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 516
    const/16 v0, 0x2e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2b

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/CellRenderer;

    if-eqz v0, :cond_1

    .line 517
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    return-object v0

    .line 519
    :cond_1
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getFirstYLineRecursively()Ljava/lang/Float;
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getFirstYLineRecursively()Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 580
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLastYLineRecursively()Ljava/lang/Float;
    .locals 3

    .line 587
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->allowLastYLineRecursiveExtraction()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 588
    return-object v1

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 594
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->getLastYLineRecursively()Ljava/lang/Float;

    move-result-object v2

    .line 595
    .local v2, "yLine":Ljava/lang/Float;
    if-eqz v2, :cond_2

    .line 596
    return-object v2

    .line 593
    .end local v2    # "yLine":Ljava/lang/Float;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 599
    .end local v0    # "i":I
    :cond_3
    return-object v1

    .line 591
    :cond_4
    :goto_1
    return-object v1
.end method

.method public getLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/LineRenderer;",
            ">;"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    return-object v0
.end method

.method public getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 12

    .line 633
    new-instance v0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-direct {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>()V

    .line 634
    .local v0, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    const/16 v1, 0x37

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v2

    .line 635
    .local v2, "rotation":Ljava/lang/Float;
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->setMinMaxWidthBasedOnFixedWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 636
    const/16 v3, 0x50

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->hasAbsoluteUnitValue(I)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->retrieveMinWidth(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v5

    .line 637
    .local v3, "minWidth":Ljava/lang/Float;
    :goto_0
    const/16 v6, 0x4f

    invoke-virtual {p0, v6}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->hasAbsoluteUnitValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->retrieveMaxWidth(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v5

    .line 638
    .local v4, "maxWidth":Ljava/lang/Float;
    :goto_1
    if-eqz v3, :cond_2

    if-nez v4, :cond_4

    .line 639
    :cond_2
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->hasOwnProperty(I)Z

    move-result v6

    .line 640
    .local v6, "restoreRotation":Z
    invoke-virtual {p0, v1, v5}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->setProperty(ILjava/lang/Object;)V

    .line 641
    new-instance v5, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v7, Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v8, 0x1

    new-instance v9, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getInfWidth()F

    move-result v10

    const v11, 0x49742400    # 1000000.0f

    invoke-direct {v9, v10, v11}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v5, v7}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-virtual {p0, v5}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    .line 642
    .local v5, "result":Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;
    if-eqz v6, :cond_3

    .line 643
    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_2

    .line 645
    :cond_3
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->deleteOwnProperty(I)V

    .line 647
    :goto_2
    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    .line 649
    .end local v5    # "result":Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;
    .end local v6    # "restoreRotation":Z
    :cond_4
    if-eqz v3, :cond_5

    .line 650
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    .line 652
    :cond_5
    if-eqz v4, :cond_6

    .line 653
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    .line 655
    :cond_6
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMinWidth()F

    move-result v1

    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMaxWidth()F

    move-result v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_7

    .line 656
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMaxWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    .line 658
    .end local v3    # "minWidth":Ljava/lang/Float;
    .end local v4    # "maxWidth":Ljava/lang/Float;
    :cond_7
    goto :goto_3

    .line 659
    :cond_8
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->calculateAdditionalWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setAdditionalWidth(F)V

    .line 662
    :goto_3
    if-eqz v2, :cond_9

    invoke-static {v0, p0}, Lcom/itextpdf/layout/renderer/RotationUtils;->countRotationMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;Lcom/itextpdf/layout/renderer/AbstractRenderer;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v1

    goto :goto_4

    :cond_9
    move-object v1, v0

    :goto_4
    return-object v1
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 508
    new-instance v0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    check-cast v1, Lcom/itextpdf/layout/element/Paragraph;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;-><init>(Lcom/itextpdf/layout/element/Paragraph;)V

    return-object v0
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 4
    .param p1, "layoutContext"    # Lcom/itextpdf/layout/layout/LayoutContext;

    .line 105
    const/16 v0, 0x79

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/ParagraphOrphansControl;

    .line 106
    .local v0, "orphansControl":Lcom/itextpdf/layout/property/ParagraphOrphansControl;
    const/16 v1, 0x7a

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/ParagraphWidowsControl;

    .line 107
    .local v1, "widowsControl":Lcom/itextpdf/layout/property/ParagraphWidowsControl;
    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->directLayout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v2

    .line 111
    .local v2, "layoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->updateParentLines(Lcom/itextpdf/layout/renderer/ParagraphRenderer;)V

    .line 112
    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    invoke-static {v3}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->updateParentLines(Lcom/itextpdf/layout/renderer/ParagraphRenderer;)V

    .line 113
    return-object v2

    .line 108
    .end local v2    # "layoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    :cond_1
    :goto_0
    invoke-static {p0, p1, v0, v1}, Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper;->orphansWidowsAwareLayout(Lcom/itextpdf/layout/renderer/ParagraphRenderer;Lcom/itextpdf/layout/layout/LayoutContext;Lcom/itextpdf/layout/property/ParagraphOrphansControl;Lcom/itextpdf/layout/property/ParagraphWidowsControl;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v2

    return-object v2
.end method

.method public move(FF)V
    .locals 2
    .param p1, "dxRight"    # F
    .param p2, "dyUp"    # F

    .line 560
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 561
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 562
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 563
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/LineRenderer;

    .line 564
    .local v1, "line":Lcom/itextpdf/layout/renderer/LineRenderer;
    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/layout/renderer/LineRenderer;->move(FF)V

    .line 565
    .end local v1    # "line":Lcom/itextpdf/layout/renderer/LineRenderer;
    goto :goto_0

    .line 567
    :cond_0
    return-void
.end method

.method protected split()[Lcom/itextpdf/layout/renderer/ParagraphRenderer;
    .locals 4

    .line 666
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->createSplitRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    move-result-object v0

    .line 667
    .local v0, "splitRenderer":Lcom/itextpdf/layout/renderer/ParagraphRenderer;
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 668
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isLastRendererForModelElement:Z

    .line 670
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->createOverflowRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    move-result-object v2

    .line 672
    .local v2, "overflowRenderer":Lcom/itextpdf/layout/renderer/ParagraphRenderer;
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    aput-object v0, v3, v1

    const/4 v1, 0x1

    aput-object v2, v3, v1

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 529
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 530
    if-lez v1, :cond_0

    .line 531
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    goto :goto_2

    .line 536
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 537
    .local v2, "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .end local v2    # "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_1

    .line 540
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
