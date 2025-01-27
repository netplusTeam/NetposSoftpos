.class Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
.super Ljava/lang/Object;
.source "FlexUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/renderer/FlexUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlexItemCalculationInfo"
.end annotation


# instance fields
.field crossSize:F

.field flexBaseSize:F

.field flexBasis:F

.field flexGrow:F

.field flexShrink:F

.field hypotheticalCrossSize:F

.field hypotheticalMainSize:F

.field isFrozen:Z

.field isMaxViolated:Z

.field isMinViolated:Z

.field mainSize:F

.field maxContent:F

.field minContent:F

.field renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

.field scaledFlexShrinkFactor:F

.field xShift:F

.field yShift:F


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/renderer/AbstractRenderer;FFFF)V
    .locals 5
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .param p2, "flexBasis"    # F
    .param p3, "flexGrow"    # F
    .param p4, "flexShrink"    # F
    .param p5, "areaWidth"    # F

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    .line 678
    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isMinViolated:Z

    .line 679
    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isMaxViolated:Z

    .line 686
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 687
    iput p2, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBasis:F

    .line 688
    const/4 v1, 0x0

    cmpg-float v2, p4, v1

    if-ltz v2, :cond_4

    .line 691
    iput p4, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexShrink:F

    .line 692
    cmpg-float v1, p3, v1

    if-ltz v1, :cond_3

    .line 695
    iput p3, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexGrow:F

    .line 698
    const/16 v1, 0x4d

    invoke-virtual {p1, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/property/UnitValue;

    .line 699
    .local v2, "rendererWidth":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {p1, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnProperty(I)Z

    move-result v3

    .line 700
    .local v3, "hasOwnWidth":Z
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 701
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v4

    .line 702
    .local v4, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    if-eqz v3, :cond_0

    .line 703
    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_0

    .line 705
    :cond_0
    invoke-virtual {p1, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->deleteOwnProperty(I)V

    .line 707
    :goto_0
    invoke-virtual {v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getInnerMainSize(F)F

    move-result v1

    iput v1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->minContent:F

    .line 708
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v1, p5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveMaxWidth(F)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 710
    .local v0, "isMaxWidthApplied":Z
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v1

    goto :goto_1

    :cond_2
    const v1, 0x49742400    # 1000000.0f

    :goto_1
    iput v1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->maxContent:F

    .line 711
    return-void

    .line 693
    .end local v0    # "isMaxWidthApplied":Z
    .end local v2    # "rendererWidth":Lcom/itextpdf/layout/property/UnitValue;
    .end local v3    # "hasOwnWidth":Z
    .end local v4    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Flex grow cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Flex shrink cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getInnerCrossSize(F)F
    .locals 3
    .param p1, "size"    # F

    .line 730
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMarginsBordersPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    return v0
.end method

.method getInnerMainSize(F)F
    .locals 3
    .param p1, "size"    # F

    .line 722
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMarginsBordersPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    return v0
.end method

.method getOuterCrossSize(F)F
    .locals 3
    .param p1, "size"    # F

    .line 726
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMarginsBordersPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    return v0
.end method

.method getOuterMainSize(F)F
    .locals 3
    .param p1, "size"    # F

    .line 718
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMarginsBordersPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    return v0
.end method

.method public toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 5

    .line 714
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    iget v1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->xShift:F

    iget v2, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->yShift:F

    iget v3, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterMainSize(F)F

    move-result v3

    iget v4, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->crossSize:F

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterCrossSize(F)F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v0
.end method
