.class final Lcom/itextpdf/layout/renderer/FlexUtil;
.super Ljava/lang/Object;
.source "FlexUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EPSILON:F = 1.0E-4f

.field private static final FLEX_GROW_INITIAL_VALUE:F = 0.0f

.field private static final FLEX_SHRINK_INITIAL_VALUE:F = 1.0f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 61
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method private static applyAlignItemsAndAlignSelf(Ljava/util/List;Lcom/itextpdf/layout/renderer/FlexContainerRenderer;Ljava/util/List;)V
    .locals 9
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/FlexContainerRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;>;",
            "Lcom/itextpdf/layout/renderer/FlexContainerRenderer;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 508
    .local p0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;>;"
    .local p2, "lineCrossSizes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    sget-object v0, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->STRETCH:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    const/16 v1, 0x86

    invoke-virtual {p1, v1, v0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    .line 511
    .local v0, "itemsAlignment":Lcom/itextpdf/layout/property/AlignmentPropertyValue;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 513
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 514
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 515
    .local v2, "lineCrossSize":F
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 516
    .local v4, "itemInfo":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    iget-object v5, v4, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    const/16 v6, 0x81

    .line 517
    invoke-virtual {v5, v6, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    .line 520
    .local v5, "selfAlignment":Lcom/itextpdf/layout/property/AlignmentPropertyValue;
    iget v6, v4, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->crossSize:F

    invoke-virtual {v4, v6}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterCrossSize(F)F

    move-result v6

    sub-float v6, v2, v6

    .line 522
    .local v6, "freeSpace":F
    sget-object v7, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$AlignmentPropertyValue:[I

    invoke-virtual {v5}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    .line 529
    :pswitch_0
    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v6, v7

    iput v7, v4, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->yShift:F

    .line 530
    goto :goto_2

    .line 526
    :pswitch_1
    iput v6, v4, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->yShift:F

    .line 527
    nop

    .line 540
    .end local v4    # "itemInfo":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    .end local v5    # "selfAlignment":Lcom/itextpdf/layout/property/AlignmentPropertyValue;
    .end local v6    # "freeSpace":F
    :goto_2
    goto :goto_1

    .line 513
    .end local v2    # "lineCrossSize":F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 542
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 511
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static applyJustifyContent(Ljava/util/List;Lcom/itextpdf/layout/renderer/FlexContainerRenderer;F)V
    .locals 7
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/FlexContainerRenderer;
    .param p2, "mainSize"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;>;",
            "Lcom/itextpdf/layout/renderer/FlexContainerRenderer;",
            "F)V"
        }
    .end annotation

    .line 546
    .local p0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;>;"
    sget-object v0, Lcom/itextpdf/layout/property/JustifyContent;->FLEX_START:Lcom/itextpdf/layout/property/JustifyContent;

    const/16 v1, 0x87

    invoke-virtual {p1, v1, v0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/JustifyContent;

    .line 549
    .local v0, "justifyContent":Lcom/itextpdf/layout/property/JustifyContent;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 550
    .local v2, "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;"
    const/4 v3, 0x0

    .line 551
    .local v3, "childrenWidth":F
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 552
    .local v5, "itemInfo":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    iget v6, v5, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    invoke-virtual {v5, v6}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterMainSize(F)F

    move-result v6

    add-float/2addr v3, v6

    .line 553
    .end local v5    # "itemInfo":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    goto :goto_1

    .line 554
    :cond_0
    sub-float v4, p2, v3

    .line 556
    .local v4, "freeSpace":F
    sget-object v5, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$JustifyContent:[I

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/JustifyContent;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 564
    :pswitch_0
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v4, v6

    iput v6, v5, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->xShift:F

    .line 565
    goto :goto_2

    .line 561
    :pswitch_1
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    iput v4, v5, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->xShift:F

    .line 562
    nop

    .line 575
    .end local v2    # "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;"
    .end local v3    # "childrenWidth":F
    .end local v4    # "freeSpace":F
    :goto_2
    goto :goto_0

    .line 577
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static calculateChildrenRectangles(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/renderer/FlexContainerRenderer;)Ljava/util/List;
    .locals 19
    .param p0, "flexContainerBBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p1, "flexContainerRenderer"    # Lcom/itextpdf/layout/renderer/FlexContainerRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "Lcom/itextpdf/layout/renderer/FlexContainerRenderer;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexItemInfo;",
            ">;>;"
        }
    .end annotation

    .line 86
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 87
    .local v1, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->applyMarginsBordersPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 97
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object v3

    .line 98
    .local v3, "mainSize":Ljava/lang/Float;
    if-nez v3, :cond_0

    .line 99
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 102
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->retrieveHeight()Ljava/lang/Float;

    move-result-object v4

    .line 103
    .local v4, "crossSize":Ljava/lang/Float;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->retrieveMinHeight()Ljava/lang/Float;

    move-result-object v5

    .line 104
    .local v5, "minCrossSize":Ljava/lang/Float;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->retrieveMaxHeight()Ljava/lang/Float;

    move-result-object v6

    .line 106
    .local v6, "maxCrossSize":Ljava/lang/Float;
    nop

    .line 107
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v0, v7}, Lcom/itextpdf/layout/renderer/FlexUtil;->createFlexItemCalculationInfos(Lcom/itextpdf/layout/renderer/FlexContainerRenderer;F)Ljava/util/List;

    move-result-object v7

    .line 109
    .local v7, "flexItemCalculationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;"
    invoke-static {v7}, Lcom/itextpdf/layout/renderer/FlexUtil;->determineFlexBasisAndHypotheticalMainSizeForFlexItems(Ljava/util/List;)V

    .line 114
    const/16 v8, 0x80

    invoke-virtual {v0, v8}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->hasProperty(I)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lcom/itextpdf/layout/property/FlexWrapPropertyValue;->NOWRAP:Lcom/itextpdf/layout/property/FlexWrapPropertyValue;

    .line 115
    invoke-virtual {v0, v8}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v9, v8, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 118
    .local v2, "isSingleLine":Z
    :cond_2
    nop

    .line 119
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-static {v7, v8, v2}, Lcom/itextpdf/layout/renderer/FlexUtil;->collectFlexItemsIntoFlexLines(Ljava/util/List;FZ)Ljava/util/List;

    move-result-object v8

    .line 125
    .local v8, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;>;"
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-static {v8, v9}, Lcom/itextpdf/layout/renderer/FlexUtil;->resolveFlexibleLengths(Ljava/util/List;F)V

    .line 131
    invoke-static {v8}, Lcom/itextpdf/layout/renderer/FlexUtil;->determineHypotheticalCrossSizeForFlexItems(Ljava/util/List;)V

    .line 134
    nop

    .line 135
    invoke-static {v8, v2, v5, v4, v6}, Lcom/itextpdf/layout/renderer/FlexUtil;->calculateCrossSizeOfEachFlexLine(Ljava/util/List;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Ljava/util/List;

    move-result-object v9

    .line 142
    .local v9, "lineCrossSizes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v10, 0x0

    .line 143
    .local v10, "flexLinesCrossSizesSum":F
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 144
    .local v12, "size":F
    add-float/2addr v10, v12

    .line 145
    .end local v12    # "size":F
    goto :goto_0

    .line 148
    :cond_3
    invoke-static {v0, v4, v10, v9}, Lcom/itextpdf/layout/renderer/FlexUtil;->handleAlignContentStretch(Lcom/itextpdf/layout/renderer/FlexContainerRenderer;Ljava/lang/Float;FLjava/util/List;)V

    .line 154
    invoke-static {v8, v9, v0}, Lcom/itextpdf/layout/renderer/FlexUtil;->determineUsedCrossSizeOfEachFlexItem(Ljava/util/List;Ljava/util/List;Lcom/itextpdf/layout/renderer/FlexContainerRenderer;)V

    .line 158
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-static {v8, v0, v11}, Lcom/itextpdf/layout/renderer/FlexUtil;->applyJustifyContent(Ljava/util/List;Lcom/itextpdf/layout/renderer/FlexContainerRenderer;F)V

    .line 166
    invoke-static {v8, v0, v9}, Lcom/itextpdf/layout/renderer/FlexUtil;->applyAlignItemsAndAlignSelf(Ljava/util/List;Lcom/itextpdf/layout/renderer/FlexContainerRenderer;Ljava/util/List;)V

    .line 172
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v11, "layoutTable":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexItemInfo;>;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 174
    .local v13, "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v14, "layoutLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexItemInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 176
    .local v0, "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    move-object/from16 v16, v1

    .end local v1    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v16, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    new-instance v1, Lcom/itextpdf/layout/renderer/FlexItemInfo;

    move/from16 v17, v2

    .end local v2    # "isSingleLine":Z
    .local v17, "isSingleLine":Z
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-object/from16 v18, v3

    .end local v3    # "mainSize":Ljava/lang/Float;
    .local v18, "mainSize":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/renderer/FlexItemInfo;-><init>(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v0    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    goto :goto_2

    .line 178
    .end local v16    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v17    # "isSingleLine":Z
    .end local v18    # "mainSize":Ljava/lang/Float;
    .restart local v1    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v2    # "isSingleLine":Z
    .restart local v3    # "mainSize":Ljava/lang/Float;
    :cond_4
    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v3

    .end local v1    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v2    # "isSingleLine":Z
    .end local v3    # "mainSize":Ljava/lang/Float;
    .restart local v16    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v17    # "isSingleLine":Z
    .restart local v18    # "mainSize":Ljava/lang/Float;
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v13    # "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;"
    .end local v14    # "layoutLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexItemInfo;>;"
    move-object/from16 v0, p1

    goto :goto_1

    .line 181
    .end local v16    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v17    # "isSingleLine":Z
    .end local v18    # "mainSize":Ljava/lang/Float;
    .restart local v1    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v2    # "isSingleLine":Z
    .restart local v3    # "mainSize":Ljava/lang/Float;
    :cond_5
    return-object v11
.end method

.method static calculateCrossSizeOfEachFlexLine(Ljava/util/List;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Ljava/util/List;
    .locals 8
    .param p1, "isSingleLine"    # Z
    .param p2, "minCrossSize"    # Ljava/lang/Float;
    .param p3, "crossSize"    # Ljava/lang/Float;
    .param p4, "maxCrossSize"    # Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;>;Z",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 410
    .local p0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v0, "lineCrossSizes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 414
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 415
    .local v2, "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;"
    const/4 v3, 0x0

    .line 417
    .local v3, "flexLinesCrossSize":F
    const/4 v4, 0x0

    .line 418
    .local v4, "largestHypotheticalCrossSize":F
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 430
    .local v6, "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    iget v7, v6, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalCrossSize:F

    invoke-virtual {v6, v7}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterCrossSize(F)F

    move-result v7

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    .line 431
    iget v7, v6, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalCrossSize:F

    invoke-virtual {v6, v7}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterCrossSize(F)F

    move-result v4

    .line 433
    :cond_1
    const/4 v7, 0x0

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 434
    .end local v6    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    goto :goto_1

    .line 438
    :cond_2
    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 439
    if-eqz p2, :cond_3

    .line 440
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 442
    :cond_3
    if-eqz p4, :cond_4

    .line 443
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 446
    :cond_4
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    .end local v2    # "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;"
    .end local v3    # "flexLinesCrossSize":F
    .end local v4    # "largestHypotheticalCrossSize":F
    goto :goto_0

    .line 449
    :cond_5
    :goto_2
    return-object v0
.end method

.method private static calculateFreeSpace(Ljava/util/List;F)F
    .locals 4
    .param p1, "initialFreeSpace"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;F)F"
        }
    .end annotation

    .line 580
    .local p0, "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;"
    move v0, p1

    .line 581
    .local v0, "result":F
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 582
    .local v2, "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    iget-boolean v3, v2, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    if-eqz v3, :cond_0

    .line 583
    iget v3, v2, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterMainSize(F)F

    move-result v3

    sub-float/2addr v0, v3

    goto :goto_1

    .line 585
    :cond_0
    iget v3, v2, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBaseSize:F

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterMainSize(F)F

    move-result v3

    sub-float/2addr v0, v3

    .line 587
    .end local v2    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    :goto_1
    goto :goto_0

    .line 588
    :cond_1
    return v0
.end method

.method private static calculateMaxWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;F)F
    .locals 5
    .param p0, "flexItemRenderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .param p1, "flexContainerWidth"    # F

    .line 640
    instance-of v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 643
    .local v0, "maxWidth":Ljava/lang/Float;
    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 644
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {v3, v4, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    .line 643
    invoke-virtual {p0, v3, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMarginsBordersPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 644
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    .line 643
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 647
    .end local v0    # "maxWidth":Ljava/lang/Float;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object v0

    .line 648
    .restart local v0    # "maxWidth":Ljava/lang/Float;
    if-nez v0, :cond_1

    .line 649
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveMaxWidth(F)Ljava/lang/Float;

    move-result-object v0

    .line 651
    :cond_1
    if-nez v0, :cond_2

    .line 652
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 653
    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 654
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {v3, v4, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    .line 653
    invoke-virtual {p0, v3, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMarginsBordersPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 654
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    .line 653
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 657
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method static collectFlexItemsIntoFlexLines(Ljava/util/List;FZ)Ljava/util/List;
    .locals 6
    .param p1, "mainSize"    # F
    .param p2, "isSingleLine"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;FZ)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;>;"
        }
    .end annotation

    .line 238
    .local p0, "flexItemCalculationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v1, "currentLineInfos":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;"
    if-eqz p2, :cond_0

    .line 242
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 244
    :cond_0
    const/4 v2, 0x0

    .line 245
    .local v2, "occupiedLineSpace":F
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 246
    .local v4, "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    iget v5, v4, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalMainSize:F

    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterMainSize(F)F

    move-result v5

    add-float/2addr v2, v5

    .line 247
    const v5, 0x38d1b717    # 1.0E-4f

    add-float/2addr v5, p1

    cmpl-float v5, v2, v5

    if-lez v5, :cond_2

    .line 249
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 250
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 253
    const/4 v2, 0x0

    goto :goto_1

    .line 255
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 257
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget v2, v4, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalMainSize:F

    goto :goto_1

    .line 261
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v4    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    :goto_1
    goto :goto_0

    .line 267
    .end local v2    # "occupiedLineSpace":F
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 268
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_4
    return-object v0
.end method

.method private static createFlexItemCalculationInfos(Lcom/itextpdf/layout/renderer/FlexContainerRenderer;F)Ljava/util/List;
    .locals 17
    .param p0, "flexContainerRenderer"    # Lcom/itextpdf/layout/renderer/FlexContainerRenderer;
    .param p1, "flexContainerWidth"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/FlexContainerRenderer;",
            "F)",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;"
        }
    .end annotation

    .line 606
    move/from16 v6, p1

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v7

    .line 607
    .local v7, "childRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 608
    .local v8, "flexItems":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 609
    .local v10, "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    instance-of v0, v10, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v0, :cond_2

    .line 610
    move-object v11, v10

    check-cast v11, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 613
    .local v11, "abstractRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    invoke-static {v11, v6}, Lcom/itextpdf/layout/renderer/FlexUtil;->calculateMaxWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;F)F

    move-result v12

    .line 615
    .local v12, "maxWidth":F
    const/16 v0, 0x83

    invoke-interface {v10, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 616
    move v0, v12

    .local v0, "flexBasis":F
    goto :goto_1

    .line 618
    .end local v0    # "flexBasis":F
    :cond_0
    invoke-virtual {v11, v6, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 619
    .restart local v0    # "flexBasis":F
    invoke-static {v11}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 620
    invoke-static {v11}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 623
    :cond_1
    :goto_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 625
    .end local v0    # "flexBasis":F
    .local v13, "flexBasis":F
    const/16 v0, 0x84

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v10, v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v14

    .line 627
    .local v14, "flexGrow":F
    const/16 v0, 0x85

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v10, v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v15

    .line 629
    .local v15, "flexShrink":F
    new-instance v16, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    move-object v1, v10

    check-cast v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-object/from16 v0, v16

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;-><init>(Lcom/itextpdf/layout/renderer/AbstractRenderer;FFFF)V

    .line 632
    .local v0, "flexItemInfo":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    .end local v0    # "flexItemInfo":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    .end local v10    # "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v11    # "abstractRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .end local v12    # "maxWidth":F
    .end local v13    # "flexBasis":F
    .end local v14    # "flexGrow":F
    .end local v15    # "flexShrink":F
    :cond_2
    goto :goto_0

    .line 635
    :cond_3
    return-object v8
.end method

.method static determineFlexBasisAndHypotheticalMainSizeForFlexItems(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p0, "flexItemCalculationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 190
    .local v1, "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    iget v2, v1, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBasis:F

    iput v2, v1, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBaseSize:F

    .line 223
    const/4 v2, 0x0

    iget v3, v1, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->minContent:F

    iget v4, v1, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBaseSize:F

    .line 226
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, v1, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->maxContent:F

    .line 225
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 223
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalMainSize:F

    .line 229
    iget v2, v1, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalMainSize:F

    iput v2, v1, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    .line 233
    .end local v1    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    goto :goto_0

    .line 234
    :cond_0
    return-void
.end method

.method static determineHypotheticalCrossSizeForFlexItems(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 397
    .local p0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 398
    .local v1, "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 399
    .local v3, "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    iget-object v4, v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    new-instance v5, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v6, Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v7, 0x0

    new-instance v8, Lcom/itextpdf/kernel/geom/Rectangle;

    iget v9, v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    .line 400
    invoke-virtual {v3, v9}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterMainSize(F)F

    move-result v9

    const v10, 0x49742400    # 1000000.0f

    invoke-direct {v8, v9, v10}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v5, v6}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    .line 399
    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v4

    .line 402
    .local v4, "result":Lcom/itextpdf/layout/layout/LayoutResult;
    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 403
    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getInnerCrossSize(F)F

    move-result v5

    iput v5, v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalCrossSize:F

    .line 404
    .end local v3    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    .end local v4    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    goto :goto_1

    .line 402
    .restart local v3    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    .restart local v4    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 405
    .end local v1    # "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;"
    .end local v3    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    .end local v4    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    :cond_1
    goto :goto_0

    .line 406
    :cond_2
    return-void
.end method

.method static determineUsedCrossSizeOfEachFlexItem(Ljava/util/List;Ljava/util/List;Lcom/itextpdf/layout/renderer/FlexContainerRenderer;)V
    .locals 10
    .param p2, "flexContainerRenderer"    # Lcom/itextpdf/layout/renderer/FlexContainerRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/itextpdf/layout/renderer/FlexContainerRenderer;",
            ")V"
        }
    .end annotation

    .line 469
    .local p0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;>;"
    .local p1, "lineCrossSizes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    sget-object v0, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->STRETCH:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    .line 470
    const/16 v1, 0x86

    invoke-virtual {p2, v1, v0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    .line 473
    .local v0, "alignItems":Lcom/itextpdf/layout/property/AlignmentPropertyValue;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 475
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 476
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 484
    .local v3, "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    iget-object v4, v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 485
    .local v4, "infoRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    const/16 v5, 0x81

    .line 486
    invoke-virtual {v4, v5, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    .line 489
    .local v5, "alignSelf":Lcom/itextpdf/layout/property/AlignmentPropertyValue;
    sget-object v6, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->STRETCH:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    if-eq v5, v6, :cond_1

    sget-object v6, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->NORMAL:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    if-ne v5, v6, :cond_0

    goto :goto_2

    .line 500
    :cond_0
    iget v6, v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalCrossSize:F

    iput v6, v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->crossSize:F

    goto :goto_3

    .line 490
    :cond_1
    :goto_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getInnerCrossSize(F)F

    move-result v6

    iput v6, v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->crossSize:F

    .line 491
    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveMaxHeight()Ljava/lang/Float;

    move-result-object v6

    .line 492
    .local v6, "maxHeight":Ljava/lang/Float;
    if-eqz v6, :cond_2

    .line 493
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget v8, v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->crossSize:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->crossSize:F

    .line 495
    :cond_2
    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveMinHeight()Ljava/lang/Float;

    move-result-object v7

    .line 496
    .local v7, "minHeight":Ljava/lang/Float;
    if-eqz v7, :cond_3

    .line 497
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget v9, v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->crossSize:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->crossSize:F

    .line 499
    .end local v6    # "maxHeight":Ljava/lang/Float;
    .end local v7    # "minHeight":Ljava/lang/Float;
    :cond_3
    nop

    .line 502
    .end local v3    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    .end local v4    # "infoRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .end local v5    # "alignSelf":Lcom/itextpdf/layout/property/AlignmentPropertyValue;
    :goto_3
    goto :goto_1

    .line 475
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    .end local v1    # "i":I
    :cond_5
    return-void

    .line 473
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method static handleAlignContentStretch(Lcom/itextpdf/layout/renderer/FlexContainerRenderer;Ljava/lang/Float;FLjava/util/List;)V
    .locals 4
    .param p0, "flexContainerRenderer"    # Lcom/itextpdf/layout/renderer/FlexContainerRenderer;
    .param p1, "crossSize"    # Ljava/lang/Float;
    .param p2, "flexLinesCrossSizesSum"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/FlexContainerRenderer;",
            "Ljava/lang/Float;",
            "F",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 454
    .local p3, "lineCrossSizes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    sget-object v0, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->STRETCH:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    .line 455
    const/16 v1, 0x82

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    .line 457
    .local v0, "alignContent":Lcom/itextpdf/layout/property/AlignmentPropertyValue;
    if-eqz p1, :cond_0

    sget-object v1, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->STRETCH:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    if-ne v0, v1, :cond_0

    .line 458
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    sub-float/2addr v1, v2

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    .line 459
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, p2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 460
    .local v1, "addition":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 461
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 460
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    .end local v1    # "addition":F
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private static hasFlexibleItems(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;)Z"
        }
    .end annotation

    .line 592
    .local p0, "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 593
    .local v1, "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    iget-boolean v2, v1, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    if-nez v2, :cond_0

    .line 594
    const/4 v0, 0x1

    return v0

    .line 596
    .end local v1    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    :cond_0
    goto :goto_0

    .line 597
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static isZero(F)Z
    .locals 2
    .param p0, "value"    # F

    .line 601
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static resolveFlexibleLengths(Ljava/util/List;F)V
    .locals 14
    .param p1, "mainSize"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;>;F)V"
        }
    .end annotation

    .line 275
    .local p0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 278
    .local v1, "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;"
    const/4 v2, 0x0

    .line 279
    .local v2, "hypotheticalMainSizesSum":F
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 280
    .local v4, "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    iget v5, v4, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalMainSize:F

    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterMainSize(F)F

    move-result v5

    add-float/2addr v2, v5

    .line 281
    .end local v4    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    goto :goto_1

    .line 285
    :cond_0
    cmpg-float v3, v2, p1

    const/4 v4, 0x1

    if-gez v3, :cond_1

    move v3, v4

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 287
    .local v3, "isFlexGrow":Z
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 288
    .local v6, "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    if-eqz v3, :cond_3

    .line 289
    iget v7, v6, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexGrow:F

    invoke-static {v7}, Lcom/itextpdf/layout/renderer/FlexUtil;->isZero(F)Z

    move-result v7

    if-nez v7, :cond_2

    iget v7, v6, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBaseSize:F

    iget v8, v6, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalMainSize:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    .line 290
    :cond_2
    iget v7, v6, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalMainSize:F

    iput v7, v6, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    .line 291
    iput-boolean v4, v6, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    goto :goto_4

    .line 294
    :cond_3
    iget v7, v6, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexShrink:F

    invoke-static {v7}, Lcom/itextpdf/layout/renderer/FlexUtil;->isZero(F)Z

    move-result v7

    if-nez v7, :cond_4

    iget v7, v6, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBaseSize:F

    iget v8, v6, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalMainSize:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5

    .line 295
    :cond_4
    iget v7, v6, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalMainSize:F

    iput v7, v6, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    .line 296
    iput-boolean v4, v6, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    .line 299
    .end local v6    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    :cond_5
    :goto_4
    goto :goto_3

    .line 302
    :cond_6
    invoke-static {v1, p1}, Lcom/itextpdf/layout/renderer/FlexUtil;->calculateFreeSpace(Ljava/util/List;F)F

    move-result v5

    .line 306
    .local v5, "initialFreeSpace":F
    :goto_5
    invoke-static {v1}, Lcom/itextpdf/layout/renderer/FlexUtil;->hasFlexibleItems(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 309
    invoke-static {v1, p1}, Lcom/itextpdf/layout/renderer/FlexUtil;->calculateFreeSpace(Ljava/util/List;F)F

    move-result v6

    .line 310
    .local v6, "remainingFreeSpace":F
    const/4 v7, 0x0

    .line 311
    .local v7, "flexFactorSum":F
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 312
    .local v9, "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    iget-boolean v10, v9, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    if-nez v10, :cond_8

    .line 313
    if-eqz v3, :cond_7

    iget v10, v9, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexGrow:F

    goto :goto_7

    :cond_7
    iget v10, v9, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexShrink:F

    :goto_7
    add-float/2addr v7, v10

    .line 315
    .end local v9    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    :cond_8
    goto :goto_6

    .line 320
    :cond_9
    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v8, v7, v8

    if-gez v8, :cond_a

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float v9, v5, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_a

    .line 321
    mul-float v6, v5, v7

    .line 325
    :cond_a
    invoke-static {v6}, Lcom/itextpdf/layout/renderer/FlexUtil;->isZero(F)Z

    move-result v8

    if-nez v8, :cond_10

    .line 326
    const/4 v8, 0x0

    .line 327
    .local v8, "scaledFlexShrinkFactorsSum":F
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 328
    .local v10, "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    iget-boolean v11, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    if-nez v11, :cond_c

    .line 329
    if-eqz v3, :cond_b

    .line 330
    iget v11, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexGrow:F

    div-float/2addr v11, v7

    .line 331
    .local v11, "ratio":F
    iget v12, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBaseSize:F

    mul-float v13, v6, v11

    add-float/2addr v12, v13

    iput v12, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    .line 332
    .end local v11    # "ratio":F
    goto :goto_9

    .line 333
    :cond_b
    iget v11, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexShrink:F

    iget v12, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBaseSize:F

    mul-float/2addr v11, v12

    iput v11, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->scaledFlexShrinkFactor:F

    .line 334
    iget v11, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->scaledFlexShrinkFactor:F

    add-float/2addr v8, v11

    .line 337
    .end local v10    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    :cond_c
    :goto_9
    goto :goto_8

    .line 339
    :cond_d
    invoke-static {v8}, Lcom/itextpdf/layout/renderer/FlexUtil;->isZero(F)Z

    move-result v9

    if-nez v9, :cond_f

    .line 340
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 341
    .restart local v10    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    iget-boolean v11, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    if-nez v11, :cond_e

    if-nez v3, :cond_e

    .line 342
    iget v11, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->scaledFlexShrinkFactor:F

    div-float/2addr v11, v8

    .line 343
    .restart local v11    # "ratio":F
    iget v12, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBaseSize:F

    .line 344
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v13

    mul-float/2addr v13, v11

    sub-float/2addr v12, v13

    iput v12, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    .line 346
    .end local v10    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    .end local v11    # "ratio":F
    :cond_e
    goto :goto_a

    .line 348
    .end local v8    # "scaledFlexShrinkFactorsSum":F
    :cond_f
    goto :goto_c

    .line 350
    :cond_10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 351
    .restart local v9    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    iget-boolean v10, v9, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    if-nez v10, :cond_11

    .line 352
    iget v10, v9, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBaseSize:F

    iput v10, v9, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    .line 354
    .end local v9    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    :cond_11
    goto :goto_b

    .line 357
    :cond_12
    :goto_c
    const/4 v8, 0x0

    .line 358
    .local v8, "sum":F
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 359
    .restart local v10    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    iget-boolean v11, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    if-nez v11, :cond_15

    .line 362
    iget v11, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    iget v12, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->minContent:F

    .line 363
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    iget v12, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->maxContent:F

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 364
    .local v11, "clampedSize":F
    iget v12, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    cmpl-float v12, v12, v11

    if-lez v12, :cond_13

    .line 365
    iput-boolean v4, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isMaxViolated:Z

    goto :goto_e

    .line 366
    :cond_13
    iget v12, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    cmpg-float v12, v12, v11

    if-gez v12, :cond_14

    .line 367
    iput-boolean v4, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isMinViolated:Z

    .line 369
    :cond_14
    :goto_e
    iget v12, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    sub-float v12, v11, v12

    add-float/2addr v8, v12

    .line 370
    iput v11, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    .line 372
    .end local v10    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    .end local v11    # "clampedSize":F
    :cond_15
    goto :goto_d

    .line 373
    :cond_16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 374
    .restart local v10    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    iget-boolean v11, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    if-nez v11, :cond_19

    .line 375
    invoke-static {v8}, Lcom/itextpdf/layout/renderer/FlexUtil;->isZero(F)Z

    move-result v11

    if-nez v11, :cond_18

    const/4 v11, 0x0

    cmpg-float v12, v11, v8

    if-gez v12, :cond_17

    iget-boolean v12, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isMinViolated:Z

    if-nez v12, :cond_18

    :cond_17
    cmpl-float v11, v11, v8

    if-lez v11, :cond_19

    iget-boolean v11, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isMaxViolated:Z

    if-eqz v11, :cond_19

    .line 378
    :cond_18
    iput-boolean v4, v10, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    .line 381
    .end local v10    # "info":Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    :cond_19
    goto :goto_f

    .line 382
    .end local v6    # "remainingFreeSpace":F
    .end local v7    # "flexFactorSum":F
    .end local v8    # "sum":F
    :cond_1a
    goto/16 :goto_5

    .line 393
    .end local v1    # "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;>;"
    .end local v2    # "hypotheticalMainSizesSum":F
    .end local v3    # "isFlexGrow":Z
    .end local v5    # "initialFreeSpace":F
    :cond_1b
    goto/16 :goto_0

    .line 394
    :cond_1c
    return-void
.end method
