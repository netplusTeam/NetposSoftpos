.class public abstract Lcom/itextpdf/layout/renderer/BlockRenderer;
.super Lcom/itextpdf/layout/renderer/AbstractRenderer;
.source "BlockRenderer.java"


# direct methods
.method protected constructor <init>(Lcom/itextpdf/layout/element/IElement;)V
    .locals 0
    .param p1, "modelElement"    # Lcom/itextpdf/layout/element/IElement;

    .line 87
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;-><init>(Lcom/itextpdf/layout/element/IElement;)V

    .line 88
    return-void
.end method

.method private checkPointSide(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)I
    .locals 14
    .param p1, "filteredPoint"    # Lcom/itextpdf/kernel/geom/Point;
    .param p2, "clipLineBeg"    # Lcom/itextpdf/kernel/geom/Point;
    .param p3, "clipLineEnd"    # Lcom/itextpdf/kernel/geom/Point;

    .line 1098
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 1099
    .local v0, "x1":D
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 1101
    .local v2, "y2":D
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 1102
    .local v4, "x2":D
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    .line 1104
    .local v6, "y1":D
    mul-double v8, v0, v2

    mul-double v10, v4, v6

    sub-double/2addr v8, v10

    .line 1106
    .local v8, "sgn":D
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v10, v10, v12

    const/4 v11, 0x0

    if-gez v10, :cond_0

    return v11

    .line 1107
    :cond_0
    const-wide/16 v12, 0x0

    cmpl-double v10, v8, v12

    if-lez v10, :cond_1

    const/4 v10, 0x1

    return v10

    .line 1108
    :cond_1
    cmpg-double v10, v8, v12

    if-gez v10, :cond_2

    const/4 v10, -0x1

    return v10

    .line 1110
    :cond_2
    return v11
.end method

.method private clipPolygon(Ljava/util/List;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Ljava/util/List;
    .locals 6
    .param p2, "clipLineBeg"    # Lcom/itextpdf/kernel/geom/Point;
    .param p3, "clipLineEnd"    # Lcom/itextpdf/kernel/geom/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;",
            "Lcom/itextpdf/kernel/geom/Point;",
            "Lcom/itextpdf/kernel/geom/Point;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation

    .line 1068
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    .local v0, "filteredPoints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    const/4 v1, 0x0

    .line 1071
    .local v1, "prevOnRightSide":Z
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/geom/Point;

    .line 1072
    .local v2, "filteringPoint":Lcom/itextpdf/kernel/geom/Point;
    invoke-direct {p0, v2, p2, p3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->checkPointSide(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1073
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    const/4 v1, 0x1

    .line 1077
    :cond_0
    move-object v3, v2

    .line 1078
    .local v3, "prevPoint":Lcom/itextpdf/kernel/geom/Point;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ge v4, v5, :cond_4

    .line 1079
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    rem-int v5, v4, v5

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lcom/itextpdf/kernel/geom/Point;

    .line 1080
    invoke-direct {p0, v2, p2, p3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->checkPointSide(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 1081
    if-nez v1, :cond_1

    .line 1082
    invoke-direct {p0, v3, v2, p2, p3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1084
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    const/4 v1, 0x1

    goto :goto_1

    .line 1086
    :cond_2
    if-eqz v1, :cond_3

    .line 1087
    invoke-direct {p0, v3, v2, p2, p3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    :cond_3
    :goto_1
    move-object v3, v2

    .line 1078
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1093
    .end local v4    # "i":I
    :cond_4
    return-object v0
.end method

.method private getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;
    .locals 21
    .param p1, "lineBeg"    # Lcom/itextpdf/kernel/geom/Point;
    .param p2, "lineEnd"    # Lcom/itextpdf/kernel/geom/Point;
    .param p3, "clipLineBeg"    # Lcom/itextpdf/kernel/geom/Point;
    .param p4, "clipLineEnd"    # Lcom/itextpdf/kernel/geom/Point;

    .line 1114
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .local v0, "A1":D
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 1115
    .local v2, "A2":D
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .local v4, "B1":D
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    .line 1116
    .local v6, "B2":D
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    .line 1117
    .local v8, "C1":D
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v10

    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v12

    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    .line 1119
    .local v10, "C2":D
    mul-double v12, v4, v2

    mul-double v14, v6, v0

    sub-double/2addr v12, v14

    .line 1121
    .local v12, "M":D
    new-instance v14, Lcom/itextpdf/kernel/geom/Point;

    mul-double v15, v6, v8

    mul-double v17, v4, v10

    sub-double v15, v15, v17

    move-wide/from16 v17, v4

    .end local v4    # "B1":D
    .local v17, "B1":D
    div-double v4, v15, v12

    mul-double v15, v10, v0

    mul-double v19, v8, v2

    sub-double v15, v15, v19

    move-wide/from16 v19, v0

    .end local v0    # "A1":D
    .local v19, "A1":D
    div-double v0, v15, v12

    invoke-direct {v14, v4, v5, v0, v1}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    return-object v14
.end method

.method private replaceSplitRendererKidFloats(Ljava/util/Map;Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 5
    .param p2, "splitRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ")V"
        }
    .end annotation

    .line 1053
    .local p1, "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1054
    .local v1, "waitingSplitRenderer":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1055
    invoke-interface {p2}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1057
    :cond_0
    invoke-interface {p2}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1059
    .end local v1    # "waitingSplitRenderer":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :goto_1
    goto :goto_0

    .line 1060
    :cond_1
    invoke-interface {p2}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_3

    .line 1061
    invoke-interface {p2}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1062
    invoke-interface {p2}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1060
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1065
    .end local v0    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method protected applyBordersPaddingsMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;[Lcom/itextpdf/layout/property/UnitValue;)F
    .locals 3
    .param p1, "parentBBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "borders"    # [Lcom/itextpdf/layout/borders/Border;
    .param p3, "paddings"    # [Lcom/itextpdf/layout/property/UnitValue;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 984
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    .line 986
    .local v0, "parentWidth":F
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 987
    invoke-virtual {p0, p1, p2, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 988
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isFixedLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 989
    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 991
    :cond_0
    invoke-virtual {p0, p1, p3, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 992
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    sub-float v1, v0, v1

    return v1
.end method

.method applyMaxHeight(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;ZZLcom/itextpdf/layout/property/OverflowPropertyValue;)Z
    .locals 4
    .param p1, "parentBBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "blockMaxHeight"    # Ljava/lang/Float;
    .param p3, "marginsCollapseHandler"    # Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .param p4, "isCellRenderer"    # Z
    .param p5, "wasParentsHeightClipped"    # Z
    .param p6, "overflowY"    # Lcom/itextpdf/layout/property/OverflowPropertyValue;

    .line 909
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-static {p6}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 912
    :cond_0
    const/4 v0, 0x0

    .line 913
    .local v0, "wasHeightClipped":Z
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 914
    const/4 v0, 0x1

    .line 916
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    .line 917
    .local v1, "heightDelta":F
    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    .line 918
    invoke-virtual {p3, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->processFixedHeightAdjustment(F)V

    .line 920
    :cond_2
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 921
    return v0

    .line 910
    .end local v0    # "wasHeightClipped":Z
    .end local v1    # "heightDelta":F
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method applyMinHeight(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 6
    .param p1, "overflowY"    # Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .param p2, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 925
    const/4 v0, 0x0

    .line 926
    .local v0, "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->retrieveMinHeight()Ljava/lang/Float;

    move-result-object v1

    .line 927
    .local v1, "blockMinHeight":Ljava/lang/Float;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v3, 0x1a

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 928
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 929
    .local v2, "blockBottom":F
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isFixedLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 930
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto/16 :goto_0

    .line 935
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x38d1b717    # 1.0E-4f

    add-float/2addr v3, v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 936
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v3

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v4

    sub-float/2addr v3, v4

    .line 937
    .local v3, "hDelta":F
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 938
    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 939
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 941
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 942
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 945
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->isLastRendererForModelElement:Z

    .line 946
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v0

    .line 947
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->updateMinHeight(Lcom/itextpdf/layout/property/UnitValue;)V

    .line 948
    const/16 v4, 0x1b

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/BlockRenderer;->hasProperty(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 949
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->retrieveHeight()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->updateHeight(Lcom/itextpdf/layout/property/UnitValue;)V

    .line 951
    .end local v3    # "hDelta":F
    :cond_2
    goto :goto_0

    .line 952
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 956
    .end local v2    # "blockBottom":F
    :cond_4
    :goto_0
    return-object v0
.end method

.method protected applyRotationLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 18
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 689
    move-object/from16 v0, p0

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 691
    .local v1, "angle":F
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v2

    .line 692
    .local v2, "x":F
    iget-object v3, v0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    .line 693
    .local v3, "y":F
    iget-object v4, v0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    .line 694
    .local v4, "height":F
    iget-object v5, v0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    .line 696
    .local v5, "width":F
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/16 v7, 0x39

    invoke-virtual {v0, v7, v6}, Lcom/itextpdf/layout/renderer/BlockRenderer;->setProperty(ILjava/lang/Object;)V

    .line 697
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/16 v7, 0x38

    invoke-virtual {v0, v7, v6}, Lcom/itextpdf/layout/renderer/BlockRenderer;->setProperty(ILjava/lang/Object;)V

    .line 699
    new-instance v6, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v6}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 702
    .local v6, "rotationTransform":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isPositioned()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 703
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v7

    .line 704
    .local v7, "rotationPointX":Ljava/lang/Float;
    const/16 v8, 0x3b

    invoke-virtual {v0, v8}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v8

    .line 706
    .local v8, "rotationPointY":Ljava/lang/Float;
    if-eqz v7, :cond_0

    if-nez v8, :cond_1

    .line 708
    :cond_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 709
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 714
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v9

    float-to-double v9, v9

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v11

    float-to-double v11, v11

    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    .line 717
    float-to-double v9, v1

    invoke-virtual {v6, v9, v10}, Lcom/itextpdf/kernel/geom/AffineTransform;->rotate(D)V

    .line 720
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v9

    neg-float v9, v9

    float-to-double v9, v9

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v11

    neg-float v11, v11

    float-to-double v11, v11

    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    .line 722
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/itextpdf/layout/renderer/BlockRenderer;->rectangleToPointsList(Lcom/itextpdf/kernel/geom/Rectangle;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v0, v9, v6}, Lcom/itextpdf/layout/renderer/BlockRenderer;->transformPoints(Ljava/util/List;Lcom/itextpdf/kernel/geom/AffineTransform;)Ljava/util/List;

    move-result-object v9

    .line 723
    .local v9, "rotatedPoints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    invoke-virtual {v0, v9}, Lcom/itextpdf/layout/renderer/BlockRenderer;->calculateBBox(Ljava/util/List;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v10

    .line 726
    .local v10, "newBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v11

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v12

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 727
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v11

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v12

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 728
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v11

    sub-float/2addr v11, v2

    .line 729
    .local v11, "occupiedAreaShiftX":F
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v12

    sub-float/2addr v12, v3

    .line 730
    .local v12, "occupiedAreaShiftY":F
    invoke-virtual {v0, v11, v12}, Lcom/itextpdf/layout/renderer/BlockRenderer;->move(FF)V

    .line 731
    .end local v7    # "rotationPointX":Ljava/lang/Float;
    .end local v8    # "rotationPointY":Ljava/lang/Float;
    .end local v9    # "rotatedPoints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    .end local v10    # "newBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v11    # "occupiedAreaShiftX":F
    .end local v12    # "occupiedAreaShiftY":F
    move/from16 v16, v1

    move/from16 v17, v2

    goto :goto_1

    .line 732
    :cond_2
    float-to-double v7, v1

    invoke-static {v7, v8}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(D)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v6

    .line 733
    iget-object v7, v0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/itextpdf/layout/renderer/BlockRenderer;->rectangleToPointsList(Lcom/itextpdf/kernel/geom/Rectangle;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Lcom/itextpdf/layout/renderer/BlockRenderer;->transformPoints(Ljava/util/List;Lcom/itextpdf/kernel/geom/AffineTransform;)Ljava/util/List;

    move-result-object v7

    .line 734
    .local v7, "rotatedPoints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    add-float v8, v3, v4

    invoke-virtual {v0, v2, v8, v7}, Lcom/itextpdf/layout/renderer/BlockRenderer;->calculateShiftToPositionBBoxOfPointsAt(FFLjava/util/List;)[F

    move-result-object v8

    .line 736
    .local v8, "shift":[F
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/geom/Point;

    .line 737
    .local v10, "point":Lcom/itextpdf/kernel/geom/Point;
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v11

    const/4 v13, 0x0

    aget v13, v8, v13

    float-to-double v13, v13

    add-double/2addr v11, v13

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v13

    const/4 v15, 0x1

    aget v15, v8, v15

    move/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "angle":F
    .end local v2    # "x":F
    .local v16, "angle":F
    .local v17, "x":F
    float-to-double v1, v15

    add-double/2addr v13, v1

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/itextpdf/kernel/geom/Point;->setLocation(DD)V

    .line 738
    .end local v10    # "point":Lcom/itextpdf/kernel/geom/Point;
    move/from16 v1, v16

    move/from16 v2, v17

    goto :goto_0

    .line 740
    .end local v16    # "angle":F
    .end local v17    # "x":F
    .restart local v1    # "angle":F
    .restart local v2    # "x":F
    :cond_3
    move/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "angle":F
    .end local v2    # "x":F
    .restart local v16    # "angle":F
    .restart local v17    # "x":F
    invoke-virtual {v0, v7}, Lcom/itextpdf/layout/renderer/BlockRenderer;->calculateBBox(Ljava/util/List;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 742
    .local v1, "newBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v9

    invoke-virtual {v2, v9}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 743
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v9

    invoke-virtual {v2, v9}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 745
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    sub-float v2, v4, v2

    .line 746
    .local v2, "heightDiff":F
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->move(FF)V

    .line 748
    .end local v1    # "newBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v2    # "heightDiff":F
    .end local v7    # "rotatedPoints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    .end local v8    # "shift":[F
    :goto_1
    return-void
.end method

.method protected applyVerticalAlignment()V
    .locals 8

    .line 642
    const/16 v0, 0x4b

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/VerticalAlignment;

    .line 643
    .local v0, "verticalAlignment":Lcom/itextpdf/layout/property/VerticalAlignment;
    if-eqz v0, :cond_b

    sget-object v1, Lcom/itextpdf/layout/property/VerticalAlignment;->TOP:Lcom/itextpdf/layout/property/VerticalAlignment;

    if-eq v0, v1, :cond_b

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 647
    :cond_0
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 648
    .local v1, "lowestChildBottom":F
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v2

    if-nez v2, :cond_3

    instance-of v2, p0, Lcom/itextpdf/layout/renderer/CellRenderer;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 656
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 657
    .local v2, "lastChildIndex":I
    :goto_0
    if-ltz v2, :cond_6

    .line 658
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    .end local v2    # "lastChildIndex":I
    .local v4, "lastChildIndex":I
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 659
    .local v2, "child":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-static {v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 660
    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v1

    .line 661
    goto :goto_3

    .line 663
    .end local v2    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_2
    move v2, v4

    goto :goto_0

    .line 650
    .end local v4    # "lastChildIndex":I
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 651
    .local v3, "child":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-interface {v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_4

    .line 652
    invoke-interface {v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v1

    .line 654
    .end local v3    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_4
    goto :goto_2

    :cond_5
    nop

    .line 666
    :cond_6
    :goto_3
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v1, v2

    if-nez v2, :cond_7

    .line 667
    return-void

    .line 670
    :cond_7
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getInnerAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    sub-float v2, v1, v2

    .line 671
    .local v2, "deltaY":F
    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gez v4, :cond_8

    .line 672
    return-void

    .line 674
    :cond_8
    sget-object v4, Lcom/itextpdf/layout/renderer/BlockRenderer$1;->$SwitchMap$com$itextpdf$layout$property$VerticalAlignment:[I

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/VerticalAlignment;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_6

    .line 681
    :pswitch_0
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 682
    .local v5, "child":Lcom/itextpdf/layout/renderer/IRenderer;
    neg-float v6, v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-interface {v5, v3, v6}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 683
    .end local v5    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_4

    .line 676
    :pswitch_1
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 677
    .restart local v5    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    neg-float v6, v2

    invoke-interface {v5, v3, v6}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 678
    .end local v5    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_5

    .line 679
    :cond_9
    nop

    .line 686
    :cond_a
    :goto_6
    return-void

    .line 644
    .end local v1    # "lowestChildBottom":F
    .end local v2    # "deltaY":F
    :cond_b
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method applyWidth(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Lcom/itextpdf/layout/property/OverflowPropertyValue;)V
    .locals 4
    .param p1, "parentBBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "blockWidth"    # Ljava/lang/Float;
    .param p3, "overflowX"    # Lcom/itextpdf/layout/property/OverflowPropertyValue;

    .line 890
    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    .line 892
    .local v0, "rotation":Ljava/lang/Float;
    if-eqz p2, :cond_1

    .line 893
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 894
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isPositioned()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 896
    invoke-static {p3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 897
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_0

    .line 899
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->retrieveMinWidth(F)Ljava/lang/Float;

    move-result-object v1

    .line 901
    .local v1, "minWidth":Ljava/lang/Float;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 902
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 905
    .end local v1    # "minWidth":Ljava/lang/Float;
    :cond_2
    :goto_0
    return-void
.end method

.method protected beginRotationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 5
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 772
    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    .line 773
    .local v0, "angle":Ljava/lang/Float;
    if-eqz v0, :cond_1

    .line 774
    const/16 v1, 0x38

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->hasOwnProperty(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 775
    const-class v1, Lcom/itextpdf/layout/renderer/BlockRenderer;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 776
    .local v1, "logger":Lorg/slf4j/Logger;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Rotation was not correctly processed for {0}"

    invoke-static {v3, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 777
    .end local v1    # "logger":Lorg/slf4j/Logger;
    goto :goto_0

    .line 778
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createRotationTransformInsideOccupiedArea()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    .line 779
    .local v1, "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 782
    .end local v1    # "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    :cond_1
    :goto_0
    return-void
.end method

.method correctFixedLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 3
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 881
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isFixedLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 883
    .local v0, "y":F
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    sub-float v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->move(FF)V

    .line 885
    .end local v0    # "y":F
    :cond_0
    return-void
.end method

.method protected createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 2
    .param p1, "layoutResult"    # I

    .line 590
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 591
    .local v0, "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 592
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 593
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 594
    return-object v0
.end method

.method protected createRotationTransformInsideOccupiedArea()Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 9

    .line 758
    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 759
    .local v0, "angle":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(D)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    .line 761
    .local v1, "rotationTransform":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 762
    .local v2, "contentBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->rectangleToPointsList(Lcom/itextpdf/kernel/geom/Rectangle;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->transformPoints(Ljava/util/List;Lcom/itextpdf/kernel/geom/AffineTransform;)Ljava/util/List;

    move-result-object v3

    .line 765
    .local v3, "rotatedContentBoxPoints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v4

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v5

    invoke-virtual {p0, v4, v5, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->calculateShiftToPositionBBoxOfPointsAt(FFLjava/util/List;)[F

    move-result-object v4

    .line 766
    .local v4, "shift":[F
    const/4 v5, 0x0

    aget v5, v4, v5

    float-to-double v5, v5

    const/4 v7, 0x1

    aget v7, v4, v7

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/geom/AffineTransform;->preConcatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 768
    return-object v1
.end method

.method createSplitAndOverflowRenderers(IILcom/itextpdf/layout/layout/LayoutResult;Ljava/util/Map;Ljava/util/List;)[Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 8
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

    .line 614
    .local p4, "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local p5, "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createSplitRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v0

    .line 615
    .local v0, "splitRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    .line 616
    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 617
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    :cond_0
    invoke-direct {p0, p4, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->replaceSplitRendererKidFloats(Ljava/util/Map;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 622
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 623
    .local v4, "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-interface {v4, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 624
    .end local v4    # "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_0

    .line 626
    :cond_1
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v1

    .line 627
    .local v1, "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    iget-object v4, v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v4, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 628
    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 629
    iget-object v4, v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    :cond_2
    iget-object v4, v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 633
    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 635
    const/16 v4, 0x1a

    invoke-virtual {v1, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->deleteOwnProperty(I)V

    .line 638
    :cond_3
    new-array v2, v2, [Lcom/itextpdf/layout/renderer/AbstractRenderer;

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    return-object v2
.end method

.method protected createSplitRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 2
    .param p1, "layoutResult"    # I

    .line 580
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 581
    .local v0, "splitRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 582
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 583
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 584
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isLastRendererForModelElement:Z

    .line 585
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 586
    return-object v0
.end method

.method decreaseLayoutBoxAfterChildPlacement(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/layout/LayoutResult;Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 2
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "result"    # Lcom/itextpdf/layout/layout/LayoutResult;
    .param p3, "childRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 877
    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 878
    return-void
.end method

.method public draw(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 16
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 469
    move-object/from16 v0, p0

    const-class v1, Lcom/itextpdf/layout/renderer/BlockRenderer;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 470
    .local v1, "logger":Lorg/slf4j/Logger;
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 471
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Drawing won\'t be performed."

    aput-object v3, v2, v4

    const-string v3, "Occupied area has not been initialized. {0}"

    invoke-static {v3, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 472
    return-void

    .line 475
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->isTaggingEnabled()Z

    move-result v2

    .line 476
    .local v2, "isTagged":Z
    const/4 v5, 0x0

    .line 477
    .local v5, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    if-eqz v2, :cond_2

    .line 478
    const/16 v6, 0x6c

    invoke-virtual {v0, v6}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    .line 479
    if-nez v5, :cond_1

    .line 480
    const/4 v2, 0x0

    goto :goto_0

    .line 482
    :cond_1
    invoke-virtual {v5, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->useAutoTaggingPointerAndRememberItsPosition(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v6

    .line 483
    .local v6, "tagPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    invoke-virtual {v5, v0, v6}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->createTag(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 484
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v7

    .line 485
    invoke-static {v0, v6}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->getListAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->addAttributes(ILcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v7

    .line 486
    invoke-static {v0, v6}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->getTableAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->addAttributes(ILcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v7

    .line 487
    invoke-static {v0, v6}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->getLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->addAttributes(ILcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    .line 492
    .end local v6    # "tagPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/itextpdf/layout/renderer/BlockRenderer;->beginTransformationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 493
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyDestinationsAndAnnotation(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isRelativePosition()Z

    move-result v6

    .line 496
    .local v6, "isRelativePosition":Z
    if-eqz v6, :cond_3

    .line 497
    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyRelativePositioningTranslation(Z)V

    .line 500
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->beginElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 501
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/itextpdf/layout/renderer/BlockRenderer;->beginRotationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 503
    sget-object v7, Lcom/itextpdf/layout/property/OverflowPropertyValue;->HIDDEN:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    const/16 v8, 0x67

    invoke-virtual {v0, v7, v8}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isOverflowProperty(Lcom/itextpdf/layout/property/OverflowPropertyValue;I)Z

    move-result v7

    .line 504
    .local v7, "overflowXHidden":Z
    sget-object v8, Lcom/itextpdf/layout/property/OverflowPropertyValue;->HIDDEN:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    const/16 v9, 0x68

    invoke-virtual {v0, v8, v9}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isOverflowProperty(Lcom/itextpdf/layout/property/OverflowPropertyValue;I)Z

    move-result v8

    .line 505
    .local v8, "overflowYHidden":Z
    if-nez v7, :cond_5

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    move v9, v4

    goto :goto_2

    :cond_5
    :goto_1
    move v9, v3

    .line 507
    .local v9, "processOverflow":Z
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->drawBackground(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 508
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->drawBorder(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 510
    if-eqz v9, :cond_b

    .line 511
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 512
    iget-object v10, v0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v10}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v10

    .line 514
    .local v10, "pageNumber":I
    const v11, 0x49742400    # 1000000.0f

    const v12, -0x370bdc00    # -500000.0f

    if-lt v10, v3, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v13

    if-le v10, v13, :cond_6

    goto :goto_3

    .line 517
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v13

    .line 520
    .local v13, "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 521
    new-array v14, v3, [Ljava/lang/Object;

    const-string v15, "area clipping"

    aput-object v15, v14, v4

    const-string v4, "Page was flushed. {0} will not be performed."

    invoke-static {v4, v14}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 523
    new-instance v4, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v4, v12, v12, v11, v11}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .local v4, "clippedArea":Lcom/itextpdf/kernel/geom/Rectangle;
    goto :goto_4

    .line 525
    .end local v4    # "clippedArea":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_7
    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPageSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .restart local v4    # "clippedArea":Lcom/itextpdf/kernel/geom/Rectangle;
    goto :goto_4

    .line 515
    .end local v4    # "clippedArea":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v13    # "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    :cond_8
    :goto_3
    new-instance v4, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v4, v12, v12, v11, v11}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 528
    .restart local v4    # "clippedArea":Lcom/itextpdf/kernel/geom/Rectangle;
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getBorderAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v11

    .line 529
    .local v11, "area":Lcom/itextpdf/kernel/geom/Rectangle;
    if-eqz v7, :cond_9

    .line 530
    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v12

    invoke-virtual {v4, v12}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v12

    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v13

    invoke-virtual {v12, v13}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 532
    :cond_9
    if-eqz v8, :cond_a

    .line 533
    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v12

    invoke-virtual {v4, v12}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v12

    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v13

    invoke-virtual {v12, v13}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 535
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 538
    .end local v4    # "clippedArea":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v10    # "pageNumber":I
    .end local v11    # "area":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->drawChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 539
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->drawPositionedChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 541
    if-eqz v9, :cond_c

    .line 542
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 545
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/renderer/BlockRenderer;->endRotationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 546
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->endElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 548
    if-eqz v6, :cond_d

    .line 549
    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyRelativePositioningTranslation(Z)V

    .line 552
    :cond_d
    if-eqz v2, :cond_f

    .line 553
    iget-boolean v4, v0, Lcom/itextpdf/layout/renderer/BlockRenderer;->isLastRendererForModelElement:Z

    if-eqz v4, :cond_e

    .line 554
    invoke-virtual {v5, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->finishTaggingHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    .line 556
    :cond_e
    invoke-virtual {v5, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->restoreAutoTaggingPointerPosition(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 559
    :cond_f
    iput-boolean v3, v0, Lcom/itextpdf/layout/renderer/BlockRenderer;->flushed:Z

    .line 560
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->endTransformationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 561
    return-void
.end method

.method protected endRotationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 2
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 785
    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    .line 786
    .local v0, "angle":Ljava/lang/Float;
    if-eqz v0, :cond_0

    const/16 v1, 0x38

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->hasOwnProperty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 789
    :cond_0
    return-void
.end method

.method fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 2
    .param p1, "overflowX"    # Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .param p2, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 960
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    return-void

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 967
    :cond_2
    return-void
.end method

.method fixOccupiedAreaIfOverflowedY(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 2
    .param p1, "overflowY"    # Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .param p2, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 970
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    return-void

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 974
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v1

    sub-float/2addr v0, v1

    .line 975
    .local v0, "difference":F
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 977
    .end local v0    # "difference":F
    :cond_1
    return-void
.end method

.method public getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 13

    .line 1000
    new-instance v0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->calculateAdditionalWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>(F)V

    .line 1001
    .local v0, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->setMinMaxWidthBasedOnFixedWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1002
    const/16 v1, 0x50

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->hasAbsoluteUnitValue(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->retrieveMinWidth(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 1003
    .local v1, "minWidth":Ljava/lang/Float;
    :goto_0
    const/16 v4, 0x4f

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/BlockRenderer;->hasAbsoluteUnitValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->retrieveMaxWidth(F)Ljava/lang/Float;

    move-result-object v2

    .line 1004
    .local v2, "maxWidth":Ljava/lang/Float;
    :cond_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_8

    .line 1005
    :cond_2
    new-instance v4, Lcom/itextpdf/layout/renderer/MaxMaxWidthHandler;

    invoke-direct {v4, v0}, Lcom/itextpdf/layout/renderer/MaxMaxWidthHandler;-><init>(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)V

    .line 1006
    .local v4, "handler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    const/4 v5, 0x0

    .line 1007
    .local v5, "epsilonNum":I
    const/4 v6, 0x0

    .line 1008
    .local v6, "curEpsNum":I
    const/4 v7, 0x0

    .line 1009
    .local v7, "previousFloatingChildWidth":F
    iget-object v8, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1011
    .local v9, "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-interface {v9, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1012
    instance-of v10, v9, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v10, :cond_3

    .line 1013
    move-object v10, v9

    check-cast v10, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v10}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v10

    .local v10, "childMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    goto :goto_2

    .line 1015
    .end local v10    # "childMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    :cond_3
    invoke-static {v9}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->countDefaultMinMaxWidth(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v10

    .line 1017
    .restart local v10    # "childMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    :goto_2
    invoke-virtual {v10}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v11

    invoke-static {v9}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v7

    goto :goto_3

    :cond_4
    move v12, v3

    :goto_3
    add-float/2addr v11, v12

    invoke-virtual {v4, v11}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    .line 1018
    invoke-virtual {v10}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    .line 1019
    invoke-static {v9}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v10}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v11

    add-float/2addr v11, v7

    goto :goto_4

    :cond_5
    move v11, v3

    :goto_4
    move v7, v11

    .line 1020
    invoke-static {v9}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1021
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1023
    :cond_6
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1024
    const/4 v6, 0x0

    .line 1026
    .end local v9    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v10    # "childMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    :goto_5
    goto :goto_1

    .line 1027
    :cond_7
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1028
    .end local v5    # "epsilonNum":I
    .local v3, "epsilonNum":I
    iget-object v5, v4, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->minMaxWidth:Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    iget-object v8, v4, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->minMaxWidth:Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-virtual {v8}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMaxWidth()F

    move-result v8

    int-to-float v9, v3

    const v10, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v5, v8}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    .line 1029
    iget-object v5, v4, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->minMaxWidth:Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    iget-object v8, v4, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->minMaxWidth:Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-virtual {v8}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMinWidth()F

    move-result v8

    int-to-float v9, v3

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v5, v8}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    .line 1031
    .end local v3    # "epsilonNum":I
    .end local v4    # "handler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .end local v6    # "curEpsNum":I
    .end local v7    # "previousFloatingChildWidth":F
    :cond_8
    if-eqz v1, :cond_9

    .line 1032
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    .line 1036
    :cond_9
    if-eqz v2, :cond_a

    .line 1037
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    goto :goto_6

    .line 1039
    :cond_a
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMinWidth()F

    move-result v3

    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMaxWidth()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_b

    .line 1040
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMinWidth()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    .line 1045
    .end local v1    # "minWidth":Ljava/lang/Float;
    .end local v2    # "maxWidth":Ljava/lang/Float;
    :cond_b
    :goto_6
    const/16 v1, 0x37

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1046
    invoke-static {v0, p0}, Lcom/itextpdf/layout/renderer/RotationUtils;->countRotationMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;Lcom/itextpdf/layout/renderer/AbstractRenderer;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v1

    return-object v1

    .line 1049
    :cond_c
    return-object v0
.end method

.method public getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 6

    .line 565
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 566
    .local v0, "bBox":Lcom/itextpdf/kernel/geom/Rectangle;
    const/16 v1, 0x37

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 567
    .local v1, "rotationAngle":Ljava/lang/Float;
    if-eqz v1, :cond_2

    .line 568
    const/16 v2, 0x39

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->hasOwnProperty(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x38

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->hasOwnProperty(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 572
    :cond_0
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 573
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_1

    .line 569
    :cond_1
    :goto_0
    const-class v2, Lcom/itextpdf/layout/renderer/BlockRenderer;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 570
    .local v2, "logger":Lorg/slf4j/Logger;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Rotation was not correctly processed for {0}"

    invoke-static {v4, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 576
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :cond_2
    :goto_1
    return-object v0
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 60
    .param p1, "layoutContext"    # Lcom/itextpdf/layout/layout/LayoutContext;

    .line 95
    move-object/from16 v15, p0

    const/4 v14, 0x1

    iput-boolean v14, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->isLastRendererForModelElement:Z

    .line 97
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v13, v0

    .line 98
    .local v13, "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 99
    .local v12, "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    const/4 v7, 0x0

    .line 100
    .local v7, "floatOverflowedCompletely":Z
    const/4 v8, 0x0

    .line 101
    .local v8, "wasHeightClipped":Z
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->isClippedHeight()Z

    move-result v18

    .line 102
    .local v18, "wasParentsHeightClipped":Z
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v11

    .line 104
    .local v11, "pageNumber":I
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isPositioned()Z

    move-result v19

    .line 106
    .local v19, "isPositioned":Z
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v10

    .line 108
    .local v10, "parentBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v6

    .line 109
    .local v6, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    const/16 v0, 0x63

    invoke-virtual {v15, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/itextpdf/layout/property/FloatPropertyValue;

    .line 110
    .local v9, "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    const/16 v0, 0x37

    invoke-virtual {v15, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v20

    .line 112
    .local v20, "rotation":Ljava/lang/Float;
    const/16 v0, 0x67

    invoke-virtual {v15, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/itextpdf/layout/property/OverflowPropertyValue;

    .line 114
    .local v5, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    const/4 v0, 0x0

    .line 115
    .local v0, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v2, 0x59

    invoke-virtual {v15, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 116
    .local v4, "marginsCollapsingEnabled":Z
    if-eqz v4, :cond_0

    .line 117
    new-instance v1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getMarginsCollapseInfo()Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object v2

    invoke-direct {v1, v15, v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;-><init>(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    move-object v0, v1

    move-object v3, v0

    goto :goto_0

    .line 116
    :cond_0
    move-object v3, v0

    .line 119
    .end local v0    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .local v3, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    :goto_0
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {v15, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object v0

    .line 120
    .local v0, "blockWidth":Ljava/lang/Float;
    if-nez v20, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isFixedLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    :cond_1
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    const v2, 0x49742400    # 1000000.0f

    sub-float v1, v2, v1

    invoke-virtual {v10, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 123
    :cond_2
    if-eqz v20, :cond_3

    invoke-static {v15, v9}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/property/FloatPropertyValue;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 124
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-static {v1, v15}, Lcom/itextpdf/layout/renderer/RotationUtils;->retrieveRotatedLayoutWidth(FLcom/itextpdf/layout/renderer/AbstractRenderer;)Ljava/lang/Float;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_1

    .line 126
    :cond_3
    move-object/from16 v16, v0

    .end local v0    # "blockWidth":Ljava/lang/Float;
    .local v16, "blockWidth":Ljava/lang/Float;
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockFormattingContextUtil;->isRendererCreateBfc(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v21

    .line 127
    .local v21, "includeFloatsInOccupiedArea":Z
    invoke-static {v15, v6, v10}, Lcom/itextpdf/layout/renderer/FloatingHelper;->calculateClearHeightCorrection(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)F

    move-result v2

    .line 128
    .local v2, "clearHeightCorrection":F
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    invoke-static {v10, v3, v2, v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->applyClearance(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;FZ)V

    .line 129
    invoke-static {v15, v9}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/property/FloatPropertyValue;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v22, v2

    .end local v2    # "clearHeightCorrection":F
    .local v22, "clearHeightCorrection":F
    move-object/from16 v2, v16

    move-object v14, v3

    .end local v3    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .local v14, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    move-object v3, v6

    move/from16 v17, v8

    move v8, v4

    .end local v4    # "marginsCollapsingEnabled":Z
    .local v8, "marginsCollapsingEnabled":Z
    .local v17, "wasHeightClipped":Z
    move-object v4, v9

    move-object/from16 v24, v5

    .end local v5    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v24, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustFloatedBlockLayoutBox(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Ljava/util/List;Lcom/itextpdf/layout/property/FloatPropertyValue;Lcom/itextpdf/layout/property/OverflowPropertyValue;)Ljava/lang/Float;

    move-result-object v16

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    move-object/from16 v5, v16

    goto :goto_2

    .line 129
    .end local v14    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v17    # "wasHeightClipped":Z
    .end local v22    # "clearHeightCorrection":F
    .end local v24    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v2    # "clearHeightCorrection":F
    .restart local v3    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v4    # "marginsCollapsingEnabled":Z
    .restart local v5    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v8, "wasHeightClipped":Z
    :cond_4
    move/from16 v22, v2

    move-object v14, v3

    move-object/from16 v24, v5

    move/from16 v17, v8

    move v8, v4

    .end local v2    # "clearHeightCorrection":F
    .end local v3    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v4    # "marginsCollapsingEnabled":Z
    .end local v5    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v8, "marginsCollapsingEnabled":Z
    .restart local v14    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v17    # "wasHeightClipped":Z
    .restart local v22    # "clearHeightCorrection":F
    .restart local v24    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    move-object/from16 v5, v16

    .line 134
    .end local v16    # "blockWidth":Ljava/lang/Float;
    .local v5, "blockWidth":Ljava/lang/Float;
    :goto_2
    instance-of v4, v15, Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 135
    .local v4, "isCellRenderer":Z
    if-eqz v8, :cond_5

    .line 136
    invoke-virtual {v14, v10}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->startMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 139
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v3

    .line 140
    .local v3, "borders":[Lcom/itextpdf/layout/borders/Border;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPaddings()[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v2

    .line 142
    .local v2, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v15, v10, v3, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyBordersPaddingsMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;[Lcom/itextpdf/layout/property/UnitValue;)F

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->retrieveMaxHeight()Ljava/lang/Float;

    move-result-object v1

    .line 144
    .local v1, "blockMaxHeight":Ljava/lang/Float;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v16

    cmpl-float v0, v0, v16

    if-lez v0, :cond_7

    :cond_6
    if-nez v18, :cond_7

    sget-object v0, Lcom/itextpdf/layout/property/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    goto :goto_3

    :cond_7
    const/16 v0, 0x68

    .line 147
    invoke-virtual {v15, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/OverflowPropertyValue;

    :goto_3
    nop

    .line 148
    .local v0, "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    move-object/from16 v16, v9

    move-object/from16 v9, v24

    .end local v24    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v9, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v16, "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    invoke-virtual {v15, v10, v5, v9}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyWidth(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Lcom/itextpdf/layout/property/OverflowPropertyValue;)V

    .line 149
    move-object/from16 v24, v0

    .end local v0    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v24, "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    move-object/from16 v0, p0

    move-object/from16 v25, v1

    .end local v1    # "blockMaxHeight":Ljava/lang/Float;
    .local v25, "blockMaxHeight":Ljava/lang/Float;
    move-object v1, v10

    move/from16 v26, v7

    move-object v7, v2

    .end local v2    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v7, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v26, "floatOverflowedCompletely":Z
    move-object/from16 v2, v25

    move-object/from16 v27, v3

    .end local v3    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v27, "borders":[Lcom/itextpdf/layout/borders/Border;
    move-object v3, v14

    move/from16 v28, v4

    .end local v4    # "isCellRenderer":Z
    .local v28, "isCellRenderer":Z
    move-object/from16 v29, v5

    .end local v5    # "blockWidth":Ljava/lang/Float;
    .local v29, "blockWidth":Ljava/lang/Float;
    move/from16 v5, v18

    move-object/from16 v30, v7

    move-object v7, v6

    .end local v6    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v7, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v30, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    move-object/from16 v6, v24

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyMaxHeight(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;ZZLcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v6

    .line 152
    .end local v17    # "wasHeightClipped":Z
    .local v6, "wasHeightClipped":Z
    if-eqz v19, :cond_8

    .line 153
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    .local v0, "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    goto :goto_4

    .line 155
    .end local v0    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :cond_8
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-direct {v0, v11, v10}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v15, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->initElementAreas(Lcom/itextpdf/layout/layout/LayoutArea;)Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    .line 158
    .local v5, "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :goto_4
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v2

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    move-object/from16 v31, v10

    .end local v10    # "parentBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v31, "parentBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v10, 0x0

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v0, v11, v1}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v0, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->shrinkOccupiedAreaForAbsolutePosition()V

    .line 161
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->addPageByID(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "currentAreaPos":I
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 168
    .local v1, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v4, v2

    .line 171
    .local v4, "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    const/4 v2, 0x0

    .line 172
    .local v2, "causeOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    const/4 v3, 0x0

    .line 173
    .local v3, "anythingPlaced":Z
    const/16 v17, 0x0

    move-object/from16 v38, v2

    move/from16 v39, v3

    move/from16 v40, v26

    move/from16 v26, v0

    move-object v2, v1

    move/from16 v1, v17

    .end local v0    # "currentAreaPos":I
    .end local v3    # "anythingPlaced":Z
    .local v1, "childPos":I
    .local v2, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v26, "currentAreaPos":I
    .local v38, "causeOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v39, "anythingPlaced":Z
    .local v40, "floatOverflowedCompletely":Z
    :goto_5
    iget-object v0, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_32

    .line 174
    iget-object v0, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 176
    .local v0, "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-interface {v0, v15}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 177
    const/16 v34, 0x0

    .line 179
    .local v34, "childMarginsInfo":Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    const/4 v3, 0x0

    if-eqz v40, :cond_9

    invoke-static {v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v36

    if-eqz v36, :cond_9

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v13, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    move-object/from16 v43, v4

    move/from16 v41, v6

    move-object/from16 v53, v7

    move-object v10, v9

    move-object/from16 v45, v12

    move-object/from16 v50, v13

    move-object v12, v14

    move-object v7, v15

    move/from16 v56, v22

    move-object/from16 v9, v25

    move-object/from16 v57, v27

    move-object/from16 v42, v30

    move-object/from16 v25, v31

    const/4 v13, 0x1

    const/16 v30, 0x0

    move-object v6, v5

    move/from16 v31, v11

    move-object/from16 v27, v16

    move v11, v8

    goto/16 :goto_1c

    .line 185
    :cond_9
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_11

    const/16 v10, 0x64

    invoke-interface {v0, v10}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/layout/property/ClearPropertyValue;

    invoke-static {v12, v10}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isClearanceApplied(Ljava/util/List;Lcom/itextpdf/layout/property/ClearPropertyValue;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 186
    invoke-static {v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 187
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v13, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    const/4 v3, 0x1

    .line 190
    .end local v40    # "floatOverflowedCompletely":Z
    .local v3, "floatOverflowedCompletely":Z
    move/from16 v40, v3

    move-object/from16 v43, v4

    move/from16 v41, v6

    move-object/from16 v53, v7

    move-object v10, v9

    move-object/from16 v45, v12

    move-object/from16 v50, v13

    move-object v12, v14

    move-object v7, v15

    move/from16 v56, v22

    move-object/from16 v9, v25

    move-object/from16 v57, v27

    move-object/from16 v42, v30

    move-object/from16 v25, v31

    const/4 v13, 0x1

    const/16 v30, 0x0

    move-object v6, v5

    move/from16 v31, v11

    move-object/from16 v27, v16

    move v11, v8

    goto/16 :goto_1c

    .line 192
    .end local v3    # "floatOverflowedCompletely":Z
    .restart local v40    # "floatOverflowedCompletely":Z
    :cond_a
    if-eqz v8, :cond_b

    if-nez v28, :cond_b

    .line 193
    invoke-virtual {v14, v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 196
    :cond_b
    invoke-static {v7, v15, v4}, Lcom/itextpdf/layout/renderer/FloatingHelper;->includeChildFloatsInOccupiedArea(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/Set;)V

    .line 197
    invoke-virtual {v15, v9, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 199
    new-instance v10, Lcom/itextpdf/layout/layout/LayoutResult;

    move/from16 v37, v1

    const/4 v1, 0x3

    .end local v1    # "childPos":I
    .local v37, "childPos":I
    invoke-direct {v10, v1, v3, v3, v0}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    move-object v3, v10

    .line 200
    .local v3, "result":Lcom/itextpdf/layout/layout/LayoutResult;
    invoke-virtual {v15, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isKeepTogether(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v10

    .line 201
    .local v10, "isKeepTogether":Z
    if-eqz v39, :cond_c

    if-nez v10, :cond_c

    const/16 v33, 0x2

    goto :goto_6

    :cond_c
    const/16 v33, 0x3

    :goto_6
    move/from16 v1, v33

    .line 202
    .local v1, "layoutResult":I
    move-object/from16 v47, v9

    move-object v9, v0

    .end local v0    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v9, "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v47, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    move-object/from16 v0, p0

    move/from16 v48, v37

    .end local v1    # "layoutResult":I
    .end local v37    # "childPos":I
    .local v33, "layoutResult":I
    .local v48, "childPos":I
    move/from16 v1, v48

    move/from16 v37, v11

    move-object v11, v2

    .end local v2    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v11, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v37, "pageNumber":I
    move/from16 v2, v33

    move-object/from16 v49, v9

    move-object v9, v4

    .end local v4    # "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v9, "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v49, "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    move-object v4, v13

    move-object/from16 v50, v13

    move-object v13, v5

    .end local v5    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v13, "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v50, "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createSplitAndOverflowRenderers(IILcom/itextpdf/layout/layout/LayoutResult;Ljava/util/Map;Ljava/util/List;)[Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v0

    .line 204
    .local v0, "splitAndOverflowRenderers":[Lcom/itextpdf/layout/renderer/AbstractRenderer;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 205
    .local v1, "splitRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    const/4 v2, 0x1

    aget-object v4, v0, v2

    .line 207
    .local v4, "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    if-eqz v10, :cond_d

    .line 208
    const/4 v1, 0x0

    .line 209
    iget-object v2, v4, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 210
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v4, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    .line 213
    :cond_d
    invoke-virtual {v15, v6, v1, v4}, Lcom/itextpdf/layout/renderer/BlockRenderer;->updateHeightsOnSplit(ZLcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;)V

    .line 214
    iget-object v2, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    move-object/from16 v23, v0

    move-object/from16 v5, v30

    const/4 v0, 0x1

    .end local v0    # "splitAndOverflowRenderers":[Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .end local v30    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v5, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v23, "splitAndOverflowRenderers":[Lcom/itextpdf/layout/renderer/AbstractRenderer;
    invoke-virtual {v15, v2, v5, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 215
    iget-object v2, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    move/from16 v30, v10

    move-object/from16 v10, v27

    .end local v27    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v10, "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v30, "isKeepTogether":Z
    invoke-virtual {v15, v2, v10, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 216
    iget-object v2, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v15, v2, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 218
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v2, 0x1a

    invoke-virtual {v15, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    if-eqz v6, :cond_e

    move-object/from16 v27, v5

    move-object/from16 v51, v10

    move/from16 v10, v22

    move/from16 v0, v33

    goto :goto_7

    .line 222
    :cond_e
    move/from16 v0, v33

    const/4 v2, 0x3

    .end local v33    # "layoutResult":I
    .local v0, "layoutResult":I
    if-eq v0, v2, :cond_f

    .line 223
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v17

    move-object/from16 v27, v5

    .end local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v27, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    move-object/from16 v51, v10

    move/from16 v10, v22

    .end local v22    # "clearHeightCorrection":F
    .local v10, "clearHeightCorrection":F
    .local v51, "borders":[Lcom/itextpdf/layout/borders/Border;
    invoke-static {v15, v2, v5, v10, v8}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    .line 224
    .local v2, "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    new-instance v5, Lcom/itextpdf/layout/layout/LayoutResult;

    const/16 v46, 0x0

    move-object/from16 v41, v5

    move/from16 v42, v0

    move-object/from16 v43, v2

    move-object/from16 v44, v1

    move-object/from16 v45, v4

    invoke-direct/range {v41 .. v46}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    move-object/from16 v17, v2

    .end local v2    # "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .local v17, "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/itextpdf/layout/layout/LayoutResult;->setAreaBreak(Lcom/itextpdf/layout/element/AreaBreak;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v2

    return-object v2

    .line 226
    .end local v17    # "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v27    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v51    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v10, "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v22    # "clearHeightCorrection":F
    :cond_f
    move-object/from16 v27, v5

    .end local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v27    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    invoke-interface {v7, v9}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 227
    new-instance v2, Lcom/itextpdf/layout/layout/LayoutResult;

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v46

    move-object/from16 v41, v2

    move/from16 v42, v0

    move-object/from16 v45, v4

    invoke-direct/range {v41 .. v46}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/itextpdf/layout/layout/LayoutResult;->setAreaBreak(Lcom/itextpdf/layout/element/AreaBreak;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v2

    return-object v2

    .line 218
    .end local v0    # "layoutResult":I
    .end local v27    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v33    # "layoutResult":I
    :cond_10
    move-object/from16 v27, v5

    move-object/from16 v51, v10

    move/from16 v10, v22

    move/from16 v0, v33

    .line 219
    .end local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v22    # "clearHeightCorrection":F
    .end local v33    # "layoutResult":I
    .restart local v0    # "layoutResult":I
    .local v10, "clearHeightCorrection":F
    .restart local v27    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v51    # "borders":[Lcom/itextpdf/layout/borders/Border;
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-static {v15, v2, v5, v10, v8}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    .line 220
    .restart local v2    # "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    new-instance v5, Lcom/itextpdf/layout/layout/LayoutResult;

    const/16 v42, 0x1

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v41, v5

    move-object/from16 v43, v2

    move-object/from16 v44, v1

    invoke-direct/range {v41 .. v46}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v5

    .line 185
    .end local v3    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v10    # "clearHeightCorrection":F
    .end local v23    # "splitAndOverflowRenderers":[Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .end local v37    # "pageNumber":I
    .end local v47    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v48    # "childPos":I
    .end local v49    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v50    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v51    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v0, "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v1, "childPos":I
    .local v2, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v4, "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v5, "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v9, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v11, "pageNumber":I
    .local v13, "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v22    # "clearHeightCorrection":F
    .local v27, "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v30, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    :cond_11
    move-object/from16 v49, v0

    move/from16 v48, v1

    move-object/from16 v47, v9

    move/from16 v37, v11

    move-object/from16 v50, v13

    move/from16 v10, v22

    move-object/from16 v51, v27

    move-object/from16 v27, v30

    move-object v11, v2

    move-object v9, v4

    move-object v13, v5

    .line 232
    .end local v0    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v1    # "childPos":I
    .end local v2    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v4    # "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v5    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v22    # "clearHeightCorrection":F
    .end local v30    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v9, "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v10    # "clearHeightCorrection":F
    .local v11, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v13, "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v27, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v37    # "pageNumber":I
    .restart local v47    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v48    # "childPos":I
    .restart local v49    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .restart local v50    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v51    # "borders":[Lcom/itextpdf/layout/borders/Border;
    if-eqz v8, :cond_12

    .line 233
    move-object/from16 v5, v49

    .end local v49    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v5, "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-virtual {v15, v5, v11, v14}, Lcom/itextpdf/layout/renderer/BlockRenderer;->startChildMarginsHandling(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object v34

    move-object/from16 v4, v34

    goto :goto_8

    .line 232
    .end local v5    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .restart local v49    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_12
    move-object/from16 v5, v49

    .end local v49    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .restart local v5    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    move-object/from16 v4, v34

    .line 235
    .end local v34    # "childMarginsInfo":Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .local v4, "childMarginsInfo":Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    :goto_8
    nop

    .line 236
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v15, v11, v5, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->recalculateLayoutBoxBeforeChildLayout(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 237
    .local v2, "changedLayoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-interface {v5, v15}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v3, Lcom/itextpdf/layout/layout/LayoutArea;

    move/from16 v30, v10

    move/from16 v10, v37

    .end local v37    # "pageNumber":I
    .local v10, "pageNumber":I
    .local v30, "clearHeightCorrection":F
    invoke-direct {v3, v10, v2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    if-nez v6, :cond_14

    if-eqz v18, :cond_13

    goto :goto_9

    :cond_13
    move-object/from16 v34, v2

    const/4 v2, 0x0

    goto :goto_a

    :cond_14
    :goto_9
    move-object/from16 v34, v2

    const/4 v2, 0x1

    .end local v2    # "changedLayoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v34, "changedLayoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    :goto_a
    invoke-direct {v1, v3, v4, v7, v2}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;Ljava/util/List;Z)V

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    move-object/from16 v17, v0

    .line 242
    .local v17, "result":Lcom/itextpdf/layout/layout/LayoutResult;
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    .line 244
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x57

    invoke-virtual {v15, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 245
    const/16 v1, 0x56

    invoke-virtual {v15, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object/from16 v3, v25

    move-object/from16 v2, v47

    goto :goto_b

    .line 247
    :cond_15
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    .line 248
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v3, v25

    .end local v25    # "blockMaxHeight":Ljava/lang/Float;
    .local v3, "blockMaxHeight":Ljava/lang/Float;
    invoke-virtual {v15, v0, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->recalculateOccupiedAreaAfterChildLayout(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;)V

    .line 249
    move-object/from16 v2, v47

    .end local v47    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v2, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    invoke-virtual {v15, v2, v11}, Lcom/itextpdf/layout/renderer/BlockRenderer;->fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    const/16 v23, 0x1

    const/16 v32, 0x0

    goto :goto_c

    .line 247
    .end local v2    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v3    # "blockMaxHeight":Ljava/lang/Float;
    .restart local v25    # "blockMaxHeight":Ljava/lang/Float;
    .restart local v47    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    :cond_16
    move-object/from16 v3, v25

    move-object/from16 v2, v47

    .end local v25    # "blockMaxHeight":Ljava/lang/Float;
    .end local v47    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v2    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v3    # "blockMaxHeight":Ljava/lang/Float;
    const/16 v23, 0x1

    const/16 v32, 0x0

    goto :goto_c

    .line 244
    .end local v2    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v3    # "blockMaxHeight":Ljava/lang/Float;
    .restart local v25    # "blockMaxHeight":Ljava/lang/Float;
    .restart local v47    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    :cond_17
    move-object/from16 v3, v25

    move-object/from16 v2, v47

    .line 246
    .end local v25    # "blockMaxHeight":Ljava/lang/Float;
    .end local v47    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v2    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v3    # "blockMaxHeight":Ljava/lang/Float;
    :goto_b
    iget-object v0, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    move-object/from16 v25, v3

    const/4 v1, 0x2

    .end local v3    # "blockMaxHeight":Ljava/lang/Float;
    .restart local v25    # "blockMaxHeight":Ljava/lang/Float;
    new-array v3, v1, [Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v1, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    const/16 v32, 0x0

    aput-object v1, v3, v32

    const/16 v23, 0x1

    aput-object v11, v3, v23

    invoke-static {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/layout/LayoutArea;->setBBox(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 252
    :goto_c
    if-eqz v8, :cond_18

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    .line 253
    invoke-virtual {v14, v11}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endChildMarginsHandling(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 256
    :cond_18
    invoke-static {v5}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 260
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    if-nez v39, :cond_19

    .line 262
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isFirstOnRootArea()Z

    move-result v0

    if-eqz v0, :cond_19

    move/from16 v1, v23

    goto :goto_d

    :cond_19
    move/from16 v1, v32

    :goto_d
    move v0, v1

    .line 264
    .local v0, "immediatelyReturnNothing":Z
    if-nez v0, :cond_1c

    .line 265
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v3

    move/from16 v35, v0

    const/4 v0, 0x2

    .end local v0    # "immediatelyReturnNothing":Z
    .local v35, "immediatelyReturnNothing":Z
    if-ne v3, v0, :cond_1a

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    goto :goto_e

    :cond_1a
    const/4 v3, 0x0

    :goto_e
    move-object/from16 v0, v50

    .end local v50    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v0, "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1b

    move/from16 v1, v23

    goto :goto_f

    :cond_1b
    move/from16 v1, v32

    :goto_f
    move/from16 v40, v1

    .line 268
    move-object/from16 v50, v0

    move-object/from16 v55, v2

    move-object/from16 v36, v4

    move-object/from16 v49, v5

    move/from16 v41, v6

    move-object/from16 v53, v7

    move/from16 v54, v8

    move-object/from16 v43, v9

    move-object v2, v11

    move-object/from16 v45, v12

    move-object v6, v13

    move-object/from16 v59, v14

    move-object v7, v15

    move-object/from16 v1, v17

    move-object/from16 v52, v25

    move-object/from16 v42, v27

    move/from16 v56, v30

    move-object/from16 v25, v31

    move/from16 v30, v32

    move-object/from16 v35, v34

    move/from16 v22, v48

    move-object/from16 v57, v51

    move/from16 v31, v10

    move-object/from16 v27, v16

    goto/16 :goto_15

    .line 264
    .end local v35    # "immediatelyReturnNothing":Z
    .local v0, "immediatelyReturnNothing":Z
    .restart local v50    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :cond_1c
    move/from16 v35, v0

    move-object/from16 v0, v50

    const/4 v3, 0x3

    .end local v50    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v0, "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v35    # "immediatelyReturnNothing":Z
    goto :goto_10

    .line 256
    .end local v0    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v35    # "immediatelyReturnNothing":Z
    .restart local v50    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :cond_1d
    move-object/from16 v0, v50

    const/4 v3, 0x3

    .line 272
    .end local v50    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v0    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :goto_10
    if-eqz v8, :cond_1e

    .line 273
    invoke-virtual {v14, v11}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 277
    :cond_1e
    invoke-static {v7, v15, v9}, Lcom/itextpdf/layout/renderer/FloatingHelper;->includeChildFloatsInOccupiedArea(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/Set;)V

    .line 278
    invoke-virtual {v15, v2, v11}, Lcom/itextpdf/layout/renderer/BlockRenderer;->fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 280
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 284
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    iget-object v3, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v15, v1, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->alignChildHorizontally(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 288
    :cond_1f
    if-nez v38, :cond_20

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 289
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v38

    .line 293
    :cond_20
    add-int/lit8 v1, v26, 0x1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_25

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/AreaBreak;->getType()Lcom/itextpdf/layout/property/AreaBreakType;

    move-result-object v1

    sget-object v3, Lcom/itextpdf/layout/property/AreaBreakType;->NEXT_PAGE:Lcom/itextpdf/layout/property/AreaBreakType;

    if-eq v1, v3, :cond_21

    goto :goto_11

    :cond_21
    move-object/from16 v50, v0

    move-object/from16 v22, v14

    move/from16 v14, v48

    goto/16 :goto_14

    .line 294
    :cond_22
    :goto_11
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 295
    iget-object v1, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    move-object/from16 v22, v14

    move/from16 v14, v48

    .end local v48    # "childPos":I
    .local v14, "childPos":I
    .local v22, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    invoke-interface {v1, v14, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v1, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    add-int/lit8 v3, v14, 0x1

    move-object/from16 v50, v0

    .end local v0    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v50    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v1, v14

    goto :goto_13

    .line 299
    .end local v22    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v50    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v0    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v14, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v48    # "childPos":I
    :cond_23
    move-object/from16 v50, v0

    move-object/from16 v22, v14

    move/from16 v14, v48

    .end local v0    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v48    # "childPos":I
    .local v14, "childPos":I
    .restart local v22    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v50    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 300
    iget-object v0, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 302
    :cond_24
    iget-object v0, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 304
    :goto_12
    add-int/lit8 v1, v14, -0x1

    .line 306
    .end local v14    # "childPos":I
    .restart local v1    # "childPos":I
    :goto_13
    add-int/lit8 v0, v26, 0x1

    .end local v26    # "currentAreaPos":I
    .local v0, "currentAreaPos":I
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    .line 307
    .end local v11    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v3, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    move/from16 v26, v0

    move-object/from16 v55, v2

    move-object v2, v3

    move-object/from16 v36, v4

    move-object/from16 v49, v5

    move/from16 v41, v6

    move-object/from16 v53, v7

    move/from16 v54, v8

    move-object/from16 v43, v9

    move-object/from16 v45, v12

    move-object v6, v13

    move-object v7, v15

    move-object/from16 v59, v22

    move-object/from16 v52, v25

    move-object/from16 v42, v27

    move/from16 v56, v30

    move-object/from16 v25, v31

    move/from16 v30, v32

    move-object/from16 v35, v34

    move-object/from16 v57, v51

    move/from16 v22, v1

    move/from16 v31, v10

    move-object/from16 v27, v16

    move-object/from16 v1, v17

    goto/16 :goto_15

    .line 293
    .end local v1    # "childPos":I
    .end local v3    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v22    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v50    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v0, "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v11    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v14, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v26    # "currentAreaPos":I
    .restart local v48    # "childPos":I
    :cond_25
    move-object/from16 v50, v0

    move-object/from16 v22, v14

    move/from16 v14, v48

    .line 309
    .end local v0    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v48    # "childPos":I
    .local v14, "childPos":I
    .restart local v22    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v50    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :goto_14
    move-object/from16 v33, v50

    .end local v50    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v33, "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v35, v34

    move-object/from16 v34, v2

    .end local v2    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v34, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v35, "changedLayoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    move-object/from16 v2, v33

    move-object/from16 v52, v25

    const/16 v25, 0x3

    .end local v25    # "blockMaxHeight":Ljava/lang/Float;
    .local v52, "blockMaxHeight":Ljava/lang/Float;
    move-object v3, v12

    move-object/from16 v36, v4

    .end local v4    # "childMarginsInfo":Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .local v36, "childMarginsInfo":Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    move v4, v6

    move-object/from16 v37, v5

    .end local v5    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v37, "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    move-object v5, v7

    move/from16 v41, v6

    .end local v6    # "wasHeightClipped":Z
    .local v41, "wasHeightClipped":Z
    move v6, v8

    move-object/from16 v53, v7

    move-object/from16 v42, v27

    .end local v7    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v27    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v42, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v53, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    move/from16 v7, v30

    move/from16 v54, v8

    .end local v8    # "marginsCollapsingEnabled":Z
    .local v54, "marginsCollapsingEnabled":Z
    move-object/from16 v8, v51

    move-object/from16 v43, v9

    move-object/from16 v27, v16

    move-object/from16 v55, v34

    move-object/from16 v49, v37

    .end local v9    # "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v16    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .end local v34    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v37    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v27, "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .local v43, "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v49    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v55, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    move-object/from16 v9, v42

    move/from16 v16, v10

    move/from16 v56, v30

    move-object/from16 v25, v31

    move/from16 v30, v32

    move-object/from16 v57, v51

    .end local v10    # "pageNumber":I
    .end local v30    # "clearHeightCorrection":F
    .end local v31    # "parentBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v51    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v16, "pageNumber":I
    .local v25, "parentBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v56, "clearHeightCorrection":F
    .local v57, "borders":[Lcom/itextpdf/layout/borders/Border;
    move-object v10, v13

    move-object/from16 v44, v11

    move/from16 v31, v16

    .end local v11    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v16    # "pageNumber":I
    .local v31, "pageNumber":I
    .local v44, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    move/from16 v11, v26

    move-object/from16 v45, v12

    .end local v12    # "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v45, "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    move-object/from16 v12, v44

    move-object/from16 v58, v13

    .end local v13    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v33    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v50    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v58, "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    move-object/from16 v13, v43

    move-object/from16 v59, v22

    move/from16 v22, v14

    .end local v14    # "childPos":I
    .local v22, "childPos":I
    .local v59, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    move-object/from16 v14, v38

    move/from16 v15, v39

    move/from16 v16, v22

    invoke-virtual/range {v0 .. v17}, Lcom/itextpdf/layout/renderer/BlockRenderer;->processNotFullChildResult(Lcom/itextpdf/layout/layout/LayoutContext;Ljava/util/Map;Ljava/util/List;ZLjava/util/List;ZF[Lcom/itextpdf/layout/borders/Border;[Lcom/itextpdf/layout/property/UnitValue;Ljava/util/List;ILcom/itextpdf/kernel/geom/Rectangle;Ljava/util/Set;Lcom/itextpdf/layout/renderer/IRenderer;ZILcom/itextpdf/layout/layout/LayoutResult;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    .line 314
    .local v0, "layoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    if-nez v0, :cond_26

    .line 315
    add-int/lit8 v1, v26, 0x1

    move-object/from16 v6, v58

    .end local v26    # "currentAreaPos":I
    .end local v58    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v1, "currentAreaPos":I
    .local v6, "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 316
    .end local v44    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v2, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    move-object/from16 v7, p0

    move/from16 v26, v1

    move-object/from16 v1, v17

    goto :goto_15

    .line 318
    .end local v1    # "currentAreaPos":I
    .end local v2    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v6    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v26    # "currentAreaPos":I
    .restart local v44    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v58    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :cond_26
    move-object/from16 v6, v58

    .end local v58    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v6    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    move-object/from16 v7, p0

    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->stopLayoutingChildrenIfChildResultNotFull(Lcom/itextpdf/layout/layout/LayoutResult;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 319
    return-object v0

    .line 321
    :cond_27
    move-object v1, v0

    .line 322
    .end local v17    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    .local v1, "result":Lcom/itextpdf/layout/layout/LayoutResult;
    move-object/from16 v2, v44

    goto :goto_15

    .line 242
    .end local v0    # "layoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v1    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v22    # "childPos":I
    .end local v35    # "changedLayoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v36    # "childMarginsInfo":Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .end local v41    # "wasHeightClipped":Z
    .end local v42    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v43    # "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v44    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v45    # "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v49    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v52    # "blockMaxHeight":Ljava/lang/Float;
    .end local v53    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v54    # "marginsCollapsingEnabled":Z
    .end local v55    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v56    # "clearHeightCorrection":F
    .end local v57    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v59    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v4    # "childMarginsInfo":Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .restart local v5    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v6, "wasHeightClipped":Z
    .restart local v7    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v8    # "marginsCollapsingEnabled":Z
    .restart local v9    # "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v10    # "pageNumber":I
    .restart local v11    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v12    # "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v13    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v14, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .local v16, "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .restart local v17    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    .local v25, "blockMaxHeight":Ljava/lang/Float;
    .local v27, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v30    # "clearHeightCorrection":F
    .local v31, "parentBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v34, "changedLayoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v47    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v48    # "childPos":I
    .restart local v51    # "borders":[Lcom/itextpdf/layout/borders/Border;
    :cond_28
    move-object/from16 v36, v4

    move-object/from16 v49, v5

    move/from16 v41, v6

    move-object/from16 v53, v7

    move/from16 v54, v8

    move-object/from16 v43, v9

    move-object/from16 v44, v11

    move-object/from16 v45, v12

    move-object v6, v13

    move-object/from16 v59, v14

    move-object v7, v15

    move-object/from16 v52, v25

    move-object/from16 v42, v27

    move/from16 v56, v30

    move-object/from16 v25, v31

    move-object/from16 v35, v34

    move-object/from16 v55, v47

    move/from16 v22, v48

    move-object/from16 v57, v51

    const/16 v30, 0x0

    move/from16 v31, v10

    move-object/from16 v27, v16

    .end local v4    # "childMarginsInfo":Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .end local v5    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v7    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v8    # "marginsCollapsingEnabled":Z
    .end local v9    # "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v10    # "pageNumber":I
    .end local v11    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v12    # "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v13    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v14    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v16    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .end local v30    # "clearHeightCorrection":F
    .end local v34    # "changedLayoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v47    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v48    # "childPos":I
    .end local v51    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v6, "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v22    # "childPos":I
    .local v25, "parentBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v27, "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .local v31, "pageNumber":I
    .restart local v35    # "changedLayoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v36    # "childMarginsInfo":Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .restart local v41    # "wasHeightClipped":Z
    .restart local v42    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v43    # "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v44    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v45    # "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v49    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .restart local v52    # "blockMaxHeight":Ljava/lang/Float;
    .restart local v53    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v54    # "marginsCollapsingEnabled":Z
    .restart local v55    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v56    # "clearHeightCorrection":F
    .restart local v57    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v59    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    move-object/from16 v1, v17

    move-object/from16 v2, v44

    .line 325
    .end local v17    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v44    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v1    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    .restart local v2    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    :goto_15
    if-nez v39, :cond_2a

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v8, 0x3

    if-eq v0, v8, :cond_29

    goto :goto_16

    :cond_29
    move/from16 v14, v30

    goto :goto_17

    :cond_2a
    :goto_16
    const/4 v14, 0x1

    :goto_17
    move v0, v14

    .line 328
    .end local v39    # "anythingPlaced":Z
    .local v0, "anythingPlaced":Z
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-static/range {v49 .. v49}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-eqz v3, :cond_2c

    if-eqz v21, :cond_2b

    goto :goto_18

    :cond_2b
    move-object/from16 v9, v52

    move-object/from16 v10, v55

    goto :goto_19

    .line 329
    :cond_2c
    :goto_18
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    move-object/from16 v9, v52

    .end local v52    # "blockMaxHeight":Ljava/lang/Float;
    .local v9, "blockMaxHeight":Ljava/lang/Float;
    invoke-virtual {v7, v3, v9}, Lcom/itextpdf/layout/renderer/BlockRenderer;->recalculateOccupiedAreaAfterChildLayout(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;)V

    .line 330
    move-object/from16 v10, v55

    .end local v55    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v10, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    invoke-virtual {v7, v10, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_19

    .line 328
    .end local v9    # "blockMaxHeight":Ljava/lang/Float;
    .end local v10    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v52    # "blockMaxHeight":Ljava/lang/Float;
    .restart local v55    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    :cond_2d
    move-object/from16 v9, v52

    move-object/from16 v10, v55

    .line 332
    .end local v52    # "blockMaxHeight":Ljava/lang/Float;
    .end local v55    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v9    # "blockMaxHeight":Ljava/lang/Float;
    .restart local v10    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    :goto_19
    move/from16 v11, v54

    .end local v54    # "marginsCollapsingEnabled":Z
    .local v11, "marginsCollapsingEnabled":Z
    if-eqz v11, :cond_2e

    .line 333
    move-object/from16 v12, v59

    .end local v59    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .local v12, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    invoke-virtual {v12, v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endChildMarginsHandling(Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_1a

    .line 332
    .end local v12    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v59    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    :cond_2e
    move-object/from16 v12, v59

    .line 335
    .end local v59    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v12    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    :goto_1a
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v3

    const/4 v13, 0x1

    if-ne v3, v13, :cond_2f

    .line 336
    move-object/from16 v3, v49

    .end local v49    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v3, "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-virtual {v7, v2, v1, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->decreaseLayoutBoxAfterChildPlacement(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/layout/LayoutResult;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 337
    invoke-interface {v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 341
    iget-object v4, v7, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Lcom/itextpdf/layout/renderer/BlockRenderer;->alignChildHorizontally(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_1b

    .line 335
    .end local v3    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .restart local v49    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_2f
    move-object/from16 v3, v49

    .line 346
    .end local v49    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .restart local v3    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_30
    :goto_1b
    if-nez v38, :cond_31

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 347
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    move/from16 v39, v0

    move-object/from16 v38, v4

    move/from16 v1, v22

    .end local v38    # "causeOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v4, "causeOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_1c

    .line 173
    .end local v1    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v3    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v4    # "causeOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v35    # "changedLayoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v36    # "childMarginsInfo":Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .restart local v38    # "causeOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_31
    move/from16 v39, v0

    move/from16 v1, v22

    .end local v0    # "anythingPlaced":Z
    .end local v22    # "childPos":I
    .local v1, "childPos":I
    .restart local v39    # "anythingPlaced":Z
    :goto_1c
    add-int/2addr v1, v13

    move-object v5, v6

    move-object v15, v7

    move v8, v11

    move-object v14, v12

    move-object/from16 v16, v27

    move/from16 v11, v31

    move/from16 v6, v41

    move-object/from16 v4, v43

    move-object/from16 v12, v45

    move-object/from16 v13, v50

    move-object/from16 v7, v53

    move/from16 v22, v56

    move-object/from16 v27, v57

    move-object/from16 v31, v25

    move-object/from16 v25, v9

    move-object v9, v10

    move/from16 v10, v30

    move-object/from16 v30, v42

    goto/16 :goto_5

    .end local v10    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v41    # "wasHeightClipped":Z
    .end local v42    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v43    # "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v45    # "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v50    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v53    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v56    # "clearHeightCorrection":F
    .end local v57    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v4, "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v5, "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v6, "wasHeightClipped":Z
    .restart local v7    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v8    # "marginsCollapsingEnabled":Z
    .local v9, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v11, "pageNumber":I
    .local v12, "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v13, "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v14    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .restart local v16    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .local v22, "clearHeightCorrection":F
    .local v25, "blockMaxHeight":Ljava/lang/Float;
    .local v27, "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v30, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v31, "parentBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_32
    move-object/from16 v44, v2

    move-object/from16 v43, v4

    move/from16 v41, v6

    move-object/from16 v53, v7

    move-object v10, v9

    move-object/from16 v45, v12

    move-object/from16 v50, v13

    move-object v12, v14

    move-object v7, v15

    move/from16 v56, v22

    move-object/from16 v9, v25

    move-object/from16 v57, v27

    move-object/from16 v42, v30

    move-object/from16 v25, v31

    const/4 v13, 0x1

    const/16 v30, 0x0

    move/from16 v22, v1

    move-object v6, v5

    move/from16 v31, v11

    move-object/from16 v27, v16

    move v11, v8

    const/4 v8, 0x3

    .line 351
    .end local v1    # "childPos":I
    .end local v2    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v4    # "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v5    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v7    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v8    # "marginsCollapsingEnabled":Z
    .end local v13    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v14    # "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .end local v16    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .end local v22    # "clearHeightCorrection":F
    .end local v30    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v6, "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v9, "blockMaxHeight":Ljava/lang/Float;
    .restart local v10    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v11, "marginsCollapsingEnabled":Z
    .local v12, "marginsCollapseHandler":Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .local v25, "parentBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v27, "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .local v31, "pageNumber":I
    .restart local v41    # "wasHeightClipped":Z
    .restart local v42    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v43    # "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v44    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v45    # "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v50    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v53    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v56    # "clearHeightCorrection":F
    .restart local v57    # "borders":[Lcom/itextpdf/layout/borders/Border;
    if-eqz v21, :cond_33

    .line 352
    move-object/from16 v15, v43

    move-object/from16 v14, v53

    .end local v43    # "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v53    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v14, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v15, "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-static {v14, v7, v15}, Lcom/itextpdf/layout/renderer/FloatingHelper;->includeChildFloatsInOccupiedArea(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/Set;)V

    .line 353
    move-object/from16 v5, v44

    .end local v44    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v5, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v7, v10, v5}, Lcom/itextpdf/layout/renderer/BlockRenderer;->fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_1d

    .line 351
    .end local v5    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v14    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v15    # "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v43    # "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v44    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v53    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :cond_33
    move-object/from16 v15, v43

    move-object/from16 v5, v44

    move-object/from16 v14, v53

    .line 355
    .end local v43    # "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v44    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v53    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v5    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v14    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v15    # "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :goto_1d
    if-eqz v41, :cond_34

    .line 356
    move-object/from16 v4, v24

    .end local v24    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v4, "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    invoke-virtual {v7, v4, v5}, Lcom/itextpdf/layout/renderer/BlockRenderer;->fixOccupiedAreaIfOverflowedY(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_1e

    .line 355
    .end local v4    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v24    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    :cond_34
    move-object/from16 v4, v24

    .line 358
    .end local v24    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v4    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    :goto_1e
    if-eqz v11, :cond_35

    .line 359
    invoke-virtual {v12, v5}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 362
    :cond_35
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x56

    invoke-virtual {v7, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 363
    iget-object v0, v7, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v1, v7, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    aput-object v1, v2, v30

    aput-object v5, v2, v13

    invoke-static {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/layout/LayoutArea;->setBBox(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 366
    :cond_36
    const/16 v16, 0x1

    .line 367
    .local v16, "layoutResult":I
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    if-nez v41, :cond_37

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x1a

    invoke-virtual {v7, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v13

    goto :goto_1f

    :cond_37
    move/from16 v0, v30

    :goto_1f
    move/from16 v22, v0

    .line 369
    .local v22, "processOverflowedFloats":Z
    const/4 v0, 0x0

    .line 370
    .local v0, "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    if-eqz v21, :cond_39

    if-nez v22, :cond_38

    goto :goto_20

    :cond_38
    move-object/from16 v23, v0

    goto :goto_21

    .line 371
    :cond_39
    :goto_20
    invoke-virtual {v7, v4, v5}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyMinHeight(Lcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v0

    move-object/from16 v23, v0

    .line 374
    .end local v0    # "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .local v23, "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    :goto_21
    if-eqz v23, :cond_3a

    move v0, v13

    goto :goto_22

    :cond_3a
    move/from16 v0, v30

    :goto_22
    move/from16 v24, v0

    .line 375
    .local v24, "minHeightOverflow":Z
    if-eqz v24, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isKeepTogether()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 376
    invoke-interface {v14, v15}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 377
    new-instance v8, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object/from16 v43, v4

    .end local v4    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v43, "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    move-object/from16 v4, p0

    move-object v13, v5

    .end local v5    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v13, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v8

    .line 375
    .end local v13    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v43    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v4    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v5    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_3b
    move-object/from16 v43, v4

    .line 381
    .end local v4    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v43    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    if-nez v23, :cond_3d

    if-eqz v22, :cond_3c

    goto :goto_23

    :cond_3c
    move/from16 v4, v16

    goto :goto_25

    .line 382
    :cond_3d
    :goto_23
    if-nez v39, :cond_3e

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    move v0, v8

    goto :goto_24

    :cond_3e
    const/4 v0, 0x2

    :goto_24
    move/from16 v16, v0

    move/from16 v4, v16

    .line 389
    .end local v16    # "layoutResult":I
    .local v4, "layoutResult":I
    :goto_25
    if-eqz v22, :cond_42

    .line 390
    if-eqz v23, :cond_3f

    if-ne v4, v8, :cond_40

    .line 393
    :cond_3f
    invoke-virtual {v7, v4}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v23

    .line 395
    :cond_40
    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    move-object/from16 v3, v45

    .end local v45    # "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v3, "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 396
    const/4 v0, 0x2

    if-ne v4, v0, :cond_41

    if-nez v24, :cond_41

    if-nez v21, :cond_41

    .line 397
    invoke-static/range {v23 .. v23}, Lcom/itextpdf/layout/renderer/FloatingHelper;->removeParentArtifactsOnPageSplitIfOnlyFloatsOverflow(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 400
    :cond_41
    move-object/from16 v2, v23

    goto :goto_26

    .line 389
    .end local v3    # "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v45    # "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :cond_42
    move-object/from16 v3, v45

    .end local v45    # "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v3    # "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    move-object/from16 v2, v23

    .line 400
    .end local v23    # "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .local v2, "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    :goto_26
    move-object/from16 v0, p0

    .line 401
    .local v0, "splitRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    invoke-interface/range {v50 .. v50}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_44

    if-eq v4, v8, :cond_44

    .line 402
    invoke-virtual {v7, v4}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createSplitRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v1

    .line 403
    .end local v0    # "splitRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .local v1, "splitRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, v7, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    .line 404
    move-object/from16 v8, v50

    .end local v50    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v8, "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-direct {v7, v8, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->replaceSplitRendererKidFloats(Ljava/util/Map;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 406
    iget-object v0, v7, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    .line 407
    .local v0, "usedHeight":F
    if-nez v21, :cond_43

    .line 408
    const/4 v13, 0x2

    new-array v13, v13, [Lcom/itextpdf/kernel/geom/Rectangle;

    aput-object v5, v13, v30

    move/from16 v16, v0

    .end local v0    # "usedHeight":F
    .local v16, "usedHeight":F
    iget-object v0, v7, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    const/16 v23, 0x1

    aput-object v0, v13, v23

    invoke-static {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 409
    .local v0, "commonRectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v13

    move/from16 v16, v13

    .end local v16    # "usedHeight":F
    .local v13, "usedHeight":F
    goto :goto_27

    .line 407
    .end local v13    # "usedHeight":F
    .local v0, "usedHeight":F
    :cond_43
    move/from16 v16, v0

    .line 412
    .end local v0    # "usedHeight":F
    .restart local v16    # "usedHeight":F
    :goto_27
    move-object/from16 v0, p0

    move-object v13, v1

    .end local v1    # "splitRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .local v13, "splitRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    move/from16 v1, v16

    move-object/from16 v23, v2

    .end local v2    # "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .restart local v23    # "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    move/from16 v2, v41

    move-object/from16 v44, v3

    .end local v3    # "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v44, "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    move-object v3, v13

    move-object/from16 v58, v6

    move v6, v4

    .end local v4    # "layoutResult":I
    .local v6, "layoutResult":I
    .restart local v58    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    move-object/from16 v4, v23

    move-object/from16 v50, v8

    move-object v8, v5

    .end local v5    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v8, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v50    # "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/BlockRenderer;->updateHeightsOnSplit(FZLcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;Z)V

    goto :goto_28

    .line 401
    .end local v8    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v13    # "splitRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .end local v16    # "usedHeight":F
    .end local v23    # "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .end local v44    # "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v58    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v0, "splitRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .restart local v2    # "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .restart local v3    # "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v4    # "layoutResult":I
    .restart local v5    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v6, "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :cond_44
    move-object/from16 v23, v2

    move-object/from16 v44, v3

    move-object v8, v5

    move-object/from16 v58, v6

    move v6, v4

    .line 415
    .end local v2    # "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .end local v3    # "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v4    # "layoutResult":I
    .end local v5    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v6, "layoutResult":I
    .restart local v8    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v23    # "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .restart local v44    # "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v58    # "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    move-object v13, v0

    .end local v0    # "splitRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .restart local v13    # "splitRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    :goto_28
    iget-object v0, v7, Lcom/itextpdf/layout/renderer/BlockRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_46

    .line 416
    iget-object v0, v7, Lcom/itextpdf/layout/renderer/BlockRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 417
    .local v1, "childPositionedRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    iget-object v2, v7, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 420
    .local v2, "fullBbox":Lcom/itextpdf/kernel/geom/Rectangle;
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 421
    .local v3, "layoutMinHeight":F
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    add-float/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 422
    new-instance v4, Lcom/itextpdf/layout/layout/LayoutArea;

    iget-object v5, v7, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v5

    move-object/from16 v16, v0

    iget-object v0, v7, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    move-object v0, v4

    .line 423
    .local v0, "parentArea":Lcom/itextpdf/layout/layout/LayoutArea;
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    move/from16 v32, v3

    move-object/from16 v5, v42

    const/4 v3, 0x1

    .end local v3    # "layoutMinHeight":F
    .end local v42    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v5, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v32, "layoutMinHeight":F
    invoke-virtual {v7, v4, v5, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 425
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v7, v1, v2, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->preparePositionedRendererAndAreaForLayout(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 426
    new-instance v3, Lcom/itextpdf/layout/layout/PositionedLayoutContext;

    new-instance v4, Lcom/itextpdf/layout/layout/LayoutArea;

    move-object/from16 v52, v9

    .end local v9    # "blockMaxHeight":Ljava/lang/Float;
    .restart local v52    # "blockMaxHeight":Ljava/lang/Float;
    iget-object v9, v7, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v9

    invoke-direct {v4, v9, v2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v3, v4, v0}, Lcom/itextpdf/layout/layout/PositionedLayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-interface {v1, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    .line 427
    .end local v0    # "parentArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v1    # "childPositionedRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v2    # "fullBbox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v32    # "layoutMinHeight":F
    move-object/from16 v0, v16

    move-object/from16 v9, v52

    goto :goto_29

    .line 416
    .end local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v52    # "blockMaxHeight":Ljava/lang/Float;
    .restart local v9    # "blockMaxHeight":Ljava/lang/Float;
    .restart local v42    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    :cond_45
    move-object/from16 v52, v9

    move-object/from16 v5, v42

    .end local v9    # "blockMaxHeight":Ljava/lang/Float;
    .end local v42    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v52    # "blockMaxHeight":Ljava/lang/Float;
    goto :goto_2a

    .line 415
    .end local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v52    # "blockMaxHeight":Ljava/lang/Float;
    .restart local v9    # "blockMaxHeight":Ljava/lang/Float;
    .restart local v42    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    :cond_46
    move-object/from16 v52, v9

    move-object/from16 v5, v42

    .line 430
    .end local v9    # "blockMaxHeight":Ljava/lang/Float;
    .end local v42    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v52    # "blockMaxHeight":Ljava/lang/Float;
    :goto_2a
    if-eqz v19, :cond_47

    .line 431
    invoke-virtual {v7, v8}, Lcom/itextpdf/layout/renderer/BlockRenderer;->correctFixedLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 434
    :cond_47
    iget-object v0, v7, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v5, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 435
    iget-object v0, v7, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v9, v57

    .end local v57    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v9, "borders":[Lcom/itextpdf/layout/borders/Border;
    invoke-virtual {v7, v0, v9, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 436
    iget-object v0, v7, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v7, v0, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 438
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyAbsolutePositionIfNeeded(Lcom/itextpdf/layout/layout/LayoutContext;)V

    .line 440
    if-eqz v20, :cond_4b

    .line 441
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyRotationLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 442
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isNotFittingLayoutArea(Lcom/itextpdf/layout/layout/LayoutArea;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 443
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isNotFittingWidth(Lcom/itextpdf/layout/layout/LayoutArea;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isNotFittingHeight(Lcom/itextpdf/layout/layout/LayoutArea;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 444
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "It fits by height so it will be forced placed"

    aput-object v2, v1, v30

    const-string v2, "Element does not fit current area. {0}"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    move-object/from16 v17, v5

    goto :goto_2b

    .line 445
    :cond_48
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x1a

    invoke-virtual {v7, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 446
    invoke-interface {v14, v15}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 447
    new-instance v16, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    move-object/from16 v4, p0

    move-object/from16 v17, v5

    .end local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v17, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v16

    .line 445
    .end local v17    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    :cond_49
    move-object/from16 v17, v5

    .end local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v17    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    goto :goto_2b

    .line 442
    .end local v17    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    :cond_4a
    move-object/from16 v17, v5

    .end local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v17    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    goto :goto_2b

    .line 440
    .end local v17    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    :cond_4b
    move-object/from16 v17, v5

    .line 451
    .end local v5    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v17    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    :goto_2b
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyVerticalAlignment()V

    .line 453
    invoke-static {v14, v7}, Lcom/itextpdf/layout/renderer/FloatingHelper;->removeFloatsAboveRendererBottom(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 455
    const/4 v0, 0x3

    if-eq v6, v0, :cond_4c

    .line 456
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    move/from16 v2, v56

    .end local v56    # "clearHeightCorrection":F
    .local v2, "clearHeightCorrection":F
    invoke-static {v7, v0, v1, v2, v11}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    .line 457
    .local v0, "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    new-instance v1, Lcom/itextpdf/layout/layout/LayoutResult;

    move-object/from16 v32, v1

    move/from16 v33, v6

    move-object/from16 v34, v0

    move-object/from16 v35, v13

    move-object/from16 v36, v23

    move-object/from16 v37, v38

    invoke-direct/range {v32 .. v37}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v1

    .line 459
    .end local v0    # "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v2    # "clearHeightCorrection":F
    .restart local v56    # "clearHeightCorrection":F
    :cond_4c
    move/from16 v2, v56

    .end local v56    # "clearHeightCorrection":F
    .restart local v2    # "clearHeightCorrection":F
    iget-object v0, v7, Lcom/itextpdf/layout/renderer/BlockRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4d

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v7, Lcom/itextpdf/layout/renderer/BlockRenderer;->positionedRenderers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v1, v23

    .end local v23    # "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .local v1, "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    iput-object v0, v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    goto :goto_2c

    .line 459
    .end local v1    # "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .restart local v23    # "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    :cond_4d
    move-object/from16 v1, v23

    .line 462
    .end local v23    # "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .restart local v1    # "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    :goto_2c
    invoke-interface {v14, v15}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 463
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutResult;

    const/16 v33, 0x3

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v32, v0

    move-object/from16 v36, v1

    move-object/from16 v37, v38

    invoke-direct/range {v32 .. v37}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v0
.end method

.method processNotFullChildResult(Lcom/itextpdf/layout/layout/LayoutContext;Ljava/util/Map;Ljava/util/List;ZLjava/util/List;ZF[Lcom/itextpdf/layout/borders/Border;[Lcom/itextpdf/layout/property/UnitValue;Ljava/util/List;ILcom/itextpdf/kernel/geom/Rectangle;Ljava/util/Set;Lcom/itextpdf/layout/renderer/IRenderer;ZILcom/itextpdf/layout/layout/LayoutResult;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 24
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

    .line 803
    .local p2, "waitingFloatsSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local p3, "waitingOverflowFloatRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local p5, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local p10, "areas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local p13, "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    move-object/from16 v6, p0

    move/from16 v7, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p12

    move/from16 v13, p16

    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v15, 0x0

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    .line 804
    add-int/lit8 v0, p11, 0x1

    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 805
    const/4 v2, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p16

    move-object/from16 v3, p17

    move v14, v4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createSplitAndOverflowRenderers(IILcom/itextpdf/layout/layout/LayoutResult;Ljava/util/Map;Ljava/util/List;)[Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v0

    .line 808
    .local v0, "splitAndOverflowRenderers":[Lcom/itextpdf/layout/renderer/AbstractRenderer;
    aget-object v1, v0, v15

    .line 809
    .local v1, "splitRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    aget-object v2, v0, v14

    .line 810
    .local v2, "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->deleteOwnProperty(I)V

    .line 812
    invoke-virtual {v6, v7, v1, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->updateHeightsOnSplit(ZLcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;)V

    .line 813
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v6, v3, v11, v14}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 814
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v6, v3, v10, v14}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 815
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v6, v3, v14}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 817
    invoke-virtual {v6, v12}, Lcom/itextpdf/layout/renderer/BlockRenderer;->correctFixedLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 819
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-static {v6, v3, v4, v9, v8}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    .line 820
    .local v3, "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    if-eqz v7, :cond_0

    .line 821
    new-instance v4, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v5, 0x0

    invoke-direct {v4, v14, v3, v1, v5}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v4

    .line 823
    :cond_0
    new-instance v4, Lcom/itextpdf/layout/layout/LayoutResult;

    const/16 v18, 0x2

    move-object/from16 v17, v4

    move-object/from16 v19, v3

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, p14

    invoke-direct/range {v17 .. v22}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v4

    .line 826
    .end local v0    # "splitAndOverflowRenderers":[Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .end local v1    # "splitRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .end local v2    # "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .end local v3    # "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    :cond_1
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    invoke-interface {v0, v13, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 827
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    add-int/lit8 v1, v13, 0x1

    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 828
    return-object v5

    .line 830
    :cond_2
    move v14, v4

    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_9

    .line 831
    move-object/from16 v5, p14

    invoke-virtual {v6, v5}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isKeepTogether(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v16

    .line 832
    .local v16, "keepTogether":Z
    if-eqz p15, :cond_3

    if-nez v16, :cond_3

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_0
    move v3, v1

    .line 834
    .local v3, "layoutResult":I
    move-object/from16 v0, p0

    move/from16 v1, p16

    move v2, v3

    move/from16 v23, v3

    .end local v3    # "layoutResult":I
    .local v23, "layoutResult":I
    move-object/from16 v3, p17

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createSplitAndOverflowRenderers(IILcom/itextpdf/layout/layout/LayoutResult;Ljava/util/Map;Ljava/util/List;)[Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v0

    .line 837
    .restart local v0    # "splitAndOverflowRenderers":[Lcom/itextpdf/layout/renderer/AbstractRenderer;
    aget-object v1, v0, v15

    .line 838
    .restart local v1    # "splitRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    aget-object v2, v0, v14

    .line 840
    .restart local v2    # "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isRelativePosition()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 841
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->positionedRenderers:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    .line 844
    :cond_4
    invoke-virtual {v6, v7, v1, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->updateHeightsOnSplit(ZLcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;)V

    .line 846
    if-eqz v16, :cond_5

    .line 847
    const/4 v1, 0x0

    .line 848
    iget-object v3, v2, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 849
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    .line 852
    :cond_5
    invoke-virtual {v6, v12}, Lcom/itextpdf/layout/renderer/BlockRenderer;->correctFixedLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 854
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v6, v3, v11, v14}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 855
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v6, v3, v10, v14}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 856
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v6, v3, v14}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 858
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyAbsolutePositionIfNeeded(Lcom/itextpdf/layout/layout/LayoutContext;)V

    .line 860
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v4, 0x1a

    invoke-virtual {v6, v4}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v7, :cond_6

    move-object/from16 v4, p5

    move-object/from16 v14, p13

    move/from16 v3, v23

    goto :goto_1

    .line 864
    :cond_6
    move/from16 v3, v23

    const/4 v4, 0x3

    .end local v23    # "layoutResult":I
    .restart local v3    # "layoutResult":I
    if-eq v3, v4, :cond_7

    .line 865
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-static {v6, v4, v5, v9, v8}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    .line 866
    .local v4, "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    new-instance v5, Lcom/itextpdf/layout/layout/LayoutResult;

    const/16 v22, 0x0

    move-object/from16 v17, v5

    move/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    invoke-direct/range {v17 .. v22}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/itextpdf/layout/layout/LayoutResult;->setAreaBreak(Lcom/itextpdf/layout/element/AreaBreak;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v5

    return-object v5

    .line 868
    .end local v4    # "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    :cond_7
    move-object/from16 v4, p5

    move-object/from16 v14, p13

    invoke-interface {v4, v14}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 869
    new-instance v5, Lcom/itextpdf/layout/layout/LayoutResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v22

    move-object/from16 v17, v5

    move/from16 v18, v3

    move-object/from16 v21, v2

    invoke-direct/range {v17 .. v22}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/itextpdf/layout/layout/LayoutResult;->setAreaBreak(Lcom/itextpdf/layout/element/AreaBreak;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v5

    return-object v5

    .line 860
    .end local v3    # "layoutResult":I
    .restart local v23    # "layoutResult":I
    :cond_8
    move-object/from16 v4, p5

    move-object/from16 v14, p13

    move/from16 v3, v23

    .line 861
    .end local v23    # "layoutResult":I
    .restart local v3    # "layoutResult":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v15

    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v15

    invoke-static {v6, v5, v15, v9, v8}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    .line 862
    .local v5, "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    new-instance v15, Lcom/itextpdf/layout/layout/LayoutResult;

    const/16 v18, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v15

    move-object/from16 v19, v5

    move-object/from16 v20, v1

    invoke-direct/range {v17 .. v22}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v15

    .line 873
    .end local v0    # "splitAndOverflowRenderers":[Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .end local v1    # "splitRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .end local v2    # "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .end local v3    # "layoutResult":I
    .end local v5    # "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    .end local v16    # "keepTogether":Z
    :cond_9
    move-object/from16 v4, p5

    move-object/from16 v14, p13

    return-object v5
.end method

.method recalculateLayoutBoxBeforeChildLayout(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "childRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p3, "initialLayoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 608
    return-object p1
.end method

.method recalculateOccupiedAreaAfterChildLayout(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;)V
    .locals 4
    .param p1, "resultBBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "blockMaxHeight"    # Ljava/lang/Float;

    .line 598
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/layout/LayoutArea;->setBBox(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 599
    return-void
.end method

.method startChildMarginsHandling(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .locals 1
    .param p1, "childRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "marginsCollapseHandler"    # Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    .line 603
    invoke-virtual {p3, p1, p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->startChildMarginsHandling(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object v0

    return-object v0
.end method

.method stopLayoutingChildrenIfChildResultNotFull(Lcom/itextpdf/layout/layout/LayoutResult;)Z
    .locals 1
    .param p1, "returnResult"    # Lcom/itextpdf/layout/layout/LayoutResult;

    .line 792
    const/4 v0, 0x1

    return v0
.end method
