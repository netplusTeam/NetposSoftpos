.class public Lcom/itextpdf/layout/renderer/FlexContainerRenderer;
.super Lcom/itextpdf/layout/renderer/DivRenderer;
.source "FlexContainerRenderer.java"


# instance fields
.field private lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexItemInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/element/Div;)V
    .locals 0
    .param p1, "modelElement"    # Lcom/itextpdf/layout/element/Div;

    .line 74
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/DivRenderer;-><init>(Lcom/itextpdf/layout/element/Div;)V

    .line 75
    return-void
.end method

.method private findFlexItemInfo(Lcom/itextpdf/layout/renderer/AbstractRenderer;)Lcom/itextpdf/layout/renderer/FlexItemInfo;
    .locals 5
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 317
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 318
    .local v1, "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexItemInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/FlexItemInfo;

    .line 319
    .local v3, "itemInfo":Lcom/itextpdf/layout/renderer/FlexItemInfo;
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 320
    return-object v3

    .line 322
    .end local v3    # "itemInfo":Lcom/itextpdf/layout/renderer/FlexItemInfo;
    :cond_0
    goto :goto_1

    .line 323
    .end local v1    # "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexItemInfo;>;"
    :cond_1
    goto :goto_0

    .line 324
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private findMinMaxWidthIfCorrespondingPropertiesAreNotSet(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;Lcom/itextpdf/layout/renderer/AbstractWidthHandler;)V
    .locals 5
    .param p1, "minMaxWidth"    # Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .param p2, "minMaxWidthHandler"    # Lcom/itextpdf/layout/renderer/AbstractWidthHandler;

    .line 348
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->setThisAsParent(Ljava/util/Collection;)V

    .line 349
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getChildRenderers()Ljava/util/List;

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

    .line 351
    .local v1, "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-interface {v1, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 352
    instance-of v2, v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v2, :cond_0

    .line 353
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v2

    .local v2, "childMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    goto :goto_1

    .line 355
    .end local v2    # "childMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    :cond_0
    invoke-static {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->countDefaultMinMaxWidth(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v2

    .line 357
    .restart local v2    # "childMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    :goto_1
    invoke-virtual {v2}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v3

    invoke-virtual {p1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p2, v3}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    .line 358
    invoke-virtual {v2}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v3

    invoke-virtual {p1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p2, v3}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    .line 359
    .end local v1    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v2    # "childMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    goto :goto_0

    .line 360
    :cond_1
    return-void
.end method

.method static synthetic lambda$createSplitAndOverflowRenderers$0(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/FlexItemInfo;)Z
    .locals 1
    .param p0, "childRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p1, "flexItem"    # Lcom/itextpdf/layout/renderer/FlexItemInfo;

    .line 186
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 341
    sget-object v0, Lcom/itextpdf/layout/property/OverflowPropertyValue;->VISIBLE:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    const/16 v1, 0x67

    invoke-interface {p1, v1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 342
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/DivRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 343
    return-void
.end method

.method createSplitAndOverflowRenderers(IILcom/itextpdf/layout/layout/LayoutResult;Ljava/util/Map;Ljava/util/List;)[Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 15
    .param p1, "childPos"    # I
    .param p2, "layoutStatus"    # I
    .param p3, "childResult"    # Lcom/itextpdf/layout/layout/LayoutResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;)[",
            "Lcom/itextpdf/layout/renderer/AbstractRenderer;"
        }
    .end annotation

    .line 179
    .local p4, "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local p5, "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    move-object v0, p0

    move/from16 v1, p2

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->createSplitRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v2

    .line 180
    .local v2, "splitRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v3

    .line 181
    .local v3, "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v4

    move/from16 v5, p1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 182
    .local v4, "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v7, 0x1a

    invoke-virtual {p0, v7}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 183
    .local v6, "forcedPlacement":Z
    const/4 v8, 0x0

    .line 184
    .local v8, "metChildRenderer":Z
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->lines:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 185
    .local v10, "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexItemInfo;>;"
    if-nez v8, :cond_1

    .line 186
    invoke-interface {v10}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v13

    new-instance v14, Lcom/itextpdf/layout/renderer/FlexContainerRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v14, v4}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/itextpdf/layout/renderer/IRenderer;)V

    invoke-interface {v13, v14}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_1

    :cond_0
    move v11, v12

    goto :goto_2

    :cond_1
    :goto_1
    nop

    :goto_2
    move v8, v11

    .line 187
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/layout/renderer/FlexItemInfo;

    .line 188
    .local v12, "itemInfo":Lcom/itextpdf/layout/renderer/FlexItemInfo;
    if-eqz v8, :cond_2

    if-nez v6, :cond_2

    .line 189
    invoke-virtual {v12}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_4

    .line 191
    :cond_2
    invoke-virtual {v12}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 193
    .end local v12    # "itemInfo":Lcom/itextpdf/layout/renderer/FlexItemInfo;
    :goto_4
    goto :goto_3

    .line 194
    .end local v10    # "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexItemInfo;>;"
    :cond_3
    goto :goto_0

    .line 196
    :cond_4
    invoke-virtual {v3, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->deleteOwnProperty(I)V

    .line 198
    const/4 v7, 0x2

    new-array v7, v7, [Lcom/itextpdf/layout/renderer/AbstractRenderer;

    aput-object v2, v7, v12

    aput-object v3, v7, v11

    return-object v7
.end method

.method decreaseLayoutBoxAfterChildPlacement(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/layout/LayoutResult;Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 2
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "result"    # Lcom/itextpdf/layout/layout/LayoutResult;
    .param p3, "childRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 296
    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 297
    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 298
    return-void
.end method

.method fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 0
    .param p1, "overflowX"    # Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .param p2, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 330
    return-void
.end method

.method public getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 6

    .line 144
    new-instance v0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->calculateAdditionalWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>(F)V

    .line 145
    .local v0, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    new-instance v1, Lcom/itextpdf/layout/renderer/MaxMaxWidthHandler;

    invoke-direct {v1, v0}, Lcom/itextpdf/layout/renderer/MaxMaxWidthHandler;-><init>(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)V

    .line 146
    .local v1, "minMaxWidthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->setMinMaxWidthBasedOnFixedWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 147
    const/16 v2, 0x50

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->hasAbsoluteUnitValue(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->retrieveMinWidth(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 148
    .local v2, "minWidth":Ljava/lang/Float;
    :goto_0
    const/16 v5, 0x4f

    invoke-virtual {p0, v5}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->hasAbsoluteUnitValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->retrieveMaxWidth(F)Ljava/lang/Float;

    move-result-object v4

    :cond_1
    move-object v3, v4

    .line 149
    .local v3, "maxWidth":Ljava/lang/Float;
    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    .line 150
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->findMinMaxWidthIfCorrespondingPropertiesAreNotSet(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;Lcom/itextpdf/layout/renderer/AbstractWidthHandler;)V

    .line 152
    :cond_3
    if-eqz v2, :cond_4

    .line 153
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    .line 156
    :cond_4
    if-nez v3, :cond_5

    .line 157
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMinWidth()F

    move-result v4

    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMaxWidth()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 158
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMinWidth()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    goto :goto_1

    .line 161
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    .line 165
    .end local v2    # "minWidth":Ljava/lang/Float;
    .end local v3    # "maxWidth":Ljava/lang/Float;
    :cond_6
    :goto_1
    const/16 v2, 0x37

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 166
    invoke-static {v0, p0}, Lcom/itextpdf/layout/renderer/RotationUtils;->countRotationMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;Lcom/itextpdf/layout/renderer/AbstractRenderer;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v2

    return-object v2

    .line 169
    :cond_7
    return-object v0
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 82
    new-instance v0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    check-cast v1, Lcom/itextpdf/layout/element/Div;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;-><init>(Lcom/itextpdf/layout/element/Div;)V

    return-object v0
.end method

.method getOccupiedAreaInCaseNothingWasWrappedWithFull(Lcom/itextpdf/layout/layout/LayoutResult;Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 1
    .param p1, "result"    # Lcom/itextpdf/layout/layout/LayoutResult;
    .param p2, "splitRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 257
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 16
    .param p1, "layoutContext"    # Lcom/itextpdf/layout/layout/LayoutContext;

    .line 90
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 91
    .local v1, "layoutContextRectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->setThisAsParent(Ljava/util/Collection;)V

    .line 92
    invoke-static {v1, v0}, Lcom/itextpdf/layout/renderer/FlexUtil;->calculateChildrenRectangles(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/renderer/FlexContainerRenderer;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->lines:Ljava/util/List;

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v2, "previousWidths":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/property/UnitValue;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v3, "previousHeights":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/property/UnitValue;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v4, "previousMinHeights":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/property/UnitValue;>;"
    iget-object v5, v0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->lines:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v7, 0x55

    const/16 v8, 0x1b

    const/16 v9, 0x4d

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 97
    .local v6, "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexItemInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/layout/renderer/FlexItemInfo;

    .line 99
    .local v11, "itemInfo":Lcom/itextpdf/layout/renderer/FlexItemInfo;
    invoke-virtual {v11}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v12

    invoke-static {v12}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_0

    .line 100
    nop

    .line 101
    invoke-virtual {v11}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v12

    invoke-virtual {v11}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v14

    invoke-virtual {v14}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v14

    invoke-virtual {v12, v14, v13}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v12

    .local v12, "rectangleWithoutBordersMarginsPaddings":Lcom/itextpdf/kernel/geom/Rectangle;
    goto :goto_2

    .line 103
    .end local v12    # "rectangleWithoutBordersMarginsPaddings":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_0
    nop

    .line 104
    invoke-virtual {v11}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v12

    invoke-virtual {v11}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v14

    invoke-virtual {v14}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v14

    invoke-virtual {v12, v14, v13}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMarginsBordersPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v12

    .line 107
    .restart local v12    # "rectangleWithoutBordersMarginsPaddings":Lcom/itextpdf/kernel/geom/Rectangle;
    :goto_2
    invoke-virtual {v11}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {v11}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v11}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v11}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v13

    .line 112
    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v14

    invoke-static {v14}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v14

    .line 111
    invoke-virtual {v13, v9, v14}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 113
    invoke-virtual {v11}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v13

    .line 114
    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v14

    invoke-static {v14}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v14

    .line 113
    invoke-virtual {v13, v8, v14}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 118
    invoke-virtual {v11}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v13

    .line 119
    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v14

    invoke-static {v14}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v14

    .line 118
    invoke-virtual {v13, v7, v14}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 120
    .end local v11    # "itemInfo":Lcom/itextpdf/layout/renderer/FlexItemInfo;
    .end local v12    # "rectangleWithoutBordersMarginsPaddings":Lcom/itextpdf/kernel/geom/Rectangle;
    goto/16 :goto_1

    .line 121
    .end local v6    # "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexItemInfo;>;"
    :cond_1
    goto/16 :goto_0

    .line 122
    :cond_2
    invoke-super/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/DivRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v5

    .line 127
    .local v5, "result":Lcom/itextpdf/layout/layout/LayoutResult;
    const/4 v6, 0x0

    .line 128
    .local v6, "counter":I
    iget-object v10, v0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->lines:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 129
    .local v11, "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexItemInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/layout/renderer/FlexItemInfo;

    .line 130
    .local v13, "itemInfo":Lcom/itextpdf/layout/renderer/FlexItemInfo;
    invoke-virtual {v13}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v14

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v9, v15}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 131
    invoke-virtual {v13}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v14

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v8, v15}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 132
    invoke-virtual {v13}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v14

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v7, v15}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 133
    nop

    .end local v13    # "itemInfo":Lcom/itextpdf/layout/renderer/FlexItemInfo;
    add-int/lit8 v6, v6, 0x1

    .line 134
    goto :goto_4

    .line 135
    .end local v11    # "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexItemInfo;>;"
    :cond_3
    goto :goto_3

    .line 136
    :cond_4
    return-object v5
.end method

.method processNotFullChildResult(Lcom/itextpdf/layout/layout/LayoutContext;Ljava/util/Map;Ljava/util/List;ZLjava/util/List;ZF[Lcom/itextpdf/layout/borders/Border;[Lcom/itextpdf/layout/property/UnitValue;Ljava/util/List;ILcom/itextpdf/kernel/geom/Rectangle;Ljava/util/Set;Lcom/itextpdf/layout/renderer/IRenderer;ZILcom/itextpdf/layout/layout/LayoutResult;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 16
    .param p1, "layoutContext"    # Lcom/itextpdf/layout/layout/LayoutContext;
    .param p4, "wasHeightClipped"    # Z
    .param p6, "marginsCollapsingEnabled"    # Z
    .param p7, "clearHeightCorrection"    # F
    .param p8, "borders"    # [Lcom/itextpdf/layout/borders/Border;
    .param p9, "paddings"    # [Lcom/itextpdf/layout/property/UnitValue;
    .param p11, "currentAreaPos"    # I
    .param p12, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p14, "causeOfNothing"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p15, "anythingPlaced"    # Z
    .param p16, "childPos"    # I
    .param p17, "result"    # Lcom/itextpdf/layout/layout/LayoutResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/layout/LayoutContext;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;Z",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;ZF[",
            "Lcom/itextpdf/layout/borders/Border;",
            "[",
            "Lcom/itextpdf/layout/property/UnitValue;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;I",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            "ZI",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            ")",
            "Lcom/itextpdf/layout/layout/LayoutResult;"
        }
    .end annotation

    .line 211
    .local p2, "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local p3, "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local p5, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local p10, "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local p13, "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p14

    invoke-virtual {v6, v7}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->isKeepTogether(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v8

    .line 213
    .local v8, "keepTogether":Z
    nop

    .line 214
    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v2

    .line 213
    move-object/from16 v0, p0

    move/from16 v1, p16

    move-object/from16 v3, p17

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->createSplitAndOverflowRenderers(IILcom/itextpdf/layout/layout/LayoutResult;Ljava/util/Map;Ljava/util/List;)[Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v0

    .line 216
    .local v0, "splitAndOverflowRenderers":[Lcom/itextpdf/layout/renderer/AbstractRenderer;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 217
    .local v1, "splitRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    const/4 v2, 0x1

    aget-object v3, v0, v2

    .line 218
    .local v3, "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    const/16 v4, 0x1a

    invoke-virtual {v3, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->deleteOwnProperty(I)V

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->isRelativePosition()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v6, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 221
    new-instance v5, Ljava/util/ArrayList;

    iget-object v9, v6, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->positionedRenderers:Ljava/util/List;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v3, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    .line 226
    :cond_0
    if-eqz v8, :cond_1

    .line 227
    const/4 v1, 0x0

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setChildRenderers(Ljava/util/List;)V

    .line 231
    :cond_1
    move-object/from16 v5, p12

    invoke-virtual {v6, v5}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->correctFixedLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 233
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->applyAbsolutePositionIfNeeded(Lcom/itextpdf/layout/layout/LayoutContext;)V

    .line 235
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v4}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz p4, :cond_2

    move-object/from16 v15, p9

    goto :goto_1

    .line 242
    :cond_2
    iget-object v4, v6, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    move-object/from16 v15, p9

    invoke-virtual {v6, v4, v15, v2}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 243
    iget-object v4, v6, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    move-object/from16 v14, p8

    invoke-virtual {v6, v4, v14, v2}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 244
    iget-object v4, v6, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v6, v4, v2}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 245
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 249
    :cond_3
    new-instance v2, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v10, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v11

    const/4 v4, 0x0

    move-object v9, v2

    move-object v12, v1

    move-object v13, v3

    move-object v14, v4

    invoke-direct/range {v9 .. v14}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 250
    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/layout/layout/LayoutResult;->setAreaBreak(Lcom/itextpdf/layout/element/AreaBreak;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v2

    .line 249
    return-object v2

    .line 246
    :cond_4
    :goto_0
    new-instance v2, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 247
    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v14

    move-object v9, v2

    move-object v13, v3

    invoke-direct/range {v9 .. v14}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/layout/layout/LayoutResult;->setAreaBreak(Lcom/itextpdf/layout/element/AreaBreak;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v2

    .line 246
    return-object v2

    .line 235
    :cond_5
    move-object/from16 v15, p9

    .line 236
    :goto_1
    if-eqz v1, :cond_6

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setChildRenderers(Ljava/util/List;)V

    .line 239
    :cond_6
    new-instance v2, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v10, 0x1

    .line 240
    move-object/from16 v4, p17

    invoke-virtual {v6, v4, v1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getOccupiedAreaInCaseNothingWasWrappedWithFull(Lcom/itextpdf/layout/layout/LayoutResult;Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v2

    move-object v12, v1

    invoke-direct/range {v9 .. v14}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 239
    return-object v2
.end method

.method recalculateLayoutBoxBeforeChildLayout(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 3
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "childRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p3, "initialLayoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 303
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 304
    .local v0, "layoutBoxCopy":Lcom/itextpdf/kernel/geom/Rectangle;
    instance-of v1, p2, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v1, :cond_0

    .line 305
    move-object v1, p2

    check-cast v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-direct {p0, v1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->findFlexItemInfo(Lcom/itextpdf/layout/renderer/AbstractRenderer;)Lcom/itextpdf/layout/renderer/FlexItemInfo;

    move-result-object v1

    .line 306
    .local v1, "childFlexItemInfo":Lcom/itextpdf/layout/renderer/FlexItemInfo;
    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 308
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 310
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 313
    .end local v1    # "childFlexItemInfo":Lcom/itextpdf/layout/renderer/FlexItemInfo;
    :cond_0
    return-object v0
.end method

.method recalculateOccupiedAreaAfterChildLayout(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;)V
    .locals 5
    .param p1, "resultBBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "blockMaxHeight"    # Ljava/lang/Float;

    .line 270
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 271
    .local v0, "oldBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 273
    .local v1, "recalculatedRectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 274
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 275
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v3

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 278
    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 279
    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 281
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 282
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 284
    :cond_1
    return-void
.end method

.method startChildMarginsHandling(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .locals 1
    .param p1, "childRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "marginsCollapseHandler"    # Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    .line 289
    const/4 v0, 0x0

    invoke-virtual {p3, v0, p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->startChildMarginsHandling(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object v0

    return-object v0
.end method

.method stopLayoutingChildrenIfChildResultNotFull(Lcom/itextpdf/layout/layout/LayoutResult;)Z
    .locals 2
    .param p1, "returnResult"    # Lcom/itextpdf/layout/layout/LayoutResult;

    .line 262
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
