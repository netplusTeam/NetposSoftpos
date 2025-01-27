.class public abstract Lcom/itextpdf/layout/renderer/AbstractRenderer;
.super Ljava/lang/Object;
.source "AbstractRenderer.java"

# interfaces
.implements Lcom/itextpdf/layout/renderer/IRenderer;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final BOTTOM_SIDE:I = 0x2

.field protected static final EPS:F = 1.0E-4f

.field protected static final INF:F = 1000000.0f

.field static final LEFT_SIDE:I = 0x3

.field public static final OVERLAP_EPSILON:F = 1.0E-4f

.field static final RIGHT_SIDE:I = 0x1

.field static final TOP_SIDE:I


# instance fields
.field protected childRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;"
        }
    .end annotation
.end field

.field protected flushed:Z

.field protected isLastRendererForModelElement:Z

.field protected modelElement:Lcom/itextpdf/layout/IPropertyContainer;

.field protected occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

.field protected parent:Lcom/itextpdf/layout/renderer/IRenderer;

.field protected positionedRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;"
        }
    .end annotation
.end field

.field protected properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 114
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->flushed:Z

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isLastRendererForModelElement:Z

    .line 166
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/layout/element/IElement;)V
    .locals 1
    .param p1, "modelElement"    # Lcom/itextpdf/layout/element/IElement;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->flushed:Z

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isLastRendererForModelElement:Z

    .line 174
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 175
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/layout/renderer/AbstractRenderer;)V
    .locals 2
    .param p1, "other"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->flushed:Z

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isLastRendererForModelElement:Z

    .line 178
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    .line 179
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    .line 180
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 181
    iget-boolean v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->flushed:Z

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->flushed:Z

    .line 182
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 183
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 184
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    iget-object v1, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 185
    iget-boolean v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isLastRendererForModelElement:Z

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isLastRendererForModelElement:Z

    .line 186
    return-void
.end method

.method private adjustPositionedRendererLayoutBoxWidth(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 3
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "fullBbox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "left"    # Ljava/lang/Float;
    .param p4, "right"    # Ljava/lang/Float;

    .line 2499
    if-eqz p3, :cond_0

    .line 2500
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2502
    :cond_0
    if-eqz p4, :cond_1

    .line 2503
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2506
    :cond_1
    if-nez p3, :cond_3

    if-nez p4, :cond_3

    const/16 v0, 0x4d

    invoke-interface {p1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2508
    instance-of v0, p1, Lcom/itextpdf/layout/renderer/BlockRenderer;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/itextpdf/layout/renderer/BlockRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2509
    .local v0, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 2510
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    add-float/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2513
    .end local v0    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    :cond_3
    return-void
.end method

.method private applyBackgroundBoxProperty(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/property/BackgroundBox;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 2
    .param p1, "rectangle"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "clip"    # Lcom/itextpdf/layout/property/BackgroundBox;

    .line 585
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundBox;->PADDING_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    .line 586
    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_0

    .line 587
    :cond_0
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundBox;->CONTENT_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    if-ne v0, p2, :cond_1

    .line 588
    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 589
    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 591
    :cond_1
    :goto_0
    return-object p1
.end method

.method static calculateAdditionalWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F
    .locals 2
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 2321
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    .line 2322
    .local v0, "dummy":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2323
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2324
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2325
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    return v1
.end method

.method static calculatePaddingBorderHeight(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F
    .locals 2
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 2523
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    .line 2524
    .local v0, "dummy":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2525
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2526
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    return v1
.end method

.method static calculatePaddingBorderWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F
    .locals 2
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 2516
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    .line 2517
    .local v0, "dummy":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2518
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2519
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    return v1
.end method

.method private calculateRadii([Lcom/itextpdf/layout/property/BorderRadius;Lcom/itextpdf/kernel/geom/Rectangle;Z)[F
    .locals 6
    .param p1, "radii"    # [Lcom/itextpdf/layout/property/BorderRadius;
    .param p2, "area"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "horizontal"    # Z

    .line 1506
    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 1508
    .local v1, "results":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_6

    .line 1509
    aget-object v3, p1, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 1510
    if-eqz p3, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/BorderRadius;->getHorizontalRadius()Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v3

    goto :goto_1

    :cond_0
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/BorderRadius;->getVerticalRadius()Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v3

    .line 1511
    .local v3, "value":Lcom/itextpdf/layout/property/UnitValue;
    :goto_1
    if-eqz v3, :cond_4

    .line 1512
    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->getUnitType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 1513
    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v4

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    :goto_2
    mul-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    aput v4, v1, v2

    goto :goto_3

    .line 1515
    :cond_2
    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->getUnitType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1516
    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v4

    aput v4, v1, v2

    goto :goto_3

    .line 1515
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1519
    :cond_4
    aput v4, v1, v2

    goto :goto_3

    .line 1522
    .end local v3    # "value":Lcom/itextpdf/layout/property/UnitValue;
    :cond_5
    aput v4, v1, v2

    .line 1508
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1525
    .end local v2    # "i":I
    :cond_6
    return-object v1
.end method

.method private clipArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;ZZZZ)Z
    .locals 23
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;
    .param p2, "outerBorderBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "clipOuter"    # Z
    .param p4, "clipInner"    # Z
    .param p5, "considerBordersBeforeOuterClipping"    # Z
    .param p6, "considerBordersBeforeInnerClipping"    # Z

    .line 768
    move-object/from16 v15, p0

    move-object/from16 v14, p2

    if-eqz p5, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 770
    :cond_1
    :goto_0
    const-wide v16, 0x3fdca71de0000000L    # 0.44769999384880066

    .line 773
    .local v16, "curv":D
    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    move-object v6, v1

    .line 775
    .local v6, "borderWidths":[F
    new-array v1, v0, [F

    .line 776
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 777
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v2

    const/4 v5, 0x1

    aput v2, v1, v5

    .line 778
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v2

    const/4 v7, 0x2

    aput v2, v1, v7

    .line 779
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v2

    const/4 v8, 0x3

    aput v2, v1, v8

    move-object/from16 v18, v1

    .line 783
    .local v18, "outerBox":[F
    const/4 v1, 0x0

    .line 784
    .local v1, "hasNotNullRadius":Z
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorderRadii()[Lcom/itextpdf/layout/property/BorderRadius;

    move-result-object v13

    .line 785
    .local v13, "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    invoke-direct {v15, v13, v14, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculateRadii([Lcom/itextpdf/layout/property/BorderRadius;Lcom/itextpdf/kernel/geom/Rectangle;Z)[F

    move-result-object v19

    .line 786
    .local v19, "verticalRadii":[F
    invoke-direct {v15, v13, v14, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculateRadii([Lcom/itextpdf/layout/property/BorderRadius;Lcom/itextpdf/kernel/geom/Rectangle;Z)[F

    move-result-object v20

    .line 787
    .local v20, "horizontalRadii":[F
    const/4 v2, 0x0

    move/from16 v21, v1

    .end local v1    # "hasNotNullRadius":Z
    .local v2, "i":I
    .local v21, "hasNotNullRadius":Z
    :goto_1
    if-ge v2, v0, :cond_4

    .line 788
    aget v1, v19, v2

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v19, v2

    .line 789
    aget v1, v20, v2

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    div-float/2addr v4, v9

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v20, v2

    .line 790
    if-nez v21, :cond_3

    aget v1, v19, v2

    const/4 v4, 0x0

    cmpl-float v1, v4, v1

    if-nez v1, :cond_2

    aget v1, v20, v2

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_3

    .line 791
    :cond_2
    const/4 v1, 0x1

    move/from16 v21, v1

    .line 787
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 794
    .end local v2    # "i":I
    :cond_4
    if-eqz v21, :cond_9

    .line 796
    new-array v4, v0, [F

    aget v1, v18, v8

    aget v2, v20, v3

    add-float/2addr v1, v2

    aput v1, v4, v3

    aget v1, v18, v5

    aget v2, v20, v5

    sub-float/2addr v1, v2

    aput v1, v4, v5

    aget v1, v18, v5

    aget v2, v20, v7

    sub-float/2addr v1, v2

    aput v1, v4, v7

    aget v1, v18, v8

    aget v2, v20, v8

    add-float/2addr v1, v2

    aput v1, v4, v8

    .line 797
    .local v4, "cornersX":[F
    new-array v0, v0, [F

    aget v1, v18, v3

    aget v2, v19, v3

    sub-float/2addr v1, v2

    aput v1, v0, v3

    aget v1, v18, v3

    aget v2, v19, v5

    sub-float/2addr v1, v2

    aput v1, v0, v5

    aget v1, v18, v7

    aget v2, v19, v7

    add-float/2addr v1, v2

    aput v1, v0, v7

    aget v1, v18, v7

    aget v2, v19, v8

    add-float/2addr v1, v2

    aput v1, v0, v8

    move-object v5, v0

    .line 799
    .local v5, "cornersY":[F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v22

    .line 800
    .local v22, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 802
    if-eqz p5, :cond_5

    .line 803
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->decreaseBorderRadiiWithBorders([F[F[F[F[F)[F

    move-result-object v6

    move-object v0, v6

    goto :goto_2

    .line 802
    :cond_5
    move-object v0, v6

    .line 807
    .end local v6    # "borderWidths":[F
    .local v0, "borderWidths":[F
    :goto_2
    if-eqz p3, :cond_6

    .line 808
    const-wide v8, 0x3fdca71de0000000L    # 0.44769999384880066

    move-object/from16 v6, p0

    move-object/from16 v7, v22

    move-object/from16 v10, v20

    move-object/from16 v11, v19

    move-object/from16 v12, v18

    move-object v1, v13

    .end local v13    # "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    .local v1, "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    move-object v13, v4

    move-object v14, v5

    invoke-direct/range {v6 .. v14}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->clipOuterArea(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;D[F[F[F[F[F)V

    goto :goto_3

    .line 807
    .end local v1    # "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    .restart local v13    # "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    :cond_6
    move-object v1, v13

    .line 811
    .end local v13    # "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    .restart local v1    # "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    :goto_3
    if-eqz p6, :cond_7

    .line 812
    move-object/from16 v6, p0

    move-object/from16 v7, v20

    move-object/from16 v8, v19

    move-object/from16 v9, v18

    move-object v10, v4

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->decreaseBorderRadiiWithBorders([F[F[F[F[F)[F

    move-result-object v0

    .line 816
    :cond_7
    if-eqz p4, :cond_8

    .line 817
    const-wide v8, 0x3fdca71de0000000L    # 0.44769999384880066

    move-object/from16 v6, p0

    move-object/from16 v7, v22

    move-object/from16 v10, v20

    move-object/from16 v11, v19

    move-object/from16 v12, v18

    move-object v13, v4

    move-object v14, v5

    move-object v15, v0

    invoke-direct/range {v6 .. v15}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->clipInnerArea(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;D[F[F[F[F[F[F)V

    .line 820
    .end local v4    # "cornersX":[F
    .end local v5    # "cornersY":[F
    .end local v22    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :cond_8
    move-object v6, v0

    goto :goto_4

    .line 794
    .end local v0    # "borderWidths":[F
    .end local v1    # "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    .restart local v6    # "borderWidths":[F
    .restart local v13    # "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    :cond_9
    move-object v1, v13

    .line 820
    .end local v13    # "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    .restart local v1    # "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    :goto_4
    return v21

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private clipInnerArea(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;D[F[F[F[F[F[F)V
    .locals 41
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "curv"    # D
    .param p4, "horizontalRadii"    # [F
    .param p5, "verticalRadii"    # [F
    .param p6, "outerBox"    # [F
    .param p7, "cornersX"    # [F
    .param p8, "cornersY"    # [F
    .param p9, "borderWidths"    # [F

    .line 880
    move-object/from16 v0, p1

    const/4 v1, 0x0

    aget v2, p6, v1

    .line 881
    .local v2, "top":F
    const/4 v3, 0x1

    aget v4, p6, v3

    .line 882
    .local v4, "right":F
    const/4 v5, 0x2

    aget v6, p6, v5

    .line 883
    .local v6, "bottom":F
    const/4 v7, 0x3

    aget v8, p6, v7

    .line 885
    .local v8, "left":F
    aget v9, p7, v1

    .local v9, "x1":F
    aget v10, p8, v1

    .line 886
    .local v10, "y1":F
    aget v11, p7, v3

    .local v11, "x2":F
    aget v12, p8, v3

    .line 887
    .local v12, "y2":F
    aget v13, p7, v5

    .local v13, "x3":F
    aget v14, p8, v5

    .line 888
    .local v14, "y3":F
    aget v15, p7, v7

    .local v15, "x4":F
    aget v5, p8, v7

    .line 889
    .local v5, "y4":F
    aget v17, p9, v1

    .line 890
    .local v17, "topBorderWidth":F
    aget v18, p9, v3

    .line 891
    .local v18, "rightBorderWidth":F
    const/16 v16, 0x2

    aget v19, p9, v16

    .line 892
    .local v19, "bottomBorderWidth":F
    aget v20, p9, v7

    .line 895
    .local v20, "leftBorderWidth":F
    aget v21, p4, v1

    const/16 v22, 0x0

    cmpl-float v21, v22, v21

    if-nez v21, :cond_1

    aget v21, p5, v1

    cmpl-float v21, v22, v21

    if-eqz v21, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    move v2, v4

    move v4, v8

    move/from16 v25, v9

    move v9, v10

    move v10, v13

    move/from16 v23, v14

    goto/16 :goto_1

    .line 896
    :cond_1
    :goto_0
    move/from16 v23, v4

    .end local v4    # "right":F
    .local v23, "right":F
    float-to-double v3, v8

    move/from16 v25, v2

    .end local v2    # "top":F
    .local v25, "top":F
    float-to-double v1, v10

    .line 897
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v26

    float-to-double v1, v8

    float-to-double v3, v10

    const/16 v24, 0x0

    aget v7, p5, v24

    move/from16 v39, v8

    .end local v8    # "left":F
    .local v39, "left":F
    float-to-double v7, v7

    mul-double v7, v7, p2

    add-double v29, v3, v7

    float-to-double v3, v9

    aget v7, p4, v24

    float-to-double v7, v7

    mul-double v7, v7, p2

    sub-double v31, v3, v7

    move/from16 v3, v25

    .end local v25    # "top":F
    .local v3, "top":F
    float-to-double v7, v3

    move/from16 v24, v5

    .end local v5    # "y4":F
    .local v24, "y4":F
    float-to-double v4, v9

    move/from16 v25, v9

    move/from16 v40, v10

    .end local v9    # "x1":F
    .end local v10    # "y1":F
    .local v25, "x1":F
    .local v40, "y1":F
    float-to-double v9, v3

    .line 898
    move-wide/from16 v27, v1

    move-wide/from16 v33, v7

    move-wide/from16 v35, v4

    move-wide/from16 v37, v9

    invoke-virtual/range {v26 .. v38}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    float-to-double v4, v11

    float-to-double v7, v3

    .line 899
    invoke-virtual {v1, v4, v5, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    move/from16 v2, v23

    .end local v23    # "right":F
    .local v2, "right":F
    float-to-double v4, v2

    float-to-double v7, v12

    .line 900
    invoke-virtual {v1, v4, v5, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    float-to-double v4, v2

    float-to-double v7, v14

    .line 901
    invoke-virtual {v1, v4, v5, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    float-to-double v4, v13

    float-to-double v7, v6

    .line 902
    invoke-virtual {v1, v4, v5, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    float-to-double v4, v15

    float-to-double v7, v6

    .line 903
    invoke-virtual {v1, v4, v5, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    move/from16 v4, v39

    .end local v39    # "left":F
    .local v4, "left":F
    float-to-double v7, v4

    move/from16 v5, v24

    .end local v24    # "y4":F
    .restart local v5    # "y4":F
    float-to-double v9, v5

    .line 904
    invoke-virtual {v1, v7, v8, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    float-to-double v7, v4

    move v10, v13

    move/from16 v23, v14

    move/from16 v9, v40

    .end local v13    # "x3":F
    .end local v14    # "y3":F
    .end local v40    # "y1":F
    .local v9, "y1":F
    .local v10, "x3":F
    .local v23, "y3":F
    float-to-double v13, v9

    .line 905
    invoke-virtual {v1, v7, v8, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    sub-float v8, v4, v20

    float-to-double v7, v8

    float-to-double v13, v9

    .line 906
    invoke-virtual {v1, v7, v8, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    sub-float v8, v4, v20

    float-to-double v7, v8

    sub-float v13, v6, v19

    float-to-double v13, v13

    .line 907
    invoke-virtual {v1, v7, v8, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    add-float v7, v2, v18

    float-to-double v7, v7

    sub-float v13, v6, v19

    float-to-double v13, v13

    .line 908
    invoke-virtual {v1, v7, v8, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    add-float v7, v2, v18

    float-to-double v7, v7

    add-float v13, v3, v17

    float-to-double v13, v13

    .line 909
    invoke-virtual {v1, v7, v8, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    sub-float v8, v4, v20

    float-to-double v7, v8

    add-float v13, v3, v17

    float-to-double v13, v13

    .line 910
    invoke-virtual {v1, v7, v8, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    sub-float v8, v4, v20

    float-to-double v7, v8

    float-to-double v13, v9

    .line 911
    invoke-virtual {v1, v7, v8, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 912
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 915
    :goto_1
    const/4 v1, 0x1

    aget v7, p4, v1

    cmpl-float v7, v22, v7

    if-nez v7, :cond_3

    aget v7, p5, v1

    cmpl-float v1, v22, v7

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v7, v10

    move v10, v11

    move/from16 v21, v12

    move/from16 v1, v23

    move/from16 v8, v25

    goto/16 :goto_3

    .line 916
    :cond_3
    :goto_2
    float-to-double v7, v11

    float-to-double v13, v3

    .line 917
    invoke-virtual {v0, v7, v8, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v26

    float-to-double v7, v11

    const/4 v1, 0x1

    aget v13, p4, v1

    float-to-double v13, v13

    mul-double v13, v13, p2

    add-double v27, v7, v13

    float-to-double v7, v3

    float-to-double v13, v2

    move/from16 v24, v10

    move/from16 v21, v11

    .end local v10    # "x3":F
    .end local v11    # "x2":F
    .local v21, "x2":F
    .local v24, "x3":F
    float-to-double v10, v12

    aget v1, p5, v1

    float-to-double v0, v1

    mul-double v0, v0, p2

    add-double v33, v10, v0

    float-to-double v0, v2

    float-to-double v10, v12

    .line 918
    move-wide/from16 v29, v7

    move-wide/from16 v31, v13

    move-wide/from16 v35, v0

    move-wide/from16 v37, v10

    invoke-virtual/range {v26 .. v38}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v7, v2

    move/from16 v1, v23

    .end local v23    # "y3":F
    .local v1, "y3":F
    float-to-double v10, v1

    .line 919
    invoke-virtual {v0, v7, v8, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    move/from16 v7, v24

    .end local v24    # "x3":F
    .local v7, "x3":F
    float-to-double v10, v7

    float-to-double v13, v6

    .line 920
    invoke-virtual {v0, v10, v11, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v10, v15

    float-to-double v13, v6

    .line 921
    invoke-virtual {v0, v10, v11, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v10, v4

    float-to-double v13, v5

    .line 922
    invoke-virtual {v0, v10, v11, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v10, v4

    float-to-double v13, v9

    .line 923
    invoke-virtual {v0, v10, v11, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    move/from16 v8, v25

    .end local v25    # "x1":F
    .local v8, "x1":F
    float-to-double v10, v8

    float-to-double v13, v3

    .line 924
    invoke-virtual {v0, v10, v11, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    move/from16 v10, v21

    .end local v21    # "x2":F
    .local v10, "x2":F
    float-to-double v13, v10

    move/from16 v21, v12

    .end local v12    # "y2":F
    .local v21, "y2":F
    float-to-double v11, v3

    .line 925
    invoke-virtual {v0, v13, v14, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v11, v10

    add-float v13, v3, v17

    float-to-double v13, v13

    .line 926
    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    sub-float v11, v4, v20

    float-to-double v11, v11

    add-float v13, v3, v17

    float-to-double v13, v13

    .line 927
    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    sub-float v11, v4, v20

    float-to-double v11, v11

    sub-float v13, v6, v19

    float-to-double v13, v13

    .line 928
    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    add-float v11, v2, v18

    float-to-double v11, v11

    sub-float v13, v6, v19

    float-to-double v13, v13

    .line 929
    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    add-float v11, v2, v18

    float-to-double v11, v11

    add-float v13, v3, v17

    float-to-double v13, v13

    .line 930
    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v11, v10

    add-float v13, v3, v17

    float-to-double v13, v13

    .line 931
    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 932
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 935
    :goto_3
    const/4 v0, 0x2

    aget v11, p4, v0

    cmpl-float v11, v22, v11

    if-nez v11, :cond_5

    aget v11, p5, v0

    cmpl-float v0, v22, v11

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v13, v1

    move v1, v2

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v2, v21

    goto/16 :goto_5

    .line 936
    :cond_5
    :goto_4
    float-to-double v11, v2

    float-to-double v13, v1

    .line 937
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v23

    float-to-double v11, v2

    float-to-double v13, v1

    const/16 v16, 0x2

    aget v0, p5, v16

    move/from16 v36, v1

    .end local v1    # "y3":F
    .local v36, "y3":F
    float-to-double v0, v0

    mul-double v0, v0, p2

    sub-double v26, v13, v0

    float-to-double v0, v7

    aget v13, p4, v16

    float-to-double v13, v13

    mul-double v13, v13, p2

    add-double v28, v0, v13

    float-to-double v0, v6

    float-to-double v13, v7

    move/from16 v37, v2

    move/from16 v16, v3

    .end local v2    # "right":F
    .end local v3    # "top":F
    .local v16, "top":F
    .local v37, "right":F
    float-to-double v2, v6

    .line 938
    move-wide/from16 v24, v11

    move-wide/from16 v30, v0

    move-wide/from16 v32, v13

    move-wide/from16 v34, v2

    invoke-virtual/range {v23 .. v35}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v1, v15

    float-to-double v11, v6

    .line 939
    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v1, v4

    float-to-double v11, v5

    .line 940
    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v1, v4

    float-to-double v11, v9

    .line 941
    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v1, v8

    move/from16 v3, v16

    .end local v16    # "top":F
    .restart local v3    # "top":F
    float-to-double v11, v3

    .line 942
    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v1, v10

    float-to-double v11, v3

    .line 943
    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    move/from16 v1, v37

    .end local v37    # "right":F
    .local v1, "right":F
    float-to-double v11, v1

    move/from16 v2, v21

    .end local v21    # "y2":F
    .local v2, "y2":F
    float-to-double v13, v2

    .line 944
    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v11, v1

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v13, v36

    .end local v7    # "x3":F
    .end local v8    # "x1":F
    .end local v36    # "y3":F
    .local v13, "y3":F
    .restart local v24    # "x3":F
    .restart local v25    # "x1":F
    float-to-double v7, v13

    .line 945
    invoke-virtual {v0, v11, v12, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    add-float v7, v1, v18

    float-to-double v7, v7

    float-to-double v11, v13

    .line 946
    invoke-virtual {v0, v7, v8, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    add-float v7, v1, v18

    float-to-double v7, v7

    add-float v11, v3, v17

    float-to-double v11, v11

    .line 947
    invoke-virtual {v0, v7, v8, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    sub-float v8, v4, v20

    float-to-double v7, v8

    add-float v11, v3, v17

    float-to-double v11, v11

    .line 948
    invoke-virtual {v0, v7, v8, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    sub-float v8, v4, v20

    float-to-double v7, v8

    sub-float v11, v6, v19

    float-to-double v11, v11

    .line 949
    invoke-virtual {v0, v7, v8, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    add-float v7, v1, v18

    float-to-double v7, v7

    sub-float v11, v6, v19

    float-to-double v11, v11

    .line 950
    invoke-virtual {v0, v7, v8, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    add-float v7, v1, v18

    float-to-double v7, v7

    float-to-double v11, v13

    .line 951
    invoke-virtual {v0, v7, v8, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 952
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 955
    :goto_5
    const/4 v0, 0x3

    aget v7, p4, v0

    cmpl-float v7, v22, v7

    if-nez v7, :cond_7

    aget v7, p5, v0

    cmpl-float v0, v22, v7

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move v7, v1

    move/from16 v21, v2

    move v11, v15

    move/from16 v8, v24

    goto/16 :goto_7

    .line 956
    :cond_7
    :goto_6
    float-to-double v7, v15

    float-to-double v11, v6

    .line 957
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v26

    float-to-double v7, v15

    const/4 v11, 0x3

    aget v12, p4, v11

    float-to-double v11, v12

    mul-double v11, v11, p2

    sub-double v27, v7, v11

    float-to-double v7, v6

    float-to-double v11, v4

    move/from16 v16, v15

    .end local v15    # "x4":F
    .local v16, "x4":F
    float-to-double v14, v5

    const/16 v21, 0x3

    aget v0, p5, v21

    move/from16 v23, v1

    .end local v1    # "right":F
    .local v23, "right":F
    float-to-double v0, v0

    mul-double v0, v0, p2

    sub-double v33, v14, v0

    float-to-double v0, v4

    float-to-double v14, v5

    .line 958
    move-wide/from16 v29, v7

    move-wide/from16 v31, v11

    move-wide/from16 v35, v0

    move-wide/from16 v37, v14

    invoke-virtual/range {v26 .. v38}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v7, v4

    float-to-double v11, v9

    .line 959
    invoke-virtual {v0, v7, v8, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    move/from16 v1, v25

    .end local v25    # "x1":F
    .local v1, "x1":F
    float-to-double v7, v1

    float-to-double v11, v3

    .line 960
    invoke-virtual {v0, v7, v8, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v7, v10

    float-to-double v11, v3

    .line 961
    invoke-virtual {v0, v7, v8, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    move/from16 v7, v23

    .end local v23    # "right":F
    .local v7, "right":F
    float-to-double v11, v7

    float-to-double v14, v2

    .line 962
    invoke-virtual {v0, v11, v12, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v11, v7

    float-to-double v14, v13

    .line 963
    invoke-virtual {v0, v11, v12, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    move/from16 v8, v24

    .end local v24    # "x3":F
    .local v8, "x3":F
    float-to-double v11, v8

    float-to-double v14, v6

    .line 964
    invoke-virtual {v0, v11, v12, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    move/from16 v11, v16

    .end local v16    # "x4":F
    .local v11, "x4":F
    float-to-double v14, v11

    move/from16 v21, v2

    .end local v1    # "x1":F
    .end local v2    # "y2":F
    .restart local v21    # "y2":F
    .restart local v25    # "x1":F
    float-to-double v1, v6

    .line 965
    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v1, v11

    sub-float v12, v6, v19

    float-to-double v14, v12

    .line 966
    invoke-virtual {v0, v1, v2, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    add-float v1, v7, v18

    float-to-double v1, v1

    sub-float v12, v6, v19

    float-to-double v14, v12

    .line 967
    invoke-virtual {v0, v1, v2, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    add-float v1, v7, v18

    float-to-double v1, v1

    add-float v12, v3, v17

    float-to-double v14, v12

    .line 968
    invoke-virtual {v0, v1, v2, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    sub-float v1, v4, v20

    float-to-double v1, v1

    add-float v12, v3, v17

    float-to-double v14, v12

    .line 969
    invoke-virtual {v0, v1, v2, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    sub-float v1, v4, v20

    float-to-double v1, v1

    sub-float v12, v6, v19

    float-to-double v14, v12

    .line 970
    invoke-virtual {v0, v1, v2, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v1, v11

    sub-float v12, v6, v19

    float-to-double v14, v12

    .line 971
    invoke-virtual {v0, v1, v2, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 972
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 974
    :goto_7
    return-void
.end method

.method private clipOuterArea(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;D[F[F[F[F[F)V
    .locals 39
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "curv"    # D
    .param p4, "horizontalRadii"    # [F
    .param p5, "verticalRadii"    # [F
    .param p6, "outerBox"    # [F
    .param p7, "cornersX"    # [F
    .param p8, "cornersY"    # [F

    .line 824
    move-object/from16 v0, p1

    const/4 v1, 0x0

    aget v2, p6, v1

    .local v2, "top":F
    const/4 v3, 0x1

    aget v4, p6, v3

    .line 825
    .local v4, "right":F
    const/4 v5, 0x2

    aget v6, p6, v5

    .line 826
    .local v6, "bottom":F
    const/4 v7, 0x3

    aget v8, p6, v7

    .line 828
    .local v8, "left":F
    aget v9, p7, v1

    .local v9, "x1":F
    aget v10, p8, v1

    .line 829
    .local v10, "y1":F
    aget v11, p7, v3

    .local v11, "x2":F
    aget v12, p8, v3

    .line 830
    .local v12, "y2":F
    aget v13, p7, v5

    .local v13, "x3":F
    aget v14, p8, v5

    .line 831
    .local v14, "y3":F
    aget v15, p7, v7

    .local v15, "x4":F
    aget v5, p8, v7

    .line 834
    .local v5, "y4":F
    aget v17, p4, v1

    const/16 v18, 0x0

    cmpl-float v17, v18, v17

    if-nez v17, :cond_1

    aget v17, p5, v1

    cmpl-float v17, v18, v17

    if-eqz v17, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    move/from16 v36, v5

    move v1, v8

    move/from16 v37, v9

    move/from16 v38, v10

    move/from16 v20, v13

    move/from16 v21, v14

    move v5, v2

    goto :goto_1

    .line 835
    :cond_1
    :goto_0
    move/from16 v19, v4

    .end local v4    # "right":F
    .local v19, "right":F
    float-to-double v3, v8

    move/from16 v21, v2

    .end local v2    # "top":F
    .local v21, "top":F
    float-to-double v1, v6

    .line 836
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    float-to-double v2, v8

    move/from16 v22, v8

    .end local v8    # "left":F
    .local v22, "left":F
    float-to-double v7, v10

    .line 837
    invoke-virtual {v1, v2, v3, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v23

    move/from16 v1, v22

    .end local v22    # "left":F
    .local v1, "left":F
    float-to-double v2, v1

    float-to-double v7, v10

    const/16 v20, 0x0

    aget v4, p5, v20

    move/from16 v36, v5

    .end local v5    # "y4":F
    .local v36, "y4":F
    float-to-double v4, v4

    mul-double v4, v4, p2

    add-double v26, v7, v4

    float-to-double v4, v9

    aget v7, p4, v20

    float-to-double v7, v7

    mul-double v7, v7, p2

    sub-double v28, v4, v7

    move/from16 v5, v21

    .end local v21    # "top":F
    .local v5, "top":F
    float-to-double v7, v5

    move/from16 v20, v13

    move/from16 v21, v14

    .end local v13    # "x3":F
    .end local v14    # "y3":F
    .local v20, "x3":F
    .local v21, "y3":F
    float-to-double v13, v9

    move/from16 v37, v9

    move/from16 v38, v10

    .end local v9    # "x1":F
    .end local v10    # "y1":F
    .local v37, "x1":F
    .local v38, "y1":F
    float-to-double v9, v5

    .line 838
    move-wide/from16 v24, v2

    move-wide/from16 v30, v7

    move-wide/from16 v32, v13

    move-wide/from16 v34, v9

    invoke-virtual/range {v23 .. v35}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move/from16 v3, v19

    .end local v19    # "right":F
    .local v3, "right":F
    float-to-double v7, v3

    float-to-double v9, v5

    .line 839
    invoke-virtual {v2, v7, v8, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v7, v3

    float-to-double v9, v6

    .line 840
    invoke-virtual {v2, v7, v8, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v7, v1

    float-to-double v9, v6

    .line 841
    invoke-virtual {v2, v7, v8, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 842
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 845
    :goto_1
    const/4 v2, 0x1

    aget v4, p4, v2

    cmpl-float v4, v18, v4

    if-nez v4, :cond_3

    aget v4, p5, v2

    cmpl-float v2, v18, v4

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v7, v5

    goto :goto_3

    .line 846
    :cond_3
    :goto_2
    float-to-double v7, v1

    float-to-double v9, v5

    .line 847
    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v7, v11

    float-to-double v9, v5

    .line 848
    invoke-virtual {v2, v7, v8, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v23

    float-to-double v7, v11

    const/4 v2, 0x1

    aget v4, p4, v2

    float-to-double v9, v4

    mul-double v9, v9, p2

    add-double v24, v7, v9

    float-to-double v7, v5

    float-to-double v9, v3

    float-to-double v13, v12

    aget v2, p5, v2

    move/from16 v17, v5

    .end local v5    # "top":F
    .local v17, "top":F
    float-to-double v4, v2

    mul-double v4, v4, p2

    add-double v30, v13, v4

    float-to-double v4, v3

    float-to-double v13, v12

    .line 849
    move-wide/from16 v26, v7

    move-wide/from16 v28, v9

    move-wide/from16 v32, v4

    move-wide/from16 v34, v13

    invoke-virtual/range {v23 .. v35}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v4, v3

    float-to-double v7, v6

    .line 850
    invoke-virtual {v2, v4, v5, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v4, v1

    float-to-double v7, v6

    .line 851
    invoke-virtual {v2, v4, v5, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v4, v1

    move/from16 v7, v17

    .end local v17    # "top":F
    .local v7, "top":F
    float-to-double v8, v7

    .line 852
    invoke-virtual {v2, v4, v5, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 853
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 856
    :goto_3
    const/4 v2, 0x2

    aget v4, p4, v2

    cmpl-float v4, v18, v4

    if-nez v4, :cond_5

    aget v4, p5, v2

    cmpl-float v2, v18, v4

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v16, v11

    goto :goto_5

    .line 857
    :cond_5
    :goto_4
    float-to-double v4, v3

    float-to-double v8, v7

    .line 858
    invoke-virtual {v0, v4, v5, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v4, v3

    move/from16 v8, v21

    .end local v21    # "y3":F
    .local v8, "y3":F
    float-to-double v9, v8

    .line 859
    invoke-virtual {v2, v4, v5, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v23

    float-to-double v4, v3

    float-to-double v9, v8

    const/4 v2, 0x2

    aget v13, p5, v2

    float-to-double v13, v13

    mul-double v13, v13, p2

    sub-double v26, v9, v13

    move/from16 v9, v20

    .end local v20    # "x3":F
    .local v9, "x3":F
    float-to-double v13, v9

    aget v2, p4, v2

    move/from16 v16, v11

    .end local v11    # "x2":F
    .local v16, "x2":F
    float-to-double v10, v2

    mul-double v10, v10, p2

    add-double v28, v13, v10

    float-to-double v10, v6

    float-to-double v13, v9

    .end local v8    # "y3":F
    .end local v9    # "x3":F
    .restart local v20    # "x3":F
    .restart local v21    # "y3":F
    float-to-double v8, v6

    .line 860
    move-wide/from16 v24, v4

    move-wide/from16 v30, v10

    move-wide/from16 v32, v13

    move-wide/from16 v34, v8

    invoke-virtual/range {v23 .. v35}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v4, v1

    float-to-double v8, v6

    .line 861
    invoke-virtual {v2, v4, v5, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v4, v1

    float-to-double v8, v7

    .line 862
    invoke-virtual {v2, v4, v5, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v4, v3

    float-to-double v8, v7

    .line 863
    invoke-virtual {v2, v4, v5, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 864
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 867
    :goto_5
    const/4 v2, 0x3

    aget v4, p4, v2

    cmpl-float v4, v18, v4

    if-nez v4, :cond_7

    aget v5, p5, v2

    cmpl-float v2, v18, v5

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v17, v12

    move/from16 v10, v36

    goto :goto_7

    .line 868
    :cond_7
    :goto_6
    float-to-double v8, v3

    float-to-double v10, v6

    .line 869
    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v8, v15

    float-to-double v10, v6

    .line 870
    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v22

    float-to-double v8, v15

    const/4 v2, 0x3

    aget v4, p4, v2

    float-to-double v4, v4

    mul-double v4, v4, p2

    sub-double v23, v8, v4

    float-to-double v4, v6

    float-to-double v8, v1

    move/from16 v10, v36

    .end local v36    # "y4":F
    .local v10, "y4":F
    float-to-double v13, v10

    aget v2, p5, v2

    move/from16 v17, v12

    .end local v12    # "y2":F
    .local v17, "y2":F
    float-to-double v11, v2

    mul-double v11, v11, p2

    sub-double v29, v13, v11

    float-to-double v11, v1

    float-to-double v13, v10

    .line 871
    move-wide/from16 v25, v4

    move-wide/from16 v27, v8

    move-wide/from16 v31, v11

    move-wide/from16 v33, v13

    invoke-virtual/range {v22 .. v34}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v4, v1

    float-to-double v8, v7

    .line 872
    invoke-virtual {v2, v4, v5, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v4, v3

    float-to-double v8, v7

    .line 873
    invoke-virtual {v2, v4, v5, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v4, v3

    float-to-double v8, v6

    .line 874
    invoke-virtual {v2, v4, v5, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 875
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 877
    :goto_7
    return-void
.end method

.method private createTransformationInsideOccupiedArea()Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 11

    .line 2537
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 2538
    .local v0, "backgroundArea":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    .line 2539
    .local v1, "x":F
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    .line 2540
    .local v2, "y":F
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    .line 2541
    .local v3, "height":F
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    .line 2543
    .local v4, "width":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    add-float/2addr v6, v1

    const/high16 v7, -0x40800000    # -1.0f

    mul-float/2addr v6, v7

    float-to-double v8, v6

    div-float v6, v3, v5

    add-float/2addr v6, v2

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v8, v9, v6, v7}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v6

    .line 2544
    .local v6, "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    const/16 v7, 0x35

    invoke-virtual {p0, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/property/Transform;

    invoke-static {v7, v4, v3}, Lcom/itextpdf/layout/property/Transform;->getAffineTransform(Lcom/itextpdf/layout/property/Transform;FF)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/geom/AffineTransform;->preConcatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 2545
    div-float v7, v4, v5

    add-float/2addr v7, v1

    float-to-double v7, v7

    div-float v5, v3, v5

    add-float/2addr v5, v2

    float-to-double v9, v5

    invoke-static {v7, v8, v9, v10}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/itextpdf/kernel/geom/AffineTransform;->preConcatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 2547
    return-object v6
.end method

.method public static createXObject(Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 5
    .param p0, "linearGradientBuilder"    # Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;
    .param p1, "xObjectArea"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 730
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 731
    .local v0, "formBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    new-instance v1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 732
    .local v1, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    if-eqz p0, :cond_0

    .line 733
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p2}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->buildColor(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    .line 734
    .local v2, "gradientColor":Lcom/itextpdf/kernel/colors/Color;
    if-eqz v2, :cond_0

    .line 735
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v3, v1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    const/4 v4, 0x1

    .line 736
    invoke-virtual {v3, v2, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/colors/Color;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    .line 737
    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    .line 738
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 741
    .end local v2    # "gradientColor":Lcom/itextpdf/kernel/colors/Color;
    :cond_0
    return-object v1
.end method

.method private decreaseBorderRadiiWithBorders([F[F[F[F[F)[F
    .locals 8
    .param p1, "horizontalRadii"    # [F
    .param p2, "verticalRadii"    # [F
    .param p3, "outerBox"    # [F
    .param p4, "cornersX"    # [F
    .param p5, "cornersY"    # [F

    .line 977
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    .line 978
    .local v0, "borders":[Lcom/itextpdf/layout/borders/Border;
    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 980
    .local v1, "borderWidths":[F
    const/4 v2, 0x0

    aget-object v3, v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 981
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v3

    aput v3, v1, v2

    .line 982
    aget v3, p3, v2

    aget-object v6, v0, v2

    invoke-virtual {v6}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v6

    sub-float/2addr v3, v6

    aput v3, p3, v2

    .line 983
    aget v3, p5, v5

    aget v6, p3, v2

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    .line 984
    aget v3, p3, v2

    aput v3, p5, v5

    .line 986
    :cond_0
    aget v3, p5, v2

    aget v6, p3, v2

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1

    .line 987
    aget v3, p3, v2

    aput v3, p5, v2

    .line 989
    :cond_1
    aget v3, p2, v2

    aget-object v6, v0, v2

    invoke-virtual {v6}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v6

    sub-float/2addr v3, v6

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, p2, v2

    .line 990
    aget v3, p2, v5

    aget-object v6, v0, v2

    invoke-virtual {v6}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v6

    sub-float/2addr v3, v6

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, p2, v5

    .line 992
    :cond_2
    aget-object v3, v0, v5

    const/4 v6, 0x2

    if-eqz v3, :cond_5

    .line 993
    aget-object v3, v0, v5

    invoke-virtual {v3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v3

    aput v3, v1, v5

    .line 994
    aget v3, p3, v5

    aget-object v7, v0, v5

    invoke-virtual {v7}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v7

    sub-float/2addr v3, v7

    aput v3, p3, v5

    .line 995
    aget v3, p4, v5

    aget v7, p3, v5

    cmpl-float v3, v3, v7

    if-lez v3, :cond_3

    .line 996
    aget v3, p3, v5

    aput v3, p4, v5

    .line 998
    :cond_3
    aget v3, p4, v6

    aget v7, p3, v5

    cmpl-float v3, v3, v7

    if-lez v3, :cond_4

    .line 999
    aget v3, p3, v5

    aput v3, p4, v6

    .line 1001
    :cond_4
    aget v3, p1, v5

    aget-object v7, v0, v5

    invoke-virtual {v7}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v7

    sub-float/2addr v3, v7

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, p1, v5

    .line 1002
    aget v3, p1, v6

    aget-object v5, v0, v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, p1, v6

    .line 1004
    :cond_5
    aget-object v3, v0, v6

    const/4 v5, 0x3

    if-eqz v3, :cond_8

    .line 1005
    aget-object v3, v0, v6

    invoke-virtual {v3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v3

    aput v3, v1, v6

    .line 1006
    aget v3, p3, v6

    aget-object v7, v0, v6

    invoke-virtual {v7}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v7

    add-float/2addr v3, v7

    aput v3, p3, v6

    .line 1007
    aget v3, p5, v6

    aget v7, p3, v6

    cmpg-float v3, v3, v7

    if-gez v3, :cond_6

    .line 1008
    aget v3, p3, v6

    aput v3, p5, v6

    .line 1010
    :cond_6
    aget v3, p5, v5

    aget v7, p3, v6

    cmpg-float v3, v3, v7

    if-gez v3, :cond_7

    .line 1011
    aget v3, p3, v6

    aput v3, p5, v5

    .line 1013
    :cond_7
    aget v3, p2, v6

    aget-object v7, v0, v6

    invoke-virtual {v7}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v7

    sub-float/2addr v3, v7

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, p2, v6

    .line 1014
    aget v3, p2, v5

    aget-object v6, v0, v6

    invoke-virtual {v6}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v6

    sub-float/2addr v3, v6

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, p2, v5

    .line 1016
    :cond_8
    aget-object v3, v0, v5

    if-eqz v3, :cond_b

    .line 1017
    aget-object v3, v0, v5

    invoke-virtual {v3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v3

    aput v3, v1, v5

    .line 1018
    aget v3, p3, v5

    aget-object v6, v0, v5

    invoke-virtual {v6}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v6

    add-float/2addr v3, v6

    aput v3, p3, v5

    .line 1019
    aget v3, p4, v5

    aget v6, p3, v5

    cmpg-float v3, v3, v6

    if-gez v3, :cond_9

    .line 1020
    aget v3, p3, v5

    aput v3, p4, v5

    .line 1022
    :cond_9
    aget v3, p4, v2

    aget v6, p3, v5

    cmpg-float v3, v3, v6

    if-gez v3, :cond_a

    .line 1023
    aget v3, p3, v5

    aput v3, p4, v2

    .line 1025
    :cond_a
    aget v3, p1, v5

    aget-object v6, v0, v5

    invoke-virtual {v6}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v6

    sub-float/2addr v3, v6

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, p1, v5

    .line 1026
    aget v3, p1, v2

    aget-object v5, v0, v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, p1, v2

    .line 1028
    :cond_b
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private drawBackgroundImage(Lcom/itextpdf/layout/property/BackgroundImage;Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 16
    .param p1, "backgroundImage"    # Lcom/itextpdf/layout/property/BackgroundImage;
    .param p2, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;
    .param p3, "backgroundArea"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 612
    move-object/from16 v0, p0

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 613
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getBackgroundOrigin()Lcom/itextpdf/layout/property/BackgroundBox;

    move-result-object v2

    .line 612
    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBackgroundBoxProperty(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/property/BackgroundBox;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 614
    .local v1, "originBackgroundArea":Lcom/itextpdf/kernel/geom/Rectangle;
    nop

    .line 615
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    .line 614
    move-object/from16 v9, p1

    invoke-static {v9, v2, v3}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->calculateBackgroundImageSize(Lcom/itextpdf/layout/property/BackgroundImage;FF)[F

    move-result-object v2

    .line 616
    .local v2, "imageWidthAndHeight":[F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getImage()Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    move-result-object v3

    .line 617
    .local v3, "backgroundXObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    if-nez v3, :cond_0

    .line 618
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getForm()Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v3

    .line 621
    :cond_0
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v10

    .line 622
    .local v10, "xPosition":Lcom/itextpdf/layout/property/UnitValue;
    invoke-static {v4}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v11

    .line 623
    .local v11, "yPosition":Lcom/itextpdf/layout/property/UnitValue;
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_2

    .line 624
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getLinearGradientBuilder()Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    move-result-object v7

    .line 625
    .local v7, "gradientBuilder":Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;
    if-nez v7, :cond_1

    .line 626
    return-void

    .line 629
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getBackgroundPosition()Lcom/itextpdf/layout/property/BackgroundPosition;

    move-result-object v8

    invoke-virtual {v8, v4, v4, v10, v11}, Lcom/itextpdf/layout/property/BackgroundPosition;->calculatePositionValues(FFLcom/itextpdf/layout/property/UnitValue;Lcom/itextpdf/layout/property/UnitValue;)V

    .line 630
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/layout/renderer/DrawContext;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v8

    invoke-static {v7, v1, v8}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->createXObject(Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v3

    .line 631
    new-instance v8, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v12

    invoke-virtual {v10}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v13

    add-float/2addr v12, v13

    .line 632
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v13

    aget v14, v2, v6

    sub-float/2addr v13, v14

    invoke-virtual {v11}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v14

    sub-float/2addr v13, v14

    aget v14, v2, v5

    aget v15, v2, v6

    invoke-direct {v8, v12, v13, v14, v15}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object v7, v8

    .line 634
    .local v7, "imageRectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    move-object v12, v3

    move-object v13, v7

    goto :goto_0

    .line 635
    .end local v7    # "imageRectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getBackgroundPosition()Lcom/itextpdf/layout/property/BackgroundPosition;

    move-result-object v7

    .line 636
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v8

    aget v12, v2, v5

    sub-float/2addr v8, v12

    .line 637
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v12

    aget v13, v2, v6

    sub-float/2addr v12, v13

    .line 635
    invoke-virtual {v7, v8, v12, v10, v11}, Lcom/itextpdf/layout/property/BackgroundPosition;->calculatePositionValues(FFLcom/itextpdf/layout/property/UnitValue;Lcom/itextpdf/layout/property/UnitValue;)V

    .line 638
    new-instance v7, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v8

    invoke-virtual {v10}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v12

    add-float/2addr v8, v12

    .line 639
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v12

    aget v13, v2, v6

    sub-float/2addr v12, v13

    invoke-virtual {v11}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v13

    sub-float/2addr v12, v13

    aget v13, v2, v5

    aget v14, v2, v6

    invoke-direct {v7, v8, v12, v13, v14}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object v12, v3

    move-object v13, v7

    .line 642
    .end local v3    # "backgroundXObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .local v12, "backgroundXObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .local v13, "imageRectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    :goto_0
    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    cmpg-float v3, v3, v4

    if-lez v3, :cond_4

    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    goto :goto_1

    .line 648
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    .line 649
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getBackgroundClip()Lcom/itextpdf/layout/property/BackgroundBox;

    move-result-object v4

    .line 648
    invoke-direct {v0, v3, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBackgroundBoxProperty(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/property/BackgroundBox;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v14

    .line 650
    .local v14, "clippedBackgroundArea":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    .line 651
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    .line 652
    invoke-virtual {v3, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    .line 653
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    .line 654
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 655
    move-object v3, v13

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, p3

    move-object v8, v1

    invoke-static/range {v3 .. v8}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawPdfXObject(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/property/BackgroundImage;Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 657
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_2

    .line 643
    .end local v14    # "clippedBackgroundArea":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_4
    :goto_1
    const-class v3, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 644
    .local v3, "logger":Lorg/slf4j/Logger;
    new-array v4, v6, [Ljava/lang/Object;

    const-string v6, "background-image"

    aput-object v6, v4, v5

    const-string v5, "The {0} rectangle has negative or zero sizes. It will not be displayed."

    invoke-static {v5, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 647
    .end local v3    # "logger":Lorg/slf4j/Logger;
    nop

    .line 659
    :goto_2
    return-void
.end method

.method private drawBackgroundImagesList(Ljava/util/List;ZLcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)Z
    .locals 3
    .param p2, "backgroundAreaIsClipped"    # Z
    .param p3, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;
    .param p4, "backgroundArea"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/property/BackgroundImage;",
            ">;Z",
            "Lcom/itextpdf/layout/renderer/DrawContext;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ")Z"
        }
    .end annotation

    .line 597
    .local p1, "backgroundImagesList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/property/BackgroundImage;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 598
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/BackgroundImage;

    .line 599
    .local v1, "backgroundImage":Lcom/itextpdf/layout/property/BackgroundImage;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/BackgroundImage;->isBackgroundSpecified()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 601
    if-nez p2, :cond_0

    .line 602
    invoke-virtual {p0, p3, p4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->clipBackgroundArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)Z

    move-result p2

    .line 604
    :cond_0
    invoke-direct {p0, v1, p3, p4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawBackgroundImage(Lcom/itextpdf/layout/property/BackgroundImage;Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 597
    .end local v1    # "backgroundImage":Lcom/itextpdf/layout/property/BackgroundImage;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 607
    .end local v0    # "i":I
    :cond_2
    return p2
.end method

.method private drawColorBackground(Lcom/itextpdf/layout/property/Background;Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 13
    .param p1, "background"    # Lcom/itextpdf/layout/property/Background;
    .param p2, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;
    .param p3, "colorBackgroundArea"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 572
    new-instance v0, Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {p1}, Lcom/itextpdf/layout/property/Background;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    .line 573
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/Background;->getOpacity()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 574
    .local v0, "backgroundColor":Lcom/itextpdf/layout/property/TransparentColor;
    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 575
    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/property/TransparentColor;->applyFillTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 576
    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    float-to-double v3, v1

    invoke-virtual {p1}, Lcom/itextpdf/layout/property/Background;->getExtraLeft()F

    move-result v1

    float-to-double v5, v1

    sub-double/2addr v3, v5

    .line 577
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    float-to-double v5, v1

    invoke-virtual {p1}, Lcom/itextpdf/layout/property/Background;->getExtraBottom()F

    move-result v1

    float-to-double v7, v1

    sub-double/2addr v5, v7

    .line 578
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    float-to-double v7, v1

    .line 579
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/Background;->getExtraLeft()F

    move-result v1

    float-to-double v9, v1

    add-double/2addr v7, v9

    invoke-virtual {p1}, Lcom/itextpdf/layout/property/Background;->getExtraRight()F

    move-result v1

    float-to-double v9, v1

    add-double/2addr v7, v9

    .line 580
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    float-to-double v9, v1

    .line 581
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/Background;->getExtraTop()F

    move-result v1

    float-to-double v11, v1

    add-double/2addr v9, v11

    invoke-virtual {p1}, Lcom/itextpdf/layout/property/Background;->getExtraBottom()F

    move-result v1

    float-to-double v11, v1

    add-double/2addr v9, v11

    .line 576
    invoke-virtual/range {v2 .. v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    .line 581
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 582
    return-void
.end method

.method private static drawPdfXObject(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/property/BackgroundImage;Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 15
    .param p0, "imageRectangle"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p1, "backgroundImage"    # Lcom/itextpdf/layout/property/BackgroundImage;
    .param p2, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;
    .param p3, "backgroundXObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .param p4, "backgroundArea"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p5, "originBackgroundArea"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 664
    move-object v7, p0

    move-object/from16 v8, p4

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getBlendMode()Lcom/itextpdf/layout/property/BlendMode;

    move-result-object v9

    .line 665
    .local v9, "blendMode":Lcom/itextpdf/layout/property/BlendMode;
    sget-object v0, Lcom/itextpdf/layout/property/BlendMode;->NORMAL:Lcom/itextpdf/layout/property/BlendMode;

    if-eq v9, v0, :cond_0

    .line 666
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    new-instance v1, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;-><init>()V

    invoke-virtual {v9}, Lcom/itextpdf/layout/property/BlendMode;->getPdfRepresentation()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->setBlendMode(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 668
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getRepeat()Lcom/itextpdf/layout/property/BackgroundRepeat;

    move-result-object v0

    .line 670
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getBackgroundSize()Lcom/itextpdf/layout/property/BackgroundSize;

    move-result-object v1

    .line 669
    move-object/from16 v10, p5

    invoke-virtual {v0, p0, v10, v1}, Lcom/itextpdf/layout/property/BackgroundRepeat;->prepareRectangleToDrawingAndGetWhitespace(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/property/BackgroundSize;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v11

    .line 671
    .local v11, "whitespace":Lcom/itextpdf/kernel/geom/Point;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v12

    .line 672
    .local v12, "initialX":F
    const/4 v0, 0x1

    .line 673
    .local v0, "counterY":I
    const/4 v1, 0x1

    move v13, v0

    move v14, v1

    .line 677
    .end local v0    # "counterY":I
    .local v13, "counterY":I
    .local v14, "firstDraw":Z
    :cond_1
    nop

    .line 678
    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    double-to-float v6, v0

    .line 677
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v14

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawPdfXObjectHorizontally(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/property/BackgroundImage;Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/kernel/geom/Rectangle;ZF)V

    .line 679
    const/4 v14, 0x0

    .line 680
    invoke-virtual {p0, v12}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 681
    const v0, 0x38d1b717    # 1.0E-4f

    invoke-virtual {p0, v8, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->overlaps(Lcom/itextpdf/kernel/geom/Rectangle;F)Z

    move-result v1

    .line 682
    .local v1, "isCurrentOverlaps":Z
    rem-int/lit8 v2, v13, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 683
    nop

    .line 684
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    int-to-float v3, v13

    mul-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 685
    invoke-virtual {v2, v8, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->overlaps(Lcom/itextpdf/kernel/geom/Rectangle;F)Z

    move-result v0

    .local v0, "isNextOverlaps":Z
    goto :goto_0

    .line 687
    .end local v0    # "isNextOverlaps":Z
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    int-to-float v3, v13

    mul-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 688
    invoke-virtual {v2, v8, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->overlaps(Lcom/itextpdf/kernel/geom/Rectangle;F)Z

    move-result v0

    .line 690
    .restart local v0    # "isNextOverlaps":Z
    :goto_0
    add-int/lit8 v13, v13, 0x1

    .line 691
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getRepeat()Lcom/itextpdf/layout/property/BackgroundRepeat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/BackgroundRepeat;->isNoRepeatOnYAxis()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 692
    :cond_3
    return-void
.end method

.method private static drawPdfXObjectHorizontally(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/property/BackgroundImage;Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/kernel/geom/Rectangle;ZF)V
    .locals 6
    .param p0, "imageRectangle"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p1, "backgroundImage"    # Lcom/itextpdf/layout/property/BackgroundImage;
    .param p2, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;
    .param p3, "backgroundXObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .param p4, "backgroundArea"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p5, "firstDraw"    # Z
    .param p6, "xWhitespace"    # F

    .line 697
    move v0, p5

    .line 698
    .local v0, "isItFirstDraw":Z
    const/4 v1, 0x1

    .line 702
    .local v1, "counterX":I
    :cond_0
    const v2, 0x38d1b717    # 1.0E-4f

    invoke-virtual {p0, p4, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->overlaps(Lcom/itextpdf/kernel/geom/Rectangle;F)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    .line 703
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    invoke-virtual {v3, p3, p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObjectFittedIntoRectangle(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 704
    const/4 v0, 0x0

    .line 706
    :cond_2
    invoke-virtual {p0, p4, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->overlaps(Lcom/itextpdf/kernel/geom/Rectangle;F)Z

    move-result v3

    .line 707
    .local v3, "isCurrentOverlaps":Z
    rem-int/lit8 v4, v1, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 708
    nop

    .line 709
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    add-float/2addr v4, p6

    int-to-float v5, v1

    mul-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 710
    invoke-virtual {v4, p4, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->overlaps(Lcom/itextpdf/kernel/geom/Rectangle;F)Z

    move-result v2

    .local v2, "isNextOverlaps":Z
    goto :goto_0

    .line 712
    .end local v2    # "isNextOverlaps":Z
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    add-float/2addr v4, p6

    int-to-float v5, v1

    mul-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->moveLeft(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 713
    invoke-virtual {v4, p4, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->overlaps(Lcom/itextpdf/kernel/geom/Rectangle;F)Z

    move-result v2

    .line 715
    .restart local v2    # "isNextOverlaps":Z
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 717
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getRepeat()Lcom/itextpdf/layout/property/BackgroundRepeat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/property/BackgroundRepeat;->isNoRepeatOnXAxis()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    .line 718
    :cond_4
    return-void
.end method

.method private static getBorderRadii(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/property/BorderRadius;
    .locals 14
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2691
    const/16 v0, 0x65

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/BorderRadius;

    .line 2692
    .local v0, "radius":Lcom/itextpdf/layout/property/BorderRadius;
    const/16 v1, 0x6e

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/property/BorderRadius;

    .line 2693
    .local v2, "topLeftRadius":Lcom/itextpdf/layout/property/BorderRadius;
    const/16 v3, 0x6f

    invoke-interface {p0, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/property/BorderRadius;

    .line 2694
    .local v4, "topRightRadius":Lcom/itextpdf/layout/property/BorderRadius;
    const/16 v5, 0x70

    invoke-interface {p0, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/property/BorderRadius;

    .line 2695
    .local v6, "bottomRightRadius":Lcom/itextpdf/layout/property/BorderRadius;
    const/16 v7, 0x71

    invoke-interface {p0, v7}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/property/BorderRadius;

    .line 2697
    .local v8, "bottomLeftRadius":Lcom/itextpdf/layout/property/BorderRadius;
    const/4 v9, 0x4

    new-array v9, v9, [Lcom/itextpdf/layout/property/BorderRadius;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v11, 0x1

    aput-object v4, v9, v11

    const/4 v12, 0x2

    aput-object v6, v9, v12

    const/4 v13, 0x3

    aput-object v8, v9, v13

    .line 2699
    .local v9, "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    invoke-static {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnOrModelProperty(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2700
    aput-object v0, v9, v10

    .line 2702
    :cond_0
    invoke-static {p0, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnOrModelProperty(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2703
    aput-object v0, v9, v11

    .line 2705
    :cond_1
    invoke-static {p0, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnOrModelProperty(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2706
    aput-object v0, v9, v12

    .line 2708
    :cond_2
    invoke-static {p0, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnOrModelProperty(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2709
    aput-object v0, v9, v13

    .line 2712
    :cond_3
    return-object v9
.end method

.method static getBorders(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/borders/Border;
    .locals 14
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2430
    const/16 v0, 0x9

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/borders/Border;

    .line 2431
    .local v0, "border":Lcom/itextpdf/layout/borders/Border;
    const/16 v1, 0xd

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/borders/Border;

    .line 2432
    .local v2, "topBorder":Lcom/itextpdf/layout/borders/Border;
    const/16 v3, 0xc

    invoke-interface {p0, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    .line 2433
    .local v4, "rightBorder":Lcom/itextpdf/layout/borders/Border;
    const/16 v5, 0xa

    invoke-interface {p0, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/borders/Border;

    .line 2434
    .local v6, "bottomBorder":Lcom/itextpdf/layout/borders/Border;
    const/16 v7, 0xb

    invoke-interface {p0, v7}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/borders/Border;

    .line 2436
    .local v8, "leftBorder":Lcom/itextpdf/layout/borders/Border;
    const/4 v9, 0x4

    new-array v9, v9, [Lcom/itextpdf/layout/borders/Border;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v11, 0x1

    aput-object v4, v9, v11

    const/4 v12, 0x2

    aput-object v6, v9, v12

    const/4 v13, 0x3

    aput-object v8, v9, v13

    .line 2438
    .local v9, "borders":[Lcom/itextpdf/layout/borders/Border;
    invoke-static {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnOrModelProperty(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2439
    aput-object v0, v9, v10

    .line 2441
    :cond_0
    invoke-static {p0, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnOrModelProperty(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2442
    aput-object v0, v9, v11

    .line 2444
    :cond_1
    invoke-static {p0, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnOrModelProperty(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2445
    aput-object v0, v9, v12

    .line 2447
    :cond_2
    invoke-static {p0, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnOrModelProperty(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2448
    aput-object v0, v9, v13

    .line 2451
    :cond_3
    return-object v9
.end method

.method private static getMargins(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/property/UnitValue;
    .locals 3
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2686
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/itextpdf/layout/property/UnitValue;

    const/16 v1, 0x2e

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/UnitValue;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x2d

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/UnitValue;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2687
    const/16 v1, 0x2b

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/UnitValue;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x2c

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/UnitValue;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2686
    return-object v0
.end method

.method private static getPaddings(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/property/UnitValue;
    .locals 3
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2716
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/itextpdf/layout/property/UnitValue;

    const/16 v1, 0x32

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/UnitValue;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x31

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/UnitValue;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2717
    const/16 v1, 0x2f

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/UnitValue;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x30

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/UnitValue;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2716
    return-object v0
.end method

.method static getPropertyAsFloat(Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Float;
    .locals 1
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p1, "property"    # I

    .line 2333
    invoke-interface {p0, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/util/NumberUtil;->asFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method static getPropertyAsUnitValue(Lcom/itextpdf/layout/renderer/IRenderer;I)Lcom/itextpdf/layout/property/UnitValue;
    .locals 1
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p1, "property"    # I

    .line 2344
    invoke-interface {p0, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    .line 2345
    .local v0, "result":Lcom/itextpdf/layout/property/UnitValue;
    return-object v0
.end method

.method private static hasOwnOrModelProperty(Lcom/itextpdf/layout/renderer/IRenderer;I)Z
    .locals 1
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p1, "property"    # I

    .line 2721
    invoke-interface {p0, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->hasOwnProperty(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/itextpdf/layout/IPropertyContainer;->hasProperty(I)Z

    move-result v0

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

.method protected static isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 2
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1291
    const/16 v0, 0x69

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/BoxSizingPropertyValue;

    .line 1292
    .local v0, "boxSizing":Lcom/itextpdf/layout/property/BoxSizingPropertyValue;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/itextpdf/layout/property/BoxSizingPropertyValue;->BORDER_BOX:Lcom/itextpdf/layout/property/BoxSizingPropertyValue;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/property/BoxSizingPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected static isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z
    .locals 1
    .param p0, "rendererOverflowProperty"    # Lcom/itextpdf/layout/property/OverflowPropertyValue;

    .line 1308
    if-eqz p0, :cond_1

    sget-object v0, Lcom/itextpdf/layout/property/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    invoke-virtual {v0, p0}, Lcom/itextpdf/layout/property/OverflowPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v0

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

.method protected static isOverflowProperty(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z
    .locals 1
    .param p0, "equalsTo"    # Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .param p1, "rendererOverflowProperty"    # Lcom/itextpdf/layout/property/OverflowPropertyValue;

    .line 1304
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/property/OverflowPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/itextpdf/layout/property/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/property/OverflowPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

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

.method protected static isOverflowProperty(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/layout/renderer/IRenderer;I)Z
    .locals 1
    .param p0, "equalsTo"    # Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "overflowProperty"    # I

    .line 1300
    invoke-interface {p1, p2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/OverflowPropertyValue;

    invoke-static {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isOverflowProperty(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v0

    return v0
.end method

.method static noAbsolutePositionInfo(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 1
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2329
    const/16 v0, 0x49

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xe

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x22

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x36

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static processWaitingDrawing(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/property/Transform;Ljava/util/List;)V
    .locals 11
    .param p0, "child"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p1, "transformProp"    # Lcom/itextpdf/layout/property/Transform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            "Lcom/itextpdf/layout/property/Transform;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;)V"
        }
    .end annotation

    .line 1312
    .local p2, "waitingDrawing":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 1313
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1315
    :cond_1
    const/16 v0, 0x6a

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/borders/Border;

    .line 1316
    .local v0, "outlineProp":Lcom/itextpdf/layout/borders/Border;
    if-eqz v0, :cond_6

    instance-of v1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v1, :cond_6

    .line 1317
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 1318
    .local v1, "abstractChild":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isRelativePosition()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1319
    invoke-virtual {v1, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyRelativePositioningTranslation(Z)V

    .line 1320
    :cond_2
    new-instance v2, Lcom/itextpdf/layout/element/Div;

    invoke-direct {v2}, Lcom/itextpdf/layout/element/Div;-><init>()V

    .line 1321
    .local v2, "outlines":Lcom/itextpdf/layout/element/Div;
    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Div;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->setRole(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    .line 1322
    if-eqz p1, :cond_3

    .line 1323
    const/16 v4, 0x35

    invoke-virtual {v2, v4, p1}, Lcom/itextpdf/layout/element/Div;->setProperty(ILjava/lang/Object;)V

    .line 1324
    :cond_3
    const/16 v4, 0x9

    invoke-virtual {v2, v4, v0}, Lcom/itextpdf/layout/element/Div;->setProperty(ILjava/lang/Object;)V

    .line 1325
    invoke-virtual {v2, v4}, Lcom/itextpdf/layout/element/Div;->getProperty(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {v5}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    .line 1326
    .local v5, "offset":F
    const/16 v6, 0x6b

    invoke-virtual {v1, v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1327
    invoke-virtual {v1, v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v5, v6

    .line 1328
    :cond_4
    new-instance v6, Lcom/itextpdf/layout/renderer/DivRenderer;

    invoke-direct {v6, v2}, Lcom/itextpdf/layout/renderer/DivRenderer;-><init>(Lcom/itextpdf/layout/element/Div;)V

    .line 1329
    .local v6, "div":Lcom/itextpdf/layout/renderer/DivRenderer;
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/layout/renderer/DivRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1330
    iget-object v7, v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v1, v7, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->moveLeft(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    .line 1331
    .local v3, "divOccupiedArea":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v9, v5, v8

    add-float/2addr v7, v9

    invoke-virtual {v3, v7}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v9

    mul-float v10, v5, v8

    add-float/2addr v9, v10

    invoke-virtual {v7, v9}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1332
    new-instance v7, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v9

    invoke-direct {v7, v9, v3}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v7, v6, Lcom/itextpdf/layout/renderer/DivRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 1333
    invoke-virtual {v6, v4}, Lcom/itextpdf/layout/renderer/DivRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v4

    .line 1334
    .local v4, "outlineWidth":F
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v7

    mul-float v9, v4, v8

    cmpl-float v7, v7, v9

    if-ltz v7, :cond_5

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    mul-float/2addr v8, v4

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_5

    .line 1335
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1337
    :cond_5
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isRelativePosition()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1338
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyRelativePositioningTranslation(Z)V

    .line 1340
    .end local v1    # "abstractChild":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .end local v2    # "outlines":Lcom/itextpdf/layout/element/Div;
    .end local v3    # "divOccupiedArea":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v4    # "outlineWidth":F
    .end local v5    # "offset":F
    .end local v6    # "div":Lcom/itextpdf/layout/renderer/DivRenderer;
    :cond_6
    return-void
.end method

.method private removeThisFromParent(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 1
    .param p1, "toRemove"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2672
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    if-ne p0, v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2673
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2675
    :cond_0
    return-void
.end method

.method private removeThisFromParents(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;)V"
        }
    .end annotation

    .line 2678
    .local p1, "children":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2679
    .local v1, "child":Lcom/itextpdf/layout/renderer/IRenderer;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    if-ne p0, v2, :cond_0

    .line 2680
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2682
    .end local v1    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_0
    goto :goto_0

    .line 2683
    :cond_1
    return-void
.end method

.method private retrieveDirectParentDeclaredHeight()Ljava/lang/Float;
    .locals 2

    .line 1958
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_0

    const/16 v1, 0x1b

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1959
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(Lcom/itextpdf/layout/renderer/IRenderer;I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 1960
    .local v0, "parentHeightUV":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1961
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 1964
    .end local v0    # "parentHeightUV":Lcom/itextpdf/layout/property/UnitValue;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private retrieveResolvedParentDeclaredHeight()Ljava/lang/Float;
    .locals 2

    .line 1940
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_1

    const/16 v1, 0x1b

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1941
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(Lcom/itextpdf/layout/renderer/IRenderer;I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 1942
    .local v0, "parentHeightUV":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1943
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 1945
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveHeight()Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 1948
    .end local v0    # "parentHeightUV":Lcom/itextpdf/layout/property/UnitValue;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateMinHeightForAbsolutelyPositionedRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 7
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "parentRendererBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "top"    # Ljava/lang/Float;
    .param p4, "bottom"    # Ljava/lang/Float;

    .line 2474
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    const/16 v0, 0x1b

    invoke-interface {p1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2475
    const/16 v0, 0x54

    invoke-static {p1, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(Lcom/itextpdf/layout/renderer/IRenderer;I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 2476
    .local v0, "currentMaxHeight":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x55

    invoke-static {p1, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(Lcom/itextpdf/layout/renderer/IRenderer;I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v2

    .line 2477
    .local v2, "currentMinHeight":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v3

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2479
    .local v3, "resolvedMinHeight":F
    new-instance v5, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v5, v4, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    move-object v4, v5

    .line 2480
    .local v4, "dummy":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 2481
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPaddings(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2482
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorders(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/borders/Border;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2484
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMargins(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2485
    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    sub-float/2addr v3, v5

    .line 2487
    if-eqz v2, :cond_1

    .line 2488
    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2490
    :cond_1
    if-eqz v0, :cond_2

    .line 2491
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2494
    :cond_2
    invoke-static {v3}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 2496
    .end local v0    # "currentMaxHeight":Lcom/itextpdf/layout/property/UnitValue;
    .end local v2    # "currentMinHeight":Lcom/itextpdf/layout/property/UnitValue;
    .end local v3    # "resolvedMinHeight":F
    .end local v4    # "dummy":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_3
    return-void
.end method


# virtual methods
.method addAllChildRenderers(ILjava/util/List;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;)V"
        }
    .end annotation

    .line 2596
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setThisAsParent(Ljava/util/Collection;)V

    .line 2597
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 2598
    return-void
.end method

.method addAllChildRenderers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;)V"
        }
    .end annotation

    .line 2581
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    if-nez p1, :cond_0

    .line 2582
    return-void

    .line 2584
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setThisAsParent(Ljava/util/Collection;)V

    .line 2585
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2586
    return-void
.end method

.method protected addAllProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1676
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1677
    return-void
.end method

.method public addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 5
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 195
    const/16 v0, 0x34

    invoke-interface {p1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 196
    .local v0, "positioning":Ljava/lang/Integer;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_3

    .line 198
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 199
    move-object v1, p0

    .line 200
    .local v1, "root":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    :goto_0
    iget-object v2, v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v3, v2, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v3, :cond_1

    .line 201
    move-object v1, v2

    check-cast v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    goto :goto_0

    .line 203
    :cond_1
    if-ne v1, p0, :cond_2

    .line 204
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 206
    :cond_2
    invoke-virtual {v1, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_2

    .line 208
    .end local v1    # "root":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 212
    move-object v1, p0

    .line 213
    .local v1, "positionedParent":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->noAbsolutePositionInfo(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v2

    .line 214
    .local v2, "noPositionInfo":Z
    :goto_1
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isPositioned()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v2, :cond_4

    .line 215
    iget-object v3, v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 216
    .local v3, "parent":Lcom/itextpdf/layout/renderer/IRenderer;
    instance-of v4, v3, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v4, :cond_4

    .line 217
    move-object v1, v3

    check-cast v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 221
    .end local v3    # "parent":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_1

    .line 222
    :cond_4
    if-ne v1, p0, :cond_5

    .line 223
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 225
    :cond_5
    invoke-virtual {v1, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_4

    .line 208
    .end local v1    # "positionedParent":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .end local v2    # "noPositionInfo":Z
    :cond_6
    :goto_2
    goto :goto_4

    .line 197
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :goto_4
    instance-of v1, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v1, :cond_9

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isPositioned()Z

    move-result v1

    if-nez v1, :cond_9

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "pos":I
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    iget-object v2, v2, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    .line 236
    .local v2, "childPositionedRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 237
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->noAbsolutePositionInfo(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 240
    :cond_8
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 245
    .end local v1    # "pos":I
    .end local v2    # "childPositionedRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :cond_9
    return-void
.end method

.method addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 1
    .param p1, "child"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2570
    invoke-interface {p1, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2571
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2572
    return-void
.end method

.method protected alignChildHorizontally(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 8
    .param p1, "childRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "currentArea"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2126
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    .line 2127
    .local v0, "availableWidth":F
    const/16 v1, 0x1c

    invoke-interface {p1, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/HorizontalAlignment;

    .line 2128
    .local v1, "horizontalAlignment":Lcom/itextpdf/layout/property/HorizontalAlignment;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/itextpdf/layout/property/HorizontalAlignment;->LEFT:Lcom/itextpdf/layout/property/HorizontalAlignment;

    if-eq v1, v2, :cond_0

    .line 2129
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    sub-float v2, v0, v2

    .line 2130
    .local v2, "freeSpace":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    .line 2132
    :try_start_0
    sget-object v4, Lcom/itextpdf/layout/renderer/AbstractRenderer$1;->$SwitchMap$com$itextpdf$layout$property$HorizontalAlignment:[I

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/HorizontalAlignment;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 2137
    :pswitch_0
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v2, v4

    invoke-interface {p1, v4, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto :goto_0

    .line 2134
    :pswitch_1
    invoke-interface {p1, v2, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2135
    nop

    .line 2143
    :goto_0
    goto :goto_1

    .line 2140
    :catch_0
    move-exception v3

    .line 2141
    .local v3, "e":Ljava/lang/NullPointerException;
    const-class v4, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    .line 2142
    .local v4, "logger":Lorg/slf4j/Logger;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Some of the children might not end up aligned horizontally."

    aput-object v7, v5, v6

    const-string v6, "Occupied area has not been initialized. {0}"

    invoke-static {v6, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 2146
    .end local v2    # "freeSpace":F
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .end local v4    # "logger":Lorg/slf4j/Logger;
    :cond_0
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected allowLastYLineRecursiveExtraction()Z
    .locals 2

    .line 1710
    sget-object v0, Lcom/itextpdf/layout/property/OverflowPropertyValue;->HIDDEN:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isOverflowProperty(Lcom/itextpdf/layout/property/OverflowPropertyValue;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/itextpdf/layout/property/OverflowPropertyValue;->HIDDEN:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    const/16 v1, 0x68

    .line 1711
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isOverflowProperty(Lcom/itextpdf/layout/property/OverflowPropertyValue;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1710
    :goto_0
    return v0
.end method

.method protected applyAbsolutePosition(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 9
    .param p1, "parentRect"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1812
    const/16 v0, 0x49

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    .line 1813
    .local v0, "top":Ljava/lang/Float;
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    .line 1814
    .local v1, "bottom":Ljava/lang/Float;
    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v2

    .line 1815
    .local v2, "left":Ljava/lang/Float;
    const/16 v3, 0x36

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v3

    .line 1817
    .local v3, "right":Ljava/lang/Float;
    const/4 v4, 0x0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    sget-object v5, Lcom/itextpdf/layout/property/BaseDirection;->RIGHT_TO_LEFT:Lcom/itextpdf/layout/property/BaseDirection;

    const/4 v6, 0x7

    invoke-virtual {p0, v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/layout/property/BaseDirection;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1818
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 1821
    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 1822
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1826
    :cond_1
    if-eqz v3, :cond_2

    .line 1827
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0, v5, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->move(FF)V

    goto :goto_0

    .line 1841
    :catch_0
    move-exception v4

    goto :goto_1

    .line 1830
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 1831
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0, v5, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->move(FF)V

    .line 1834
    :cond_3
    if-eqz v0, :cond_4

    .line 1835
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->move(FF)V

    .line 1838
    :cond_4
    if-eqz v1, :cond_5

    .line 1839
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->move(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1842
    .local v4, "exc":Ljava/lang/Exception;
    :goto_1
    const-class v5, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {v5}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    .line 1843
    .local v5, "logger":Lorg/slf4j/Logger;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Absolute positioning might be applied incorrectly."

    aput-object v8, v6, v7

    const-string v7, "Occupied area has not been initialized. {0}"

    invoke-static {v7, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 1844
    .end local v4    # "exc":Ljava/lang/Exception;
    .end local v5    # "logger":Lorg/slf4j/Logger;
    :cond_5
    :goto_2
    nop

    .line 1845
    :goto_3
    return-void
.end method

.method applyAbsolutePositionIfNeeded(Lcom/itextpdf/layout/layout/LayoutContext;)V
    .locals 1
    .param p1, "layoutContext"    # Lcom/itextpdf/layout/layout/LayoutContext;

    .line 2455
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isAbsolutePosition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2456
    instance-of v0, p1, Lcom/itextpdf/layout/layout/PositionedLayoutContext;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/itextpdf/layout/layout/PositionedLayoutContext;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/PositionedLayoutContext;->getParentOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyAbsolutePosition(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 2458
    :cond_1
    return-void
.end method

.method protected applyAction(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 9
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 1885
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    .line 1886
    .local v1, "action":Lcom/itextpdf/kernel/pdf/action/PdfAction;
    if-eqz v1, :cond_2

    .line 1887
    const/16 v2, 0x58

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    .line 1888
    .local v3, "link":Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;
    if-nez v3, :cond_1

    .line 1889
    new-instance v4, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    new-instance v5, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v6, v6}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->setFlags(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    .line 1890
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    .line 1891
    .local v4, "border":Lcom/itextpdf/layout/borders/Border;
    const/4 v5, 0x3

    if-eqz v4, :cond_0

    .line 1892
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-array v5, v5, [F

    const/4 v8, 0x0

    aput v6, v5, v8

    aput v6, v5, v0

    const/4 v0, 0x2

    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v6

    aput v6, v5, v0

    invoke-direct {v7, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v3, v7}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->setBorder(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    goto :goto_0

    .line 1894
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-direct {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->setBorder(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 1896
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1898
    .end local v4    # "border":Lcom/itextpdf/layout/borders/Border;
    :cond_1
    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->setAction(Lcom/itextpdf/kernel/pdf/action/PdfAction;)Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    .line 1900
    .end local v3    # "link":Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;
    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 2
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "reverse"    # Z

    .line 1263
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    .line 1264
    .local v0, "borders":[Lcom/itextpdf/layout/borders/Border;
    invoke-virtual {p0, p1, v0, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    return-object v1
.end method

.method protected applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 9
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "borders"    # [Lcom/itextpdf/layout/borders/Border;
    .param p3, "reverse"    # Z

    .line 1804
    const/4 v0, 0x0

    aget-object v1, p2, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v2

    .line 1805
    .local v4, "topWidth":F
    :goto_0
    const/4 v0, 0x1

    aget-object v1, p2, v0

    if-eqz v1, :cond_1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, v2

    .line 1806
    .local v5, "rightWidth":F
    :goto_1
    const/4 v0, 0x2

    aget-object v1, p2, v0

    if-eqz v1, :cond_2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    move v6, v0

    goto :goto_2

    :cond_2
    move v6, v2

    .line 1807
    .local v6, "bottomWidth":F
    :goto_2
    const/4 v0, 0x3

    aget-object v1, p2, v0

    if-eqz v1, :cond_3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v2

    :cond_3
    move v7, v2

    .line 1808
    .local v7, "leftWidth":F
    move-object v3, p1

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method protected applyDestination(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 8
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 1863
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1864
    .local v1, "destination":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1865
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v2

    .line 1866
    .local v2, "pageNumber":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v2, v4, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v5

    if-le v2, v5, :cond_0

    goto :goto_0

    .line 1872
    :cond_0
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 1873
    .local v4, "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1874
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->XYZ:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1875
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v6

    float-to-double v6, v6

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1876
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1877
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v5, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1878
    invoke-virtual {v4, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addNamedDestination(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1880
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->deleteProperty(I)V

    goto :goto_1

    .line 1867
    .end local v4    # "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_1
    :goto_0
    const-class v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 1868
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v5, "Property.DESTINATION, which specifies this element location as destination, see ElementPropertyContainer.setDestination."

    .line 1869
    .local v5, "logMessageArg":Ljava/lang/String;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    const-string v3, "Unable to apply page dependent property, because the page on which element is drawn is unknown. Usually this means that element was added to the Canvas instance that was created not with constructor taking PdfPage as argument. Not processed property: {0}"

    invoke-static {v3, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1870
    return-void

    .line 1882
    .end local v0    # "logger":Lorg/slf4j/Logger;
    .end local v2    # "pageNumber":I
    .end local v5    # "logMessageArg":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method

.method protected applyDestinationsAndAnnotation(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 1
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 1285
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyDestination(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 1286
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyAction(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 1287
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyLinkAnnotation(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 1288
    return-void
.end method

.method protected applyLinkAnnotation(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 9
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 1903
    const-class v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 1904
    .local v0, "logger":Lorg/slf4j/Logger;
    const/16 v1, 0x58

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    .line 1905
    .local v1, "linkAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;
    if-eqz v1, :cond_3

    .line 1906
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v2

    .line 1907
    .local v2, "pageNumber":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v2, v4, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v5

    if-le v2, v5, :cond_0

    goto :goto_0

    .line 1915
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->clone()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1916
    .local v5, "oldAnnotation":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-static {v5}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    .line 1917
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculateAbsolutePdfBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    .line 1918
    .local v6, "pdfBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v7, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v1, v7}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->setRectangle(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 1920
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v7

    .line 1923
    .local v7, "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1924
    new-array v4, v4, [Ljava/lang/Object;

    const-string v8, "link annotation applying"

    aput-object v8, v4, v3

    const-string v3, "Page was flushed. {0} will not be performed."

    invoke-static {v3, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 1927
    :cond_1
    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;

    goto :goto_1

    .line 1908
    .end local v5    # "oldAnnotation":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v6    # "pdfBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v7    # "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    :cond_2
    :goto_0
    const-string v5, "Property.LINK_ANNOTATION, which specifies a link associated with this element content area, see com.itextpdf.layout.element.Link."

    .line 1909
    .local v5, "logMessageArg":Ljava/lang/String;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    const-string v3, "Unable to apply page dependent property, because the page on which element is drawn is unknown. Usually this means that element was added to the Canvas instance that was created not with constructor taking PdfPage as argument. Not processed property: {0}"

    invoke-static {v3, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1910
    return-void

    .line 1930
    .end local v2    # "pageNumber":I
    .end local v5    # "logMessageArg":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void
.end method

.method public applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "reverse"    # Z

    .line 1249
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMargins()[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method protected applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 12
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "margins"    # [Lcom/itextpdf/layout/property/UnitValue;
    .param p3, "reverse"    # Z

    .line 1724
    const-class v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    const/4 v1, 0x0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v2

    const-string v3, "Property {0} in percents is not supported"

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 1725
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 1726
    .local v2, "logger":Lorg/slf4j/Logger;
    new-array v5, v4, [Ljava/lang/Object;

    const/16 v6, 0x2e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1728
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :cond_0
    aget-object v2, p2, v4

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1729
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 1730
    .restart local v2    # "logger":Lorg/slf4j/Logger;
    new-array v5, v4, [Ljava/lang/Object;

    const/16 v6, 0x2d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1732
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :cond_1
    const/4 v2, 0x2

    aget-object v5, p2, v2

    invoke-virtual {v5}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1733
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    .line 1734
    .local v5, "logger":Lorg/slf4j/Logger;
    new-array v6, v4, [Ljava/lang/Object;

    const/16 v7, 0x2b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1736
    .end local v5    # "logger":Lorg/slf4j/Logger;
    :cond_2
    const/4 v5, 0x3

    aget-object v6, p2, v5

    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1737
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 1738
    .local v0, "logger":Lorg/slf4j/Logger;
    new-array v6, v4, [Ljava/lang/Object;

    const/16 v7, 0x2c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1740
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_3
    aget-object v0, p2, v1

    .line 1741
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v7

    aget-object v0, p2, v4

    .line 1742
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v8

    aget-object v0, p2, v2

    .line 1743
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v9

    aget-object v0, p2, v5

    .line 1744
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v10

    .line 1740
    move-object v6, p1

    move v11, p3

    invoke-virtual/range {v6 .. v11}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method applyMarginsBordersPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "reverse"    # Z

    .line 1233
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1234
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1235
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1236
    return-object p1
.end method

.method public applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "reverse"    # Z

    .line 1277
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPaddings()[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method protected applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 12
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "paddings"    # [Lcom/itextpdf/layout/property/UnitValue;
    .param p3, "reverse"    # Z

    .line 1775
    const-class v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    const/4 v1, 0x0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v2

    const-string v3, "Property {0} in percents is not supported"

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 1776
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 1777
    .local v2, "logger":Lorg/slf4j/Logger;
    new-array v5, v4, [Ljava/lang/Object;

    const/16 v6, 0x32

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1779
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :cond_0
    aget-object v2, p2, v4

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1780
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 1781
    .restart local v2    # "logger":Lorg/slf4j/Logger;
    new-array v5, v4, [Ljava/lang/Object;

    const/16 v6, 0x31

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1783
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :cond_1
    const/4 v2, 0x2

    aget-object v5, p2, v2

    invoke-virtual {v5}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1784
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    .line 1785
    .local v5, "logger":Lorg/slf4j/Logger;
    new-array v6, v4, [Ljava/lang/Object;

    const/16 v7, 0x2f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1787
    .end local v5    # "logger":Lorg/slf4j/Logger;
    :cond_2
    const/4 v5, 0x3

    aget-object v6, p2, v5

    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1788
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 1789
    .local v0, "logger":Lorg/slf4j/Logger;
    new-array v6, v4, [Ljava/lang/Object;

    const/16 v7, 0x30

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1791
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_3
    aget-object v0, p2, v1

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v7

    aget-object v0, p2, v4

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v8

    aget-object v0, p2, v2

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v9

    aget-object v0, p2, v5

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v10

    move-object v6, p1

    move v11, p3

    invoke-virtual/range {v6 .. v11}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method protected applyRelativePositioningTranslation(Z)V
    .locals 9
    .param p1, "reverse"    # Z

    .line 1848
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x49

    invoke-virtual {p0, v2, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1849
    .local v2, "top":F
    const/16 v3, 0xe

    invoke-virtual {p0, v3, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1850
    .local v3, "bottom":F
    const/16 v4, 0x22

    invoke-virtual {p0, v4, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1851
    .local v4, "left":F
    const/16 v5, 0x36

    invoke-virtual {p0, v5, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1853
    .local v1, "right":F
    if-eqz p1, :cond_0

    const/4 v5, -0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    .line 1855
    .local v5, "reverseMultiplier":I
    :goto_0
    cmpl-float v6, v4, v0

    if-eqz v6, :cond_1

    int-to-float v6, v5

    mul-float/2addr v6, v4

    goto :goto_1

    :cond_1
    neg-float v6, v1

    int-to-float v7, v5

    mul-float/2addr v6, v7

    .line 1856
    .local v6, "dxRight":F
    :goto_1
    cmpl-float v7, v2, v0

    if-eqz v7, :cond_2

    neg-float v7, v2

    int-to-float v8, v5

    mul-float/2addr v7, v8

    goto :goto_2

    :cond_2
    int-to-float v7, v5

    mul-float/2addr v7, v3

    .line 1858
    .local v7, "dyUp":F
    :goto_2
    cmpl-float v8, v6, v0

    if-nez v8, :cond_3

    cmpl-float v0, v7, v0

    if-eqz v0, :cond_4

    .line 1859
    :cond_3
    invoke-virtual {p0, v6, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->move(FF)V

    .line 1860
    :cond_4
    return-void
.end method

.method protected beginElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 4
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 503
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    .line 504
    .local v0, "opacity":Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 505
    new-instance v1, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;-><init>()V

    .line 506
    .local v1, "extGState":Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;
    nop

    .line 507
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->setStrokeOpacity(F)Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    move-result-object v2

    .line 508
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->setFillOpacity(F)Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    .line 509
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    .line 510
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    .line 511
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 513
    .end local v1    # "extGState":Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;
    :cond_0
    return-void
.end method

.method protected beginTransformationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 2
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2551
    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2552
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->createTransformationInsideOccupiedArea()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    .line 2553
    .local v0, "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2555
    .end local v0    # "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    :cond_0
    return-void
.end method

.method protected calculateAbsolutePdfBBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 6

    .line 2200
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 2201
    .local v0, "contentBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->rectangleToPointsList(Lcom/itextpdf/kernel/geom/Rectangle;)Ljava/util/List;

    move-result-object v1

    .line 2202
    .local v1, "contentBoxPoints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    move-object v2, p0

    .line 2203
    .local v2, "renderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    :goto_0
    iget-object v3, v2, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v3, :cond_3

    .line 2204
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/BlockRenderer;

    if-eqz v3, :cond_0

    .line 2205
    const/16 v3, 0x37

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 2206
    .local v3, "angle":Ljava/lang/Float;
    if-eqz v3, :cond_0

    .line 2207
    move-object v4, v2

    check-cast v4, Lcom/itextpdf/layout/renderer/BlockRenderer;

    .line 2208
    .local v4, "blockRenderer":Lcom/itextpdf/layout/renderer/BlockRenderer;
    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createRotationTransformInsideOccupiedArea()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v5

    .line 2209
    .local v5, "rotationTransform":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual {p0, v1, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->transformPoints(Ljava/util/List;Lcom/itextpdf/kernel/geom/AffineTransform;)Ljava/util/List;

    .line 2213
    .end local v3    # "angle":Ljava/lang/Float;
    .end local v4    # "blockRenderer":Lcom/itextpdf/layout/renderer/BlockRenderer;
    .end local v5    # "rotationTransform":Lcom/itextpdf/kernel/geom/AffineTransform;
    :cond_0
    const/16 v3, 0x35

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2214
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/BlockRenderer;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcom/itextpdf/layout/renderer/ImageRenderer;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v3, :cond_2

    .line 2215
    :cond_1
    invoke-direct {v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->createTransformationInsideOccupiedArea()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v3

    .line 2216
    .local v3, "rotationTransform":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual {p0, v1, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->transformPoints(Ljava/util/List;Lcom/itextpdf/kernel/geom/AffineTransform;)Ljava/util/List;

    .line 2219
    .end local v3    # "rotationTransform":Lcom/itextpdf/kernel/geom/AffineTransform;
    :cond_2
    iget-object v3, v2, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    move-object v2, v3

    check-cast v2, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    goto :goto_0

    .line 2222
    :cond_3
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculateBBox(Ljava/util/List;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    return-object v3
.end method

.method protected calculateBBox(Ljava/util/List;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;)",
            "Lcom/itextpdf/kernel/geom/Rectangle;"
        }
    .end annotation

    .line 2232
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    invoke-static {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->calculateBBox(Ljava/util/List;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method protected calculateShiftToPositionBBoxOfPointsAt(FFLjava/util/List;)[F
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;)[F"
        }
    .end annotation

    .line 2258
    .local p3, "points":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 2259
    .local v0, "minX":D
    const-wide v2, -0x10000000000001L

    .line 2260
    .local v2, "maxY":D
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/geom/Point;

    .line 2261
    .local v5, "point":Lcom/itextpdf/kernel/geom/Point;
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 2262
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v6

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 2263
    .end local v5    # "point":Lcom/itextpdf/kernel/geom/Point;
    goto :goto_0

    .line 2265
    :cond_0
    float-to-double v4, p1

    sub-double/2addr v4, v0

    double-to-float v4, v4

    .line 2266
    .local v4, "dx":F
    float-to-double v5, p2

    sub-double/2addr v5, v2

    double-to-float v5, v5

    .line 2267
    .local v5, "dy":F
    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v4, v6, v7

    const/4 v7, 0x1

    aput v5, v6, v7

    return-object v6
.end method

.method protected clipBackgroundArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)Z
    .locals 7
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;
    .param p2, "outerBorderBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 759
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->clipArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;ZZZZ)Z

    move-result v0

    return v0
.end method

.method protected clipBackgroundArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;Z)Z
    .locals 7
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;
    .param p2, "outerBorderBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "considerBordersBeforeClipping"    # Z

    .line 763
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->clipArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;ZZZZ)Z

    move-result v0

    return v0
.end method

.method protected clipBorderArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)Z
    .locals 7
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;
    .param p2, "outerBorderBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 755
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->clipArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;ZZZZ)Z

    move-result v0

    return v0
.end method

.method createFontCharacteristics()Lcom/itextpdf/layout/font/FontCharacteristics;
    .locals 3

    .line 2369
    new-instance v0, Lcom/itextpdf/layout/font/FontCharacteristics;

    invoke-direct {v0}, Lcom/itextpdf/layout/font/FontCharacteristics;-><init>()V

    .line 2370
    .local v0, "fc":Lcom/itextpdf/layout/font/FontCharacteristics;
    const/16 v1, 0x5f

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2371
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/font/FontCharacteristics;->setFontWeight(Ljava/lang/String;)Lcom/itextpdf/layout/font/FontCharacteristics;

    .line 2373
    :cond_0
    const/16 v1, 0x5e

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2374
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/font/FontCharacteristics;->setFontStyle(Ljava/lang/String;)Lcom/itextpdf/layout/font/FontCharacteristics;

    .line 2376
    :cond_1
    return-object v0
.end method

.method public deleteOwnProperty(I)V
    .locals 2
    .param p1, "property"    # I

    .line 297
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-void
.end method

.method public deleteProperty(I)V
    .locals 2
    .param p1, "property"    # I

    .line 307
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    if-eqz v0, :cond_1

    .line 311
    invoke-interface {v0, p1}, Lcom/itextpdf/layout/IPropertyContainer;->deleteOwnProperty(I)V

    .line 314
    :cond_1
    :goto_0
    return-void
.end method

.method public draw(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 2
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 481
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyDestinationsAndAnnotation(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 483
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isRelativePosition()Z

    move-result v0

    .line 484
    .local v0, "relativePosition":Z
    if-eqz v0, :cond_0

    .line 485
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyRelativePositioningTranslation(Z)V

    .line 488
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->beginElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 489
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawBackground(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 490
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawBorder(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 491
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 492
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawPositionedChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 493
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->endElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 495
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 496
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyRelativePositioningTranslation(Z)V

    .line 499
    :cond_1
    iput-boolean v1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->flushed:Z

    .line 500
    return-void
.end method

.method public drawBackground(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 10
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 529
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/Background;

    .line 530
    .local v0, "background":Lcom/itextpdf/layout/property/Background;
    const/16 v1, 0x5a

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    .line 532
    .local v2, "uncastedBackgroundImage":Ljava/lang/Object;
    instance-of v3, v2, Lcom/itextpdf/layout/property/BackgroundImage;

    if-eqz v3, :cond_0

    .line 533
    move-object v1, v2

    check-cast v1, Lcom/itextpdf/layout/property/BackgroundImage;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .local v1, "backgroundImagesList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/property/BackgroundImage;>;"
    goto :goto_0

    .line 535
    .end local v1    # "backgroundImagesList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/property/BackgroundImage;>;"
    :cond_0
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 537
    .restart local v1    # "backgroundImagesList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/property/BackgroundImage;>;"
    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_8

    .line 538
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    .line 539
    .local v3, "bBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->isTaggingEnabled()Z

    move-result v4

    .line 540
    .local v4, "isTagged":Z
    if-eqz v4, :cond_2

    .line 541
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;

    invoke-direct {v6}, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;-><init>()V

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 543
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBackgroundArea(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    .line 544
    .local v6, "backgroundArea":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-lez v7, :cond_6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_3

    goto :goto_1

    .line 549
    :cond_3
    const/4 v5, 0x0

    .line 550
    .local v5, "backgroundAreaIsClipped":Z
    if-eqz v0, :cond_4

    .line 552
    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    .line 553
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/Background;->getBackgroundClip()Lcom/itextpdf/layout/property/BackgroundBox;

    move-result-object v8

    .line 552
    invoke-direct {p0, v7, v8}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBackgroundBoxProperty(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/property/BackgroundBox;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    .line 554
    .local v7, "clippedBackgroundArea":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {p0, p1, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->clipBackgroundArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)Z

    move-result v5

    .line 555
    invoke-direct {p0, v0, p1, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawColorBackground(Lcom/itextpdf/layout/property/Background;Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 557
    .end local v7    # "clippedBackgroundArea":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_4
    if-eqz v1, :cond_5

    .line 558
    invoke-direct {p0, v1, v5, p1, v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawBackgroundImagesList(Ljava/util/List;ZLcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)Z

    move-result v5

    .line 561
    :cond_5
    if-eqz v5, :cond_7

    .line 562
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_2

    .line 545
    .end local v5    # "backgroundAreaIsClipped":Z
    :cond_6
    :goto_1
    const-class v7, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {v7}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v7

    .line 546
    .local v7, "logger":Lorg/slf4j/Logger;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "background"

    aput-object v9, v8, v5

    const-string v5, "The {0} rectangle has negative or zero sizes. It will not be displayed."

    invoke-static {v5, v8}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 548
    .end local v7    # "logger":Lorg/slf4j/Logger;
    nop

    .line 565
    :cond_7
    :goto_2
    if-eqz v4, :cond_8

    .line 566
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closeTag()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 569
    .end local v3    # "bBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v4    # "isTagged":Z
    .end local v6    # "backgroundArea":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_8
    return-void
.end method

.method public drawBorder(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 48
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 1061
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v1

    .line 1062
    .local v1, "borders":[Lcom/itextpdf/layout/borders/Border;
    const/4 v2, 0x0

    .line 1064
    .local v2, "gotBorders":Z
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_2

    aget-object v7, v1, v5

    .line 1065
    .local v7, "border":Lcom/itextpdf/layout/borders/Border;
    if-nez v2, :cond_1

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    move v6, v4

    :cond_1
    :goto_1
    move v2, v6

    .line 1064
    .end local v7    # "border":Lcom/itextpdf/layout/borders/Border;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1067
    :cond_2
    if-eqz v2, :cond_18

    .line 1068
    aget-object v3, v1, v4

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    aget-object v3, v1, v4

    invoke-virtual {v3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v3

    move v14, v3

    goto :goto_2

    :cond_3
    move v14, v5

    .line 1069
    .local v14, "topWidth":F
    :goto_2
    aget-object v3, v1, v6

    if-eqz v3, :cond_4

    aget-object v3, v1, v6

    invoke-virtual {v3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v3

    move/from16 v24, v3

    goto :goto_3

    :cond_4
    move/from16 v24, v5

    .line 1070
    .local v24, "rightWidth":F
    :goto_3
    const/4 v3, 0x2

    aget-object v7, v1, v3

    if-eqz v7, :cond_5

    aget-object v7, v1, v3

    invoke-virtual {v7}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v7

    move v15, v7

    goto :goto_4

    :cond_5
    move v15, v5

    .line 1071
    .local v15, "bottomWidth":F
    :goto_4
    const/16 v25, 0x3

    aget-object v7, v1, v25

    if-eqz v7, :cond_6

    aget-object v7, v1, v25

    invoke-virtual {v7}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v7

    move/from16 v23, v7

    goto :goto_5

    :cond_6
    move/from16 v23, v5

    .line 1073
    .local v23, "leftWidth":F
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorderAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v26

    .line 1074
    .local v26, "bBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v7

    cmpg-float v7, v7, v5

    if-ltz v7, :cond_17

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    cmpg-float v7, v7, v5

    if-gez v7, :cond_7

    goto/16 :goto_f

    .line 1079
    :cond_7
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v40

    .line 1080
    .local v40, "x1":F
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v41

    .line 1081
    .local v41, "y1":F
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v7

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v8

    add-float v42, v7, v8

    .line 1082
    .local v42, "x2":F
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v7

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    add-float v43, v7, v8

    .line 1084
    .local v43, "y2":F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->isTaggingEnabled()Z

    move-result v44

    .line 1085
    .local v44, "isTagged":Z
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v13

    .line 1086
    .local v13, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    if-eqz v44, :cond_8

    .line 1087
    new-instance v7, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;

    invoke-direct {v7}, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;-><init>()V

    invoke-virtual {v13, v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1090
    :cond_8
    iget-object v7, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMargins()[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v8

    invoke-virtual {v0, v7, v8, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v12

    .line 1091
    .local v12, "borderRect":Lcom/itextpdf/kernel/geom/Rectangle;
    move-object/from16 v11, p1

    invoke-virtual {v0, v11, v12}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->clipBorderArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)Z

    move-result v45

    .line 1092
    .local v45, "isAreaClipped":Z
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorderRadii()[Lcom/itextpdf/layout/property/BorderRadius;

    move-result-object v10

    .line 1093
    .local v10, "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    invoke-direct {v0, v10, v12, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculateRadii([Lcom/itextpdf/layout/property/BorderRadius;Lcom/itextpdf/kernel/geom/Rectangle;Z)[F

    move-result-object v46

    .line 1094
    .local v46, "verticalRadii":[F
    invoke-direct {v0, v10, v12, v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculateRadii([Lcom/itextpdf/layout/property/BorderRadius;Lcom/itextpdf/kernel/geom/Rectangle;Z)[F

    move-result-object v47

    .line 1095
    .local v47, "horizontalRadii":[F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6
    const/4 v8, 0x4

    if-ge v7, v8, :cond_9

    .line 1096
    aget v8, v46, v7

    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v9

    const/high16 v16, 0x40000000    # 2.0f

    div-float v9, v9, v16

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v46, v7

    .line 1097
    aget v8, v47, v7

    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v9

    div-float v9, v9, v16

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v47, v7

    .line 1095
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1099
    .end local v7    # "i":I
    :cond_9
    aget-object v7, v1, v4

    if-eqz v7, :cond_c

    .line 1100
    aget v7, v47, v4

    cmpl-float v7, v5, v7

    if-nez v7, :cond_b

    aget v7, v46, v4

    cmpl-float v7, v5, v7

    if-nez v7, :cond_b

    aget v7, v47, v6

    cmpl-float v7, v5, v7

    if-nez v7, :cond_b

    aget v7, v46, v6

    cmpl-float v7, v5, v7

    if-eqz v7, :cond_a

    goto :goto_7

    .line 1103
    :cond_a
    aget-object v16, v1, v4

    sget-object v22, Lcom/itextpdf/layout/borders/Border$Side;->TOP:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v17, v13

    move/from16 v18, v40

    move/from16 v19, v43

    move/from16 v20, v42

    move/from16 v21, v43

    invoke-virtual/range {v16 .. v24}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_8

    .line 1101
    :cond_b
    :goto_7
    aget-object v27, v1, v4

    aget v33, v47, v4

    aget v34, v46, v4

    aget v35, v47, v6

    aget v36, v46, v6

    sget-object v37, Lcom/itextpdf/layout/borders/Border$Side;->TOP:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v28, v13

    move/from16 v29, v40

    move/from16 v30, v43

    move/from16 v31, v42

    move/from16 v32, v43

    move/from16 v38, v23

    move/from16 v39, v24

    invoke-virtual/range {v27 .. v39}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 1106
    :cond_c
    :goto_8
    aget-object v7, v1, v6

    if-eqz v7, :cond_f

    .line 1107
    aget v7, v47, v6

    cmpl-float v7, v5, v7

    if-nez v7, :cond_e

    aget v7, v46, v6

    cmpl-float v7, v5, v7

    if-nez v7, :cond_e

    aget v7, v47, v3

    cmpl-float v7, v5, v7

    if-nez v7, :cond_e

    aget v7, v46, v3

    cmpl-float v7, v5, v7

    if-eqz v7, :cond_d

    move-object/from16 v16, v10

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    goto :goto_9

    .line 1110
    :cond_d
    aget-object v7, v1, v6

    sget-object v6, Lcom/itextpdf/layout/borders/Border$Side;->RIGHT:Lcom/itextpdf/layout/borders/Border$Side;

    move-object v8, v13

    move/from16 v9, v42

    move-object/from16 v16, v10

    .end local v10    # "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    .local v16, "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    move/from16 v10, v43

    move/from16 v11, v42

    move-object/from16 v17, v12

    .end local v12    # "borderRect":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v17, "borderRect":Lcom/itextpdf/kernel/geom/Rectangle;
    move/from16 v12, v41

    move-object/from16 v18, v13

    .end local v13    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .local v18, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    move-object v13, v6

    invoke-virtual/range {v7 .. v15}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_a

    .line 1107
    .end local v16    # "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    .end local v17    # "borderRect":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v18    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .restart local v10    # "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    .restart local v12    # "borderRect":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v13    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :cond_e
    move-object/from16 v16, v10

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    .line 1108
    .end local v10    # "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    .end local v12    # "borderRect":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v13    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .restart local v16    # "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    .restart local v17    # "borderRect":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v18    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :goto_9
    aget-object v27, v1, v6

    aget v33, v47, v6

    aget v34, v46, v6

    aget v35, v47, v3

    aget v36, v46, v3

    sget-object v37, Lcom/itextpdf/layout/borders/Border$Side;->RIGHT:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v28, v18

    move/from16 v29, v42

    move/from16 v30, v43

    move/from16 v31, v42

    move/from16 v32, v41

    move/from16 v38, v14

    move/from16 v39, v15

    invoke-virtual/range {v27 .. v39}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_a

    .line 1106
    .end local v16    # "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    .end local v17    # "borderRect":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v18    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .restart local v10    # "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    .restart local v12    # "borderRect":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v13    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :cond_f
    move-object/from16 v16, v10

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    .line 1113
    .end local v10    # "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    .end local v12    # "borderRect":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v13    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .restart local v16    # "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    .restart local v17    # "borderRect":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v18    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :goto_a
    aget-object v6, v1, v3

    if-eqz v6, :cond_12

    .line 1114
    aget v6, v47, v3

    cmpl-float v6, v5, v6

    if-nez v6, :cond_11

    aget v6, v46, v3

    cmpl-float v6, v5, v6

    if-nez v6, :cond_11

    aget v6, v47, v25

    cmpl-float v6, v5, v6

    if-nez v6, :cond_11

    aget v6, v46, v25

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_10

    goto :goto_b

    .line 1117
    :cond_10
    aget-object v27, v1, v3

    sget-object v33, Lcom/itextpdf/layout/borders/Border$Side;->BOTTOM:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v28, v18

    move/from16 v29, v42

    move/from16 v30, v41

    move/from16 v31, v40

    move/from16 v32, v41

    move/from16 v34, v24

    move/from16 v35, v23

    invoke-virtual/range {v27 .. v35}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_c

    .line 1115
    :cond_11
    :goto_b
    aget-object v27, v1, v3

    aget v33, v47, v3

    aget v34, v46, v3

    aget v35, v47, v25

    aget v36, v46, v25

    sget-object v37, Lcom/itextpdf/layout/borders/Border$Side;->BOTTOM:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v28, v18

    move/from16 v29, v42

    move/from16 v30, v41

    move/from16 v31, v40

    move/from16 v32, v41

    move/from16 v38, v24

    move/from16 v39, v23

    invoke-virtual/range {v27 .. v39}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 1120
    :cond_12
    :goto_c
    aget-object v3, v1, v25

    if-eqz v3, :cond_15

    .line 1121
    aget v3, v47, v25

    cmpl-float v3, v5, v3

    if-nez v3, :cond_14

    aget v3, v46, v25

    cmpl-float v3, v5, v3

    if-nez v3, :cond_14

    aget v3, v47, v4

    cmpl-float v3, v5, v3

    if-nez v3, :cond_14

    aget v3, v46, v4

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_13

    goto :goto_d

    .line 1124
    :cond_13
    aget-object v27, v1, v25

    sget-object v33, Lcom/itextpdf/layout/borders/Border$Side;->LEFT:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v28, v18

    move/from16 v29, v40

    move/from16 v30, v41

    move/from16 v31, v40

    move/from16 v32, v43

    move/from16 v34, v15

    move/from16 v35, v14

    invoke-virtual/range {v27 .. v35}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_e

    .line 1122
    :cond_14
    :goto_d
    aget-object v27, v1, v25

    aget v33, v47, v25

    aget v34, v46, v25

    aget v35, v47, v4

    aget v36, v46, v4

    sget-object v37, Lcom/itextpdf/layout/borders/Border$Side;->LEFT:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v28, v18

    move/from16 v29, v40

    move/from16 v30, v41

    move/from16 v31, v40

    move/from16 v32, v43

    move/from16 v38, v15

    move/from16 v39, v14

    invoke-virtual/range {v27 .. v39}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 1128
    :cond_15
    :goto_e
    if-eqz v45, :cond_16

    .line 1129
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1132
    :cond_16
    if-eqz v44, :cond_18

    .line 1133
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closeTag()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_10

    .line 1075
    .end local v16    # "borderRadii":[Lcom/itextpdf/layout/property/BorderRadius;
    .end local v17    # "borderRect":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v18    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .end local v40    # "x1":F
    .end local v41    # "y1":F
    .end local v42    # "x2":F
    .end local v43    # "y2":F
    .end local v44    # "isTagged":Z
    .end local v45    # "isAreaClipped":Z
    .end local v46    # "verticalRadii":[F
    .end local v47    # "horizontalRadii":[F
    :cond_17
    :goto_f
    const-class v3, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 1076
    .local v3, "logger":Lorg/slf4j/Logger;
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "border"

    aput-object v6, v5, v4

    const-string v4, "The {0} rectangle has negative size. It will not be displayed."

    invoke-static {v4, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1077
    return-void

    .line 1137
    .end local v3    # "logger":Lorg/slf4j/Logger;
    .end local v14    # "topWidth":F
    .end local v15    # "bottomWidth":F
    .end local v23    # "leftWidth":F
    .end local v24    # "rightWidth":F
    .end local v26    # "bBox":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_18
    :goto_10
    return-void
.end method

.method public drawChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 7
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 1038
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    .local v0, "waitingRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1040
    .local v2, "child":Lcom/itextpdf/layout/renderer/IRenderer;
    const/16 v3, 0x35

    invoke-interface {v2, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/property/Transform;

    .line 1041
    .local v3, "transformProp":Lcom/itextpdf/layout/property/Transform;
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getRootRenderer()Lcom/itextpdf/layout/renderer/RootRenderer;

    move-result-object v4

    .line 1042
    .local v4, "rootRenderer":Lcom/itextpdf/layout/renderer/RootRenderer;
    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingDrawingElements:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingDrawingElements:Ljava/util/List;

    goto :goto_1

    :cond_0
    move-object v5, v0

    .line 1043
    .local v5, "waiting":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :goto_1
    invoke-static {v2, v3, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->processWaitingDrawing(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/property/Transform;Ljava/util/List;)V

    .line 1044
    invoke-static {v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v3, :cond_1

    .line 1045
    invoke-interface {v2, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1047
    .end local v2    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v3    # "transformProp":Lcom/itextpdf/layout/property/Transform;
    .end local v4    # "rootRenderer":Lcom/itextpdf/layout/renderer/RootRenderer;
    .end local v5    # "waiting":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :cond_1
    goto :goto_0

    .line 1048
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1049
    .local v2, "waitingRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-interface {v2, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1050
    .end local v2    # "waitingRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_2

    .line 1051
    :cond_3
    return-void
.end method

.method drawPositionedChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 2
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 2363
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2364
    .local v1, "positionedChild":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-interface {v1, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 2365
    .end local v1    # "positionedChild":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_0

    .line 2366
    :cond_0
    return-void
.end method

.method protected endElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 3
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 516
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    .line 517
    .local v0, "opacity":Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 518
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 520
    :cond_0
    return-void
.end method

.method protected endTransformationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2558
    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2559
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2561
    :cond_0
    return-void
.end method

.method protected getBackgroundArea(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0
    .param p1, "occupiedAreaWithMargins"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 751
    return-object p1
.end method

.method public getBorderAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 2

    .line 1210
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 1211
    .local v0, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1212
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1213
    return-object v0
.end method

.method protected getBorderRadii()[Lcom/itextpdf/layout/property/BorderRadius;
    .locals 1

    .line 2169
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorderRadii(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/property/BorderRadius;

    move-result-object v0

    return-object v0
.end method

.method protected getBorders()[Lcom/itextpdf/layout/borders/Border;
    .locals 1

    .line 2157
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorders(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    return-object v0
.end method

.method public getChildRenderers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    return-object v0
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

    .line 369
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFirstYLineRecursively()Ljava/lang/Float;
    .locals 2

    .line 1687
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1688
    const/4 v0, 0x0

    return-object v0

    .line 1690
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getFirstYLineRecursively()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getInnerAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 2

    .line 1217
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 1218
    .local v0, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1219
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1220
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1221
    return-object v0
.end method

.method protected getLastYLineRecursively()Ljava/lang/Float;
    .locals 4

    .line 1694
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->allowLastYLineRecursiveExtraction()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1695
    return-object v1

    .line 1697
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1698
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1699
    .local v2, "child":Lcom/itextpdf/layout/renderer/IRenderer;
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v3, :cond_1

    .line 1700
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getLastYLineRecursively()Ljava/lang/Float;

    move-result-object v3

    .line 1701
    .local v3, "lastYLine":Ljava/lang/Float;
    if-eqz v3, :cond_1

    .line 1702
    return-object v3

    .line 1697
    .end local v2    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v3    # "lastYLine":Ljava/lang/Float;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1706
    .end local v0    # "i":I
    :cond_2
    return-object v1
.end method

.method protected getMargins()[Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 1753
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMargins(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    return-object v0
.end method

.method public getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 1

    .line 2050
    invoke-static {p0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->countDefaultMinMaxWidth(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    return-object v0
.end method

.method public getModelElement()Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    return-object v0
.end method

.method public getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 1200
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method protected getOwnProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1672
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getOwnProperty(I)Ljava/lang/Object;
    .locals 2
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getPaddings()[Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 1762
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPaddings(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 1165
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "property":Ljava/lang/Object;
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    invoke-interface {v0, p1}, Lcom/itextpdf/layout/IPropertyContainer;->hasProperty(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    :cond_1
    return-object v1

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/itextpdf/layout/property/Property;->isPropertyInherited(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v0, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_3

    .line 330
    return-object v1

    .line 332
    :cond_3
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object v0

    .line 333
    .end local v1    # "property":Ljava/lang/Object;
    .local v0, "property":Ljava/lang/Object;
    if-eqz v0, :cond_4

    .line 334
    return-object v0

    .line 336
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    if-eqz v1, :cond_5

    invoke-interface {v1, p1}, Lcom/itextpdf/layout/IPropertyContainer;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 323
    .end local v0    # "property":Ljava/lang/Object;
    .restart local v1    # "property":Ljava/lang/Object;
    :cond_6
    :goto_1
    return-object v1
.end method

.method public getProperty(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(ITT1;)TT1;"
        }
    .end annotation

    .line 352
    .local p2, "defaultValue":Ljava/lang/Object;, "TT1;"
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    .line 353
    .local v0, "result":Ljava/lang/Object;, "TT1;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public getPropertyAsBoolean(I)Ljava/lang/Boolean;
    .locals 1
    .param p1, "property"    # I

    .line 430
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPropertyAsColor(I)Lcom/itextpdf/kernel/colors/Color;
    .locals 1
    .param p1, "property"    # I

    .line 389
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/colors/Color;

    return-object v0
.end method

.method public getPropertyAsFloat(I)Ljava/lang/Float;
    .locals 1
    .param p1, "property"    # I

    .line 409
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/util/NumberUtil;->asFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyAsFloat(ILjava/lang/Float;)Ljava/lang/Float;
    .locals 1
    .param p1, "property"    # I
    .param p2, "defaultValue"    # Ljava/lang/Float;

    .line 420
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/util/NumberUtil;->asFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyAsFont(I)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p1, "property"    # I

    .line 379
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/font/PdfFont;

    return-object v0
.end method

.method public getPropertyAsInteger(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "property"    # I

    .line 450
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/util/NumberUtil;->asInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyAsTransparentColor(I)Lcom/itextpdf/layout/property/TransparentColor;
    .locals 1
    .param p1, "property"    # I

    .line 399
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/TransparentColor;

    return-object v0
.end method

.method public getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;
    .locals 1
    .param p1, "property"    # I

    .line 440
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method getRootRenderer()Lcom/itextpdf/layout/renderer/RootRenderer;
    .locals 2

    .line 2310
    move-object v0, p0

    .line 2311
    .local v0, "currentRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    :goto_0
    instance-of v1, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v1, :cond_1

    .line 2312
    instance-of v1, v0, Lcom/itextpdf/layout/renderer/RootRenderer;

    if-eqz v1, :cond_0

    .line 2313
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/layout/renderer/RootRenderer;

    return-object v1

    .line 2315
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    goto :goto_0

    .line 2317
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected hasAbsoluteUnitValue(I)Z
    .locals 2
    .param p1, "property"    # I

    .line 2277
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    .line 2278
    .local v0, "value":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasOwnOrModelProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    .line 289
    invoke-static {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnOrModelProperty(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result v0

    return v0
.end method

.method public hasOwnProperty(I)Z
    .locals 2
    .param p1, "property"    # I

    .line 278
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    .line 268
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnProperty(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0, p1}, Lcom/itextpdf/layout/IPropertyContainer;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_1

    .line 270
    invoke-static {p1}, Lcom/itextpdf/layout/property/Property;->isPropertyInherited(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v0, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->hasProperty(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 268
    :goto_1
    return v0
.end method

.method protected hasRelativeUnitValue(I)Z
    .locals 2
    .param p1, "property"    # I

    .line 2288
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    .line 2289
    .local v0, "value":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public initElementAreas(Lcom/itextpdf/layout/layout/LayoutArea;)Ljava/util/List;
    .locals 1
    .param p1, "area"    # Lcom/itextpdf/layout/layout/LayoutArea;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/layout/LayoutArea;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;"
        }
    .end annotation

    .line 1190
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isAbsolutePosition()Z
    .locals 2

    .line 2109
    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2110
    .local v0, "positioning":Ljava/lang/Integer;
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isFirstOnRootArea()Z
    .locals 1

    .line 1281
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isFirstOnRootArea(Z)Z

    move-result v0

    return v0
.end method

.method isFirstOnRootArea(Z)Z
    .locals 5
    .param p1, "checkRootAreaOnly"    # Z

    .line 2293
    const/4 v0, 0x1

    .line 2294
    .local v0, "isFirstOnRootArea":Z
    move-object v1, p0

    .line 2295
    .local v1, "ancestor":Lcom/itextpdf/layout/renderer/IRenderer;
    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2296
    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    .line 2297
    .local v2, "parent":Lcom/itextpdf/layout/renderer/IRenderer;
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/RootRenderer;

    if-eqz v3, :cond_0

    .line 2298
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/renderer/RootRenderer;

    iget-object v3, v3, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/RootLayoutArea;->isEmptyArea()Z

    move-result v0

    goto :goto_2

    .line 2299
    :cond_0
    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2300
    goto :goto_3

    .line 2301
    :cond_1
    if-nez p1, :cond_3

    .line 2302
    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    const v4, 0x38d1b717    # 1.0E-4f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    move v0, v3

    .line 2304
    :cond_3
    :goto_2
    move-object v1, v2

    .line 2305
    .end local v2    # "parent":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_0

    .line 2306
    :cond_4
    :goto_3
    return v0
.end method

.method protected isFixedLayout()Z
    .locals 2

    .line 2094
    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    .line 2095
    .local v0, "positioning":Ljava/lang/Object;
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isFlushed()Z
    .locals 1

    .line 1148
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->flushed:Z

    return v0
.end method

.method protected isKeepTogether()Z
    .locals 1

    .line 2114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isKeepTogether(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    return v0
.end method

.method isKeepTogether(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 2
    .param p1, "causeOfNothing"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2118
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/itextpdf/layout/renderer/AreaBreakRenderer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isNotFittingHeight(Lcom/itextpdf/layout/layout/LayoutArea;)Z
    .locals 2
    .param p1, "layoutArea"    # Lcom/itextpdf/layout/layout/LayoutArea;

    .line 2068
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isPositioned()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isNotFittingLayoutArea(Lcom/itextpdf/layout/layout/LayoutArea;)Z
    .locals 1
    .param p1, "layoutArea"    # Lcom/itextpdf/layout/layout/LayoutArea;

    .line 2076
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isNotFittingHeight(Lcom/itextpdf/layout/layout/LayoutArea;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isNotFittingWidth(Lcom/itextpdf/layout/layout/LayoutArea;)Z

    move-result v0

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

.method protected isNotFittingWidth(Lcom/itextpdf/layout/layout/LayoutArea;)Z
    .locals 2
    .param p1, "layoutArea"    # Lcom/itextpdf/layout/layout/LayoutArea;

    .line 2072
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isPositioned()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isOverflowProperty(Lcom/itextpdf/layout/property/OverflowPropertyValue;I)Z
    .locals 1
    .param p1, "equalsTo"    # Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .param p2, "overflowProperty"    # I

    .line 1296
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/OverflowPropertyValue;

    invoke-static {p1, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isOverflowProperty(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v0

    return v0
.end method

.method protected isPositioned()Z
    .locals 1

    .line 2085
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isStaticLayout()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected isRelativePosition()Z
    .locals 2

    .line 2104
    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2105
    .local v0, "positioning":Ljava/lang/Integer;
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected isStaticLayout()Z
    .locals 3

    .line 2099
    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    .line 2100
    .local v0, "positioning":Ljava/lang/Object;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public move(FF)V
    .locals 2
    .param p1, "dxRight"    # F
    .param p2, "dyUp"    # F

    .line 1173
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1174
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1175
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1176
    .local v1, "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-interface {v1, p1, p2}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 1177
    .end local v1    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_0

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1179
    .restart local v1    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-interface {v1, p1, p2}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 1180
    .end local v1    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_1

    .line 1181
    :cond_1
    return-void
.end method

.method preparePositionedRendererAndAreaForLayout(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 6
    .param p1, "childPositionedRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "fullBbox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "parentBbox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2461
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Float;

    move-result-object v0

    .line 2462
    .local v0, "left":Ljava/lang/Float;
    const/16 v1, 0x36

    invoke-static {p1, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Float;

    move-result-object v1

    .line 2463
    .local v1, "right":Ljava/lang/Float;
    const/16 v2, 0x49

    invoke-static {p1, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Float;

    move-result-object v2

    .line 2464
    .local v2, "top":Ljava/lang/Float;
    const/16 v3, 0xe

    invoke-static {p1, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Float;

    move-result-object v3

    .line 2465
    .local v3, "bottom":Ljava/lang/Float;
    invoke-interface {p1, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2466
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->adjustPositionedRendererLayoutBoxWidth(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 2468
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x34

    invoke-interface {p1, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2469
    invoke-direct {p0, p1, p3, v2, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->updateMinHeightForAbsolutelyPositionedRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 2471
    :cond_0
    return-void
.end method

.method protected rectangleToPointsList(Lcom/itextpdf/kernel/geom/Rectangle;)Ljava/util/List;
    .locals 1
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation

    .line 2236
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->toPointsArray()[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method removeAllChildRenderers(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;)Z"
        }
    .end annotation

    .line 2638
    .local p1, "children":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->removeThisFromParents(Ljava/util/Collection;)V

    .line 2639
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method removeChildRenderer(I)Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1
    .param p1, "index"    # I

    .line 2624
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2625
    .local v0, "removed":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->removeThisFromParent(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 2626
    return-object v0
.end method

.method resolveFirstPdfFont()Lcom/itextpdf/kernel/font/PdfFont;
    .locals 5

    .line 2390
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    .line 2391
    .local v0, "font":Ljava/lang/Object;
    instance-of v1, v0, Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v1, :cond_0

    .line 2392
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/font/PdfFont;

    return-object v1

    .line 2393
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_2

    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2411
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "String[] or PdfFont expected as value of FONT property"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2394
    :cond_2
    :goto_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2395
    const-class v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 2396
    .local v1, "logger":Lorg/slf4j/Logger;
    const-string v2, "The \"Property.FONT\" property with values of String type is deprecated, use String[] as property value type instead."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 2397
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/itextpdf/layout/font/FontFamilySplitter;->splitFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 2398
    .local v2, "splitFontFamily":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 2400
    .end local v1    # "logger":Lorg/slf4j/Logger;
    .end local v2    # "splitFontFamily":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/font/FontProvider;

    .line 2401
    .local v1, "provider":Lcom/itextpdf/layout/font/FontProvider;
    const-string v2, "FontProvider and FontSet are empty. Cannot resolve font family name (see ElementPropertyContainer#setFontFamily) without initialized FontProvider (see RootElement#setFontProvider)."

    if-eqz v1, :cond_6

    .line 2404
    const/16 v3, 0x62

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/font/FontSet;

    .line 2405
    .local v3, "fontSet":Lcom/itextpdf/layout/font/FontSet;
    invoke-virtual {v1}, Lcom/itextpdf/layout/font/FontProvider;->getFontSet()Lcom/itextpdf/layout/font/FontSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/font/FontSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/itextpdf/layout/font/FontSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 2406
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2408
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->createFontCharacteristics()Lcom/itextpdf/layout/font/FontCharacteristics;

    move-result-object v2

    .line 2409
    .local v2, "fc":Lcom/itextpdf/layout/font/FontCharacteristics;
    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->resolveFirstPdfFont([Ljava/lang/String;Lcom/itextpdf/layout/font/FontProvider;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v4

    return-object v4

    .line 2402
    .end local v2    # "fc":Lcom/itextpdf/layout/font/FontCharacteristics;
    .end local v3    # "fontSet":Lcom/itextpdf/layout/font/FontSet;
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method resolveFirstPdfFont([Ljava/lang/String;Lcom/itextpdf/layout/font/FontProvider;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 2
    .param p1, "font"    # [Ljava/lang/String;
    .param p2, "provider"    # Lcom/itextpdf/layout/font/FontProvider;
    .param p3, "fc"    # Lcom/itextpdf/layout/font/FontCharacteristics;
    .param p4, "additionalFonts"    # Lcom/itextpdf/layout/font/FontSet;

    .line 2425
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0, p3, p4}, Lcom/itextpdf/layout/font/FontProvider;->getFontSelector(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontSelector;

    move-result-object v0

    .line 2426
    .local v0, "fontSelector":Lcom/itextpdf/layout/font/FontSelector;
    invoke-virtual {v0}, Lcom/itextpdf/layout/font/FontSelector;->bestMatch()Lcom/itextpdf/layout/font/FontInfo;

    move-result-object v1

    invoke-virtual {p2, v1, p4}, Lcom/itextpdf/layout/font/FontProvider;->getPdfFont(Lcom/itextpdf/layout/font/FontInfo;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    return-object v1
.end method

.method protected retrieveHeight()Ljava/lang/Float;
    .locals 9

    .line 1450
    const/4 v0, 0x0

    .line 1451
    .local v0, "height":Ljava/lang/Float;
    const/16 v1, 0x1b

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v2

    .line 1452
    .local v2, "heightUV":Lcom/itextpdf/layout/property/UnitValue;
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveResolvedParentDeclaredHeight()Ljava/lang/Float;

    move-result-object v3

    .line 1453
    .local v3, "parentResolvedHeight":Ljava/lang/Float;
    const/4 v4, 0x0

    .line 1454
    .local v4, "minHeight":Ljava/lang/Float;
    const/4 v5, 0x0

    .line 1455
    .local v5, "maxHeight":Ljava/lang/Float;
    if-eqz v2, :cond_9

    .line 1456
    const/16 v6, 0x54

    const/16 v7, 0x55

    if-nez v3, :cond_3

    .line 1457
    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1459
    const/4 v0, 0x0

    goto :goto_0

    .line 1462
    :cond_0
    invoke-virtual {p0, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v1

    .line 1463
    .local v1, "minHeightUV":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1464
    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 1466
    :cond_1
    invoke-virtual {p0, v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v6

    .line 1467
    .local v6, "maxHeightUV":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1468
    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 1471
    :cond_2
    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1472
    .end local v1    # "minHeightUV":Lcom/itextpdf/layout/property/UnitValue;
    .end local v6    # "maxHeightUV":Lcom/itextpdf/layout/property/UnitValue;
    goto :goto_0

    .line 1474
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {p0, v8, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v4

    .line 1475
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {p0, v7, v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v5

    .line 1476
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {p0, v6, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v0

    .line 1478
    :goto_0
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v1, v1, v6

    if-lez v1, :cond_4

    .line 1479
    move-object v1, v4

    move-object v5, v1

    .line 1481
    :cond_4
    if-eqz v0, :cond_8

    .line 1482
    if-eqz v5, :cond_6

    .line 1483
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v1, v1, v6

    if-lez v1, :cond_5

    move-object v1, v5

    goto :goto_1

    :cond_5
    move-object v1, v0

    :goto_1
    move-object v0, v1

    .line 1485
    :cond_6
    if-eqz v4, :cond_8

    .line 1486
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpg-float v1, v1, v6

    if-gez v1, :cond_7

    move-object v1, v4

    goto :goto_2

    :cond_7
    move-object v1, v0

    :goto_2
    move-object v0, v1

    .line 1489
    :cond_8
    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1490
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderHeight(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v6

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1493
    :cond_9
    if-eqz v0, :cond_a

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :goto_3
    return-object v1
.end method

.method protected retrieveMaxHeight()Ljava/lang/Float;
    .locals 6

    .line 1549
    const/4 v0, 0x0

    .local v0, "maxHeight":Ljava/lang/Float;
    const/4 v1, 0x0

    .line 1550
    .local v1, "minHeight":Ljava/lang/Float;
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveDirectParentDeclaredHeight()Ljava/lang/Float;

    move-result-object v2

    .line 1551
    .local v2, "directParentDeclaredHeight":Ljava/lang/Float;
    const/16 v3, 0x54

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v4

    .line 1552
    .local v4, "maxHeightAsUV":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v4, :cond_6

    .line 1553
    if-nez v2, :cond_2

    .line 1554
    invoke-virtual {v4}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1555
    const/4 v0, 0x0

    goto :goto_0

    .line 1557
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveMinHeight()Ljava/lang/Float;

    move-result-object v1

    .line 1559
    const/16 v3, 0x55

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v3

    .line 1560
    .local v3, "minHeightUV":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1561
    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1564
    :cond_1
    invoke-virtual {v4}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1565
    .end local v3    # "minHeightUV":Lcom/itextpdf/layout/property/UnitValue;
    goto :goto_0

    .line 1567
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {p0, v5, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v0

    .line 1569
    :goto_0
    if-eqz v0, :cond_6

    .line 1570
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    .line 1571
    move-object v0, v1

    .line 1573
    :cond_3
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1574
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderHeight(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1576
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :cond_5
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    return-object v3

    .line 1580
    :cond_6
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveHeight()Ljava/lang/Float;

    move-result-object v3

    return-object v3
.end method

.method protected retrieveMaxWidth(F)Ljava/lang/Float;
    .locals 4
    .param p1, "parentBoxWidth"    # F

    .line 1391
    const/16 v0, 0x4f

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v0

    .line 1392
    .local v0, "maxWidth":Ljava/lang/Float;
    if-eqz v0, :cond_3

    .line 1393
    const/16 v1, 0x50

    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v1

    .line 1394
    .local v1, "minWidth":Ljava/lang/Float;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1395
    move-object v0, v1

    .line 1398
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1399
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1401
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :cond_2
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    return-object v2

    .line 1403
    .end local v1    # "minWidth":Ljava/lang/Float;
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method protected retrieveMinHeight()Ljava/lang/Float;
    .locals 5

    .line 1606
    const/4 v0, 0x0

    .line 1607
    .local v0, "minHeight":Ljava/lang/Float;
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveDirectParentDeclaredHeight()Ljava/lang/Float;

    move-result-object v1

    .line 1608
    .local v1, "directParentDeclaredHeight":Ljava/lang/Float;
    const/16 v2, 0x55

    invoke-static {p0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(Lcom/itextpdf/layout/renderer/IRenderer;I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v3

    .line 1609
    .local v3, "minHeightUV":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v3, :cond_4

    .line 1610
    if-nez v1, :cond_1

    .line 1611
    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1613
    const/4 v0, 0x0

    goto :goto_0

    .line 1616
    :cond_0
    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 1619
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0, v4, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v0

    .line 1621
    :goto_0
    if-eqz v0, :cond_4

    .line 1622
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1623
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderHeight(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v4

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1625
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :cond_3
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    return-object v2

    .line 1629
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveHeight()Ljava/lang/Float;

    move-result-object v2

    return-object v2
.end method

.method protected retrieveMinWidth(F)Ljava/lang/Float;
    .locals 3
    .param p1, "parentBoxWidth"    # F

    .line 1418
    const/16 v0, 0x50

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v0

    .line 1419
    .local v0, "minWidth":Ljava/lang/Float;
    if-eqz v0, :cond_2

    .line 1420
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1421
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1423
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 1425
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method protected retrieveUnitValue(FI)Ljava/lang/Float;
    .locals 1
    .param p1, "baseValue"    # F
    .param p2, "property"    # I

    .line 1647
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FIZ)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected retrieveUnitValue(FIZ)Ljava/lang/Float;
    .locals 6
    .param p1, "baseValue"    # F
    .param p2, "property"    # I
    .param p3, "pointOnly"    # Z

    .line 1651
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    .line 1652
    .local v0, "value":Lcom/itextpdf/layout/property/UnitValue;
    const/4 v1, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getUnitType()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1653
    const-class v2, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 1654
    .local v2, "logger":Lorg/slf4j/Logger;
    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Property {0} in percents is not supported"

    invoke-static {v4, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1656
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :cond_0
    if-eqz v0, :cond_4

    .line 1657
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getUnitType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1660
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v2

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 1662
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getUnitType()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1663
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 1662
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1666
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method protected retrieveWidth(F)Ljava/lang/Float;
    .locals 6
    .param p1, "parentBoxWidth"    # F

    .line 1354
    const/16 v0, 0x50

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v0

    .line 1356
    .local v0, "minWidth":Ljava/lang/Float;
    const/16 v1, 0x4f

    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v1

    .line 1357
    .local v1, "maxWidth":Ljava/lang/Float;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1358
    move-object v1, v0

    .line 1361
    :cond_0
    const/16 v2, 0x4d

    invoke-virtual {p0, p1, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v2

    .line 1362
    .local v2, "width":Ljava/lang/Float;
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 1363
    if-eqz v1, :cond_2

    .line 1364
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move-object v4, v1

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    move-object v2, v4

    .line 1366
    :cond_2
    if-eqz v0, :cond_6

    .line 1367
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    move-object v4, v0

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    move-object v2, v4

    goto :goto_3

    .line 1369
    :cond_4
    if-eqz v1, :cond_6

    .line 1370
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_5

    move-object v4, v1

    goto :goto_2

    :cond_5
    move-object v4, v3

    :goto_2
    move-object v2, v4

    .line 1373
    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1374
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 1377
    :cond_7
    if-eqz v2, :cond_8

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :cond_8
    return-object v3
.end method

.method protected setBorders(Lcom/itextpdf/layout/borders/Border;I)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 1
    .param p1, "border"    # Lcom/itextpdf/layout/borders/Border;
    .param p2, "borderNumber"    # I

    .line 2173
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2184
    :pswitch_0
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_0

    .line 2181
    :pswitch_1
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 2182
    goto :goto_0

    .line 2178
    :pswitch_2
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 2179
    goto :goto_0

    .line 2175
    :pswitch_3
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 2176
    nop

    .line 2188
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setChildRenderer(ILcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "child"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2652
    if-eqz p2, :cond_0

    .line 2653
    invoke-interface {p2, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2655
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2656
    .local v0, "removedElement":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->removeThisFromParent(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 2657
    return-object v0
.end method

.method setChildRenderers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;)V"
        }
    .end annotation

    .line 2610
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->removeThisFromParents(Ljava/util/Collection;)V

    .line 2611
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2612
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addAllChildRenderers(Ljava/util/List;)V

    .line 2613
    return-void
.end method

.method protected setMinMaxWidthBasedOnFixedWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Z
    .locals 2
    .param p1, "minMaxWidth"    # Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    .line 2055
    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasAbsoluteUnitValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2057
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object v0

    .line 2058
    .local v0, "width":Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 2059
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    .line 2060
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    .line 2061
    const/4 v1, 0x1

    return v1

    .line 2064
    .end local v0    # "width":Ljava/lang/Float;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 0
    .param p1, "parent"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1156
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1157
    return-object p0
.end method

.method public setProperty(ILjava/lang/Object;)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    return-void
.end method

.method setThisAsParent(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;)V"
        }
    .end annotation

    .line 2665
    .local p1, "children":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2666
    .local v1, "child":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-interface {v1, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2667
    .end local v1    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_0

    .line 2668
    :cond_0
    return-void
.end method

.method shrinkOccupiedAreaForAbsolutePosition()V
    .locals 5

    .line 2352
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isAbsolutePosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2353
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    .line 2354
    .local v0, "left":Ljava/lang/Float;
    const/16 v1, 0x36

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    .line 2355
    .local v1, "right":Ljava/lang/Float;
    const/16 v2, 0x4d

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/property/UnitValue;

    .line 2356
    .local v2, "width":Lcom/itextpdf/layout/property/UnitValue;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 2357
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2360
    .end local v0    # "left":Ljava/lang/Float;
    .end local v1    # "right":Ljava/lang/Float;
    .end local v2    # "width":Lcom/itextpdf/layout/property/UnitValue;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 463
    .local v2, "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .end local v2    # "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected transformPoints(Ljava/util/List;Lcom/itextpdf/kernel/geom/AffineTransform;)Ljava/util/List;
    .locals 2
    .param p2, "transform"    # Lcom/itextpdf/kernel/geom/AffineTransform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;",
            "Lcom/itextpdf/kernel/geom/AffineTransform;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation

    .line 2240
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Point;

    .line 2241
    .local v1, "point":Lcom/itextpdf/kernel/geom/Point;
    invoke-virtual {p2, v1, v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    .line 2242
    .end local v1    # "point":Lcom/itextpdf/kernel/geom/Point;
    goto :goto_0

    .line 2244
    :cond_0
    return-object p1
.end method

.method protected updateHeight(Lcom/itextpdf/layout/property/UnitValue;)V
    .locals 2
    .param p1, "updatedHeight"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 1535
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1536
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderHeight(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/property/UnitValue;->setValue(F)V

    .line 1539
    :cond_0
    const/16 v0, 0x1b

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1540
    return-void
.end method

.method updateHeightsOnSplit(FZLcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;Z)V
    .locals 7
    .param p1, "usedHeight"    # F
    .param p2, "wasHeightClipped"    # Z
    .param p3, "splitRenderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .param p4, "overflowRenderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .param p5, "enlargeOccupiedAreaOnHeightWasClipped"    # Z

    .line 1972
    if-eqz p2, :cond_0

    .line 1974
    const-class v0, Lcom/itextpdf/layout/renderer/BlockRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 1975
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "Element content was clipped because some height properties are set."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1977
    if-eqz p5, :cond_0

    .line 1978
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveMaxHeight()Ljava/lang/Float;

    move-result-object v1

    .line 1979
    .local v1, "maxHeight":Ljava/lang/Float;
    iget-object v2, p3, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 1980
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 1981
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1982
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1986
    .end local v0    # "logger":Lorg/slf4j/Logger;
    .end local v1    # "maxHeight":Ljava/lang/Float;
    :cond_0
    if-eqz p4, :cond_8

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isKeepTogether()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 1992
    :cond_1
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveResolvedParentDeclaredHeight()Ljava/lang/Float;

    move-result-object v0

    .line 1993
    .local v0, "parentResolvedHeightPropertyValue":Ljava/lang/Float;
    const/16 v1, 0x54

    invoke-static {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(Lcom/itextpdf/layout/renderer/IRenderer;I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v1

    .line 1994
    .local v1, "maxHeightUV":Lcom/itextpdf/layout/property/UnitValue;
    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v1, :cond_3

    .line 1995
    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1996
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveMaxHeight()Ljava/lang/Float;

    move-result-object v3

    .line 1997
    .local v3, "maxHeight":Ljava/lang/Float;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-static {v4}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v4

    .line 1998
    .local v4, "updateMaxHeight":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {p4, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->updateMaxHeight(Lcom/itextpdf/layout/property/UnitValue;)V

    .end local v3    # "maxHeight":Ljava/lang/Float;
    .end local v4    # "updateMaxHeight":Lcom/itextpdf/layout/property/UnitValue;
    goto :goto_0

    .line 1999
    :cond_2
    if-eqz v0, :cond_3

    .line 2001
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float v3, p1, v3

    mul-float/2addr v3, v2

    .line 2003
    .local v3, "currentOccupiedFraction":F
    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v4

    sub-float/2addr v4, v3

    .line 2005
    .local v4, "newFraction":F
    invoke-static {v4}, Lcom/itextpdf/layout/property/UnitValue;->createPercentValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v5

    invoke-virtual {p4, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->updateMinHeight(Lcom/itextpdf/layout/property/UnitValue;)V

    nop

    .line 2009
    .end local v3    # "currentOccupiedFraction":F
    .end local v4    # "newFraction":F
    :cond_3
    :goto_0
    const/16 v3, 0x55

    invoke-static {p0, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(Lcom/itextpdf/layout/renderer/IRenderer;I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v3

    .line 2010
    .local v3, "minHeightUV":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v3, :cond_5

    .line 2011
    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2012
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveMinHeight()Ljava/lang/Float;

    move-result-object v4

    .line 2013
    .local v4, "minHeight":Ljava/lang/Float;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v5, p1

    invoke-static {v5}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v5

    .line 2014
    .local v5, "updateminHeight":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {p4, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->updateMinHeight(Lcom/itextpdf/layout/property/UnitValue;)V

    .end local v4    # "minHeight":Ljava/lang/Float;
    .end local v5    # "updateminHeight":Lcom/itextpdf/layout/property/UnitValue;
    goto :goto_1

    .line 2015
    :cond_4
    if-eqz v0, :cond_5

    .line 2017
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float v4, p1, v4

    mul-float/2addr v4, v2

    .line 2019
    .local v4, "currentOccupiedFraction":F
    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v5

    sub-float/2addr v5, v4

    .line 2021
    .local v5, "newFraction":F
    invoke-static {v5}, Lcom/itextpdf/layout/property/UnitValue;->createPercentValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->updateMinHeight(Lcom/itextpdf/layout/property/UnitValue;)V

    nop

    .line 2026
    .end local v4    # "currentOccupiedFraction":F
    .end local v5    # "newFraction":F
    :cond_5
    :goto_1
    const/16 v4, 0x1b

    invoke-static {p0, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(Lcom/itextpdf/layout/renderer/IRenderer;I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v4

    .line 2027
    .local v4, "heightUV":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v4, :cond_7

    .line 2028
    invoke-virtual {v4}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2029
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveHeight()Ljava/lang/Float;

    move-result-object v2

    .line 2030
    .local v2, "height":Ljava/lang/Float;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v5, p1

    invoke-static {v5}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v5

    .line 2031
    .local v5, "updateHeight":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {p4, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->updateHeight(Lcom/itextpdf/layout/property/UnitValue;)V

    .end local v2    # "height":Ljava/lang/Float;
    .end local v5    # "updateHeight":Lcom/itextpdf/layout/property/UnitValue;
    goto :goto_2

    .line 2032
    :cond_6
    if-eqz v0, :cond_7

    .line 2034
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    div-float v5, p1, v5

    mul-float/2addr v5, v2

    .line 2036
    .local v5, "currentOccupiedFraction":F
    invoke-virtual {v4}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    sub-float/2addr v2, v5

    .line 2038
    .local v2, "newFraction":F
    invoke-static {v2}, Lcom/itextpdf/layout/property/UnitValue;->createPercentValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->updateMinHeight(Lcom/itextpdf/layout/property/UnitValue;)V

    nop

    .line 2042
    .end local v2    # "newFraction":F
    .end local v5    # "currentOccupiedFraction":F
    :cond_7
    :goto_2
    return-void

    .line 1987
    .end local v0    # "parentResolvedHeightPropertyValue":Ljava/lang/Float;
    .end local v1    # "maxHeightUV":Lcom/itextpdf/layout/property/UnitValue;
    .end local v3    # "minHeightUV":Lcom/itextpdf/layout/property/UnitValue;
    .end local v4    # "heightUV":Lcom/itextpdf/layout/property/UnitValue;
    :cond_8
    :goto_3
    return-void
.end method

.method protected updateHeightsOnSplit(ZLcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;)V
    .locals 7
    .param p1, "wasHeightClipped"    # Z
    .param p2, "splitRenderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .param p3, "overflowRenderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 1968
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->updateHeightsOnSplit(FZLcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;Z)V

    .line 1969
    return-void
.end method

.method protected updateMaxHeight(Lcom/itextpdf/layout/property/UnitValue;)V
    .locals 2
    .param p1, "updatedMaxHeight"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 1591
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1592
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderHeight(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/property/UnitValue;->setValue(F)V

    .line 1595
    :cond_0
    const/16 v0, 0x54

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1596
    return-void
.end method

.method protected updateMinHeight(Lcom/itextpdf/layout/property/UnitValue;)V
    .locals 2
    .param p1, "updatedMinHeight"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 1640
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1641
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderHeight(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/property/UnitValue;->setValue(F)V

    .line 1643
    :cond_0
    const/16 v0, 0x55

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1644
    return-void
.end method

.method protected updateWidth(Lcom/itextpdf/layout/property/UnitValue;)V
    .locals 2
    .param p1, "updatedWidthValue"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 1436
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1437
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/property/UnitValue;->setValue(F)V

    .line 1439
    :cond_0
    const/16 v0, 0x4d

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1440
    return-void
.end method
