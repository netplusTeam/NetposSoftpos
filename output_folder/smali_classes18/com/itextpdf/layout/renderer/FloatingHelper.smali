.class Lcom/itextpdf/layout/renderer/FloatingHelper;
.super Ljava/lang/Object;
.source "FloatingHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustBlockAreaAccordingToFloatRenderers(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)V
    .locals 8
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "blockWidth"    # F
    .param p3, "isFloatLeft"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "FZ)V"
        }
    .end annotation

    .line 187
    .local p0, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    if-nez p3, :cond_0

    .line 189
    invoke-static {p1, p2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustBoxForFloatRight(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    .line 191
    :cond_0
    return-void

    .line 195
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 196
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v0

    .local v0, "currY":F
    goto :goto_0

    .line 199
    .end local v0    # "currY":F
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v0

    .line 201
    .restart local v0    # "currY":F
    :goto_0
    const/4 v2, 0x0

    .line 202
    .local v2, "lastLeftAndRightBoxes":[Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v3, 0x0

    .line 203
    .local v3, "left":F
    const/4 v4, 0x0

    .line 204
    .local v4, "right":F
    :goto_1
    if-eqz v2, :cond_5

    sub-float v5, v4, v3

    cmpg-float v5, v5, p2

    if-gez v5, :cond_3

    goto :goto_2

    .line 225
    :cond_3
    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 226
    sub-float v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 228
    if-nez p3, :cond_4

    .line 229
    invoke-static {p1, p2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustBoxForFloatRight(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    .line 231
    :cond_4
    return-void

    .line 205
    :cond_5
    :goto_2
    const/4 v5, 0x0

    if-eqz v2, :cond_9

    .line 206
    if-eqz p3, :cond_7

    .line 207
    aget-object v6, v2, v5

    if-eqz v6, :cond_6

    aget-object v6, v2, v5

    goto :goto_3

    :cond_6
    aget-object v6, v2, v1

    :goto_3
    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v6

    move v0, v6

    goto :goto_5

    .line 209
    :cond_7
    aget-object v6, v2, v1

    if-eqz v6, :cond_8

    aget-object v6, v2, v1

    goto :goto_4

    :cond_8
    aget-object v6, v2, v5

    :goto_4
    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v6

    move v0, v6

    .line 212
    :cond_9
    :goto_5
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v6

    sub-float v6, v0, v6

    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 213
    invoke-static {p0, v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->getBoxesAtYLevel(Ljava/util/List;F)Ljava/util/List;

    move-result-object v6

    .line 214
    .local v6, "yLevelBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 215
    if-nez p3, :cond_a

    .line 216
    invoke-static {p1, p2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustBoxForFloatRight(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    .line 218
    :cond_a
    return-void

    .line 220
    :cond_b
    invoke-static {p1, v6}, Lcom/itextpdf/layout/renderer/FloatingHelper;->findLastLeftAndRightBoxes(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/List;)[Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 221
    aget-object v7, v2, v5

    if-eqz v7, :cond_c

    aget-object v5, v2, v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v5

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v5

    :goto_6
    move v3, v5

    .line 222
    aget-object v5, v2, v1

    if-eqz v5, :cond_d

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v5

    goto :goto_7

    :cond_d
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v5

    :goto_7
    move v4, v5

    .line 223
    .end local v6    # "yLevelBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    goto :goto_1
.end method

.method private static adjustBoxForFloatRight(Lcom/itextpdf/kernel/geom/Rectangle;F)V
    .locals 1
    .param p0, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p1, "blockWidth"    # F

    .line 392
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 393
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 394
    return-void
.end method

.method static adjustFloatedBlockLayoutBox(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Ljava/util/List;Lcom/itextpdf/layout/property/FloatPropertyValue;Lcom/itextpdf/layout/property/OverflowPropertyValue;)Ljava/lang/Float;
    .locals 6
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .param p1, "parentBBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "blockWidth"    # Ljava/lang/Float;
    .param p4, "floatPropertyValue"    # Lcom/itextpdf/layout/property/FloatPropertyValue;
    .param p5, "overflowX"    # Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/AbstractRenderer;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "Ljava/lang/Float;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/layout/property/FloatPropertyValue;",
            "Lcom/itextpdf/layout/property/OverflowPropertyValue;",
            ")",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 158
    .local p3, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    const/16 v0, 0x1c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 161
    invoke-static {p5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v0

    .line 162
    .local v0, "overflowFit":Z
    if-eqz p2, :cond_0

    .line 163
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculateAdditionalWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v2

    add-float/2addr v1, v2

    .line 164
    .local v1, "floatElemWidth":F
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 165
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    goto :goto_0

    .line 168
    .end local v1    # "floatElemWidth":F
    :cond_0
    invoke-static {p0, p4}, Lcom/itextpdf/layout/renderer/FloatingHelper;->calculateMinMaxWidthForFloat(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/property/FloatPropertyValue;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v1

    .line 170
    .local v1, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    invoke-virtual {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v2

    .line 171
    .local v2, "maxWidth":F
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 172
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    .line 174
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 175
    invoke-virtual {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v2

    .line 177
    :cond_2
    const v3, 0x38d1b717    # 1.0E-4f

    add-float v4, v2, v3

    .line 178
    .local v4, "floatElemWidth":F
    invoke-virtual {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getAdditionalWidth()F

    move-result v5

    sub-float v5, v2, v5

    add-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    move v1, v4

    .line 181
    .end local v2    # "maxWidth":F
    .end local v4    # "floatElemWidth":F
    .local v1, "floatElemWidth":F
    :cond_3
    :goto_0
    sget-object v2, Lcom/itextpdf/layout/property/FloatPropertyValue;->LEFT:Lcom/itextpdf/layout/property/FloatPropertyValue;

    invoke-virtual {v2, p4}, Lcom/itextpdf/layout/property/FloatPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {p3, p1, v1, v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustBlockAreaAccordingToFloatRenderers(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)V

    .line 182
    return-object p2
.end method

.method static adjustFloatedTableLayoutBox(Lcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/kernel/geom/Rectangle;FLjava/util/List;Lcom/itextpdf/layout/property/FloatPropertyValue;)V
    .locals 8
    .param p0, "tableRenderer"    # Lcom/itextpdf/layout/renderer/TableRenderer;
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "tableWidth"    # F
    .param p4, "floatPropertyValue"    # Lcom/itextpdf/layout/property/FloatPropertyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/TableRenderer;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "F",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/layout/property/FloatPropertyValue;",
            ")V"
        }
    .end annotation

    .line 144
    .local p3, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    const-class v0, Lcom/itextpdf/layout/renderer/FloatingHelper;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 145
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getMargins()[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v1

    .line 146
    .local v1, "margins":[Lcom/itextpdf/layout/property/UnitValue;
    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "Property {0} in percents is not supported"

    if-nez v3, :cond_0

    .line 147
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 148
    .local v3, "logger":Lorg/slf4j/Logger;
    new-array v6, v2, [Ljava/lang/Object;

    const/16 v7, 0x2d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 150
    .end local v3    # "logger":Lorg/slf4j/Logger;
    :cond_0
    const/4 v3, 0x3

    aget-object v6, v1, v3

    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 151
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 152
    .local v0, "logger":Lorg/slf4j/Logger;
    new-array v6, v2, [Ljava/lang/Object;

    const/16 v7, 0x2c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 154
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_1
    aget-object v0, v1, v2

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    add-float/2addr v0, p2

    aget-object v2, v1, v3

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    add-float/2addr v0, v2

    sget-object v2, Lcom/itextpdf/layout/property/FloatPropertyValue;->LEFT:Lcom/itextpdf/layout/property/FloatPropertyValue;

    invoke-virtual {v2, p4}, Lcom/itextpdf/layout/property/FloatPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {p3, p1, v0, v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustBlockAreaAccordingToFloatRenderers(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)V

    .line 155
    return-void
.end method

.method static adjustLayoutBoxAccordingToFloats(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;FLcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;)F
    .locals 9
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "boxWidth"    # Ljava/lang/Float;
    .param p3, "clearHeightCorrection"    # F
    .param p4, "marginsCollapseHandler"    # Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "Ljava/lang/Float;",
            "F",
            "Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;",
            ")F"
        }
    .end annotation

    .line 77
    .local p0, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    move v0, p3

    .line 80
    .local v0, "topShift":F
    const/4 v1, 0x0

    .line 82
    .local v1, "lastLeftAndRightBoxes":[Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_0
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 83
    aget-object v5, v1, v4

    if-eqz v5, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v2

    .line 84
    .local v5, "bottomLeft":F
    :goto_0
    aget-object v6, v1, v3

    if-eqz v6, :cond_2

    aget-object v6, v1, v3

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v2

    .line 85
    .local v6, "bottomRight":F
    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    .line 86
    .local v7, "updatedHeight":F
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    sub-float/2addr v8, v7

    move v0, v8

    .line 88
    .end local v5    # "bottomLeft":F
    .end local v6    # "bottomRight":F
    .end local v7    # "updatedHeight":F
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v5

    sub-float/2addr v5, v0

    invoke-static {p0, v5}, Lcom/itextpdf/layout/renderer/FloatingHelper;->getBoxesAtYLevel(Ljava/util/List;F)Ljava/util/List;

    move-result-object v5

    .line 89
    .local v5, "boxesAtYLevel":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 90
    invoke-static {p1, p4, v0, v4}, Lcom/itextpdf/layout/renderer/FloatingHelper;->applyClearance(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;FZ)V

    .line 91
    return v0

    .line 94
    :cond_4
    invoke-static {p1, v5}, Lcom/itextpdf/layout/renderer/FloatingHelper;->findLastLeftAndRightBoxes(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/List;)[Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 95
    aget-object v6, v1, v4

    if-eqz v6, :cond_5

    aget-object v6, v1, v4

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v6

    goto :goto_2

    :cond_5
    const/4 v6, 0x1

    .line 96
    .local v6, "left":F
    :goto_2
    aget-object v7, v1, v3

    if-eqz v7, :cond_6

    aget-object v2, v1, v3

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v2

    .line 98
    .local v2, "right":F
    :cond_6
    cmpl-float v3, v6, v2

    if-gtz v3, :cond_9

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v3

    cmpl-float v3, v6, v3

    if-gtz v3, :cond_9

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_7

    goto :goto_3

    .line 102
    :cond_7
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_8

    .line 103
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v2

    .line 105
    :cond_8
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v3

    cmpg-float v3, v6, v3

    if-gez v3, :cond_a

    .line 106
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v6

    goto :goto_4

    .line 99
    :cond_9
    :goto_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v6

    .line 100
    move v2, v6

    .line 109
    .end local v5    # "boxesAtYLevel":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :cond_a
    :goto_4
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float v5, v2, v6

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    .line 111
    :cond_b
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    sub-float v5, v2, v6

    cmpl-float v3, v3, v5

    if-lez v3, :cond_c

    .line 112
    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    sub-float v5, v2, v6

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 115
    :cond_c
    invoke-static {p1, p4, v0, v4}, Lcom/itextpdf/layout/renderer/FloatingHelper;->applyClearance(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;FZ)V

    .line 116
    return v0
.end method

.method static adjustLineAreaAccordingToFloats(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 2
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ")V"
        }
    .end annotation

    .line 71
    .local p0, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustLayoutBoxAccordingToFloats(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;FLcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;)F

    .line 72
    return-void
.end method

.method static adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 5
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "parentBBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "clearHeightCorrection"    # F
    .param p4, "marginsCollapsingEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "FZ)",
            "Lcom/itextpdf/layout/layout/LayoutArea;"
        }
    .end annotation

    .line 246
    .local p1, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    .line 247
    .local v0, "occupiedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    move-object v1, v0

    .line 248
    .local v1, "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 249
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    .line 250
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 254
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_0

    .line 255
    :cond_1
    cmpl-float v2, p3, v3

    if-lez v2, :cond_2

    if-nez p4, :cond_2

    .line 256
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 260
    :cond_2
    :goto_0
    return-object v1
.end method

.method static applyClearance(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;FZ)V
    .locals 1
    .param p0, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p1, "marginsCollapseHandler"    # Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
    .param p2, "clearHeightAdjustment"    # F
    .param p3, "isFloat"    # Z

    .line 332
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 333
    return-void

    .line 336
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->applyClearance(F)V

    goto :goto_1

    .line 337
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 341
    :goto_1
    return-void
.end method

.method static calculateClearHeightCorrection(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)F
    .locals 13
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "parentBBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ")F"
        }
    .end annotation

    .line 293
    .local p1, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    const/16 v0, 0x64

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/ClearPropertyValue;

    .line 294
    .local v0, "clearPropertyValue":Lcom/itextpdf/layout/property/ClearPropertyValue;
    const/4 v1, 0x0

    .line 295
    .local v1, "clearHeightCorrection":F
    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 300
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 301
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v2

    .local v2, "currY":F
    goto :goto_0

    .line 303
    .end local v2    # "currY":F
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v2

    .line 306
    .restart local v2    # "currY":F
    :goto_0
    invoke-static {p1, v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->getBoxesAtYLevel(Ljava/util/List;F)Ljava/util/List;

    move-result-object v4

    .line 307
    .local v4, "boxesAtYLevel":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-static {p2, v4}, Lcom/itextpdf/layout/renderer/FloatingHelper;->findLastLeftAndRightBoxes(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/List;)[Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    .line 308
    .local v5, "lastLeftAndRightBoxes":[Lcom/itextpdf/kernel/geom/Rectangle;
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 309
    .local v6, "lowestFloatBottom":F
    sget-object v7, Lcom/itextpdf/layout/property/ClearPropertyValue;->BOTH:Lcom/itextpdf/layout/property/ClearPropertyValue;

    invoke-virtual {v0, v7}, Lcom/itextpdf/layout/property/ClearPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 310
    .local v7, "isBoth":Z
    sget-object v8, Lcom/itextpdf/layout/property/ClearPropertyValue;->LEFT:Lcom/itextpdf/layout/property/ClearPropertyValue;

    invoke-virtual {v0, v8}, Lcom/itextpdf/layout/property/ClearPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v7, :cond_4

    :cond_2
    const/4 v8, 0x0

    aget-object v9, v5, v8

    if-eqz v9, :cond_4

    .line 311
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 312
    .local v10, "floatBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v11

    cmpg-float v11, v11, v6

    if-gez v11, :cond_3

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v11

    aget-object v12, v5, v8

    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v12

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_3

    .line 313
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v6

    .line 315
    .end local v10    # "floatBox":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_3
    goto :goto_1

    .line 317
    :cond_4
    sget-object v8, Lcom/itextpdf/layout/property/ClearPropertyValue;->RIGHT:Lcom/itextpdf/layout/property/ClearPropertyValue;

    invoke-virtual {v0, v8}, Lcom/itextpdf/layout/property/ClearPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v7, :cond_7

    :cond_5
    aget-object v8, v5, v3

    if-eqz v8, :cond_7

    .line 318
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 319
    .local v9, "floatBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v10

    cmpg-float v10, v10, v6

    if-gez v10, :cond_6

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v10

    aget-object v11, v5, v3

    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_6

    .line 320
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v6

    .line 322
    .end local v9    # "floatBox":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_6
    goto :goto_2

    .line 324
    :cond_7
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v3, v6, v3

    if-gez v3, :cond_8

    .line 325
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v3

    sub-float/2addr v3, v6

    const v8, 0x38d1b717    # 1.0E-4f

    add-float v1, v3, v8

    .line 328
    :cond_8
    return v1

    .line 296
    .end local v2    # "currY":F
    .end local v4    # "boxesAtYLevel":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v5    # "lastLeftAndRightBoxes":[Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v6    # "lowestFloatBottom":F
    .end local v7    # "isBoth":Z
    :cond_9
    :goto_3
    return v1
.end method

.method static calculateLineShiftUnderFloats(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)Ljava/lang/Float;
    .locals 8
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ")",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 120
    .local p0, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v0

    invoke-static {p0, v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->getBoxesAtYLevel(Ljava/util/List;F)Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, "boxesAtYLevel":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 122
    return-object v2

    .line 125
    :cond_0
    invoke-static {p1, v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->findLastLeftAndRightBoxes(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/List;)[Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 126
    .local v1, "lastLeftAndRightBoxes":[Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v3, 0x0

    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v4

    .line 127
    .local v4, "left":F
    :goto_0
    const/4 v5, 0x1

    aget-object v6, v1, v5

    if-eqz v6, :cond_2

    aget-object v6, v1, v5

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v6

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v6

    .line 128
    .local v6, "right":F
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v7

    cmpg-float v7, v7, v4

    if-ltz v7, :cond_4

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v7

    cmpl-float v7, v7, v6

    if-lez v7, :cond_3

    goto :goto_2

    .line 140
    :cond_3
    return-object v2

    .line 130
    :cond_4
    :goto_2
    aget-object v2, v1, v3

    if-eqz v2, :cond_5

    aget-object v2, v1, v5

    if-eqz v2, :cond_5

    .line 131
    aget-object v2, v1, v3

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v2

    aget-object v3, v1, v5

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .local v2, "maxLastFloatBottom":F
    goto :goto_3

    .line 132
    .end local v2    # "maxLastFloatBottom":F
    :cond_5
    aget-object v2, v1, v3

    if-eqz v2, :cond_6

    .line 133
    aget-object v2, v1, v3

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v2

    .restart local v2    # "maxLastFloatBottom":F
    goto :goto_3

    .line 135
    .end local v2    # "maxLastFloatBottom":F
    :cond_6
    aget-object v2, v1, v5

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v2

    .line 138
    .restart local v2    # "maxLastFloatBottom":F
    :goto_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v3

    sub-float/2addr v3, v2

    const v5, 0x38d1b717    # 1.0E-4f

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    return-object v3
.end method

.method static calculateMinMaxWidthForFloat(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/property/FloatPropertyValue;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 3
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .param p1, "floatPropertyVal"    # Lcom/itextpdf/layout/property/FloatPropertyValue;

    .line 281
    const/16 v0, 0x63

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnProperty(I)Z

    move-result v1

    .line 282
    .local v1, "floatPropIsRendererOwn":Z
    sget-object v2, Lcom/itextpdf/layout/property/FloatPropertyValue;->NONE:Lcom/itextpdf/layout/property/FloatPropertyValue;

    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 283
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v2

    .line 284
    .local v2, "kidMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->deleteOwnProperty(I)V

    .line 289
    :goto_0
    return-object v2
.end method

.method private static findLastLeftAndRightBoxes(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/List;)[Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 6
    .param p0, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;)[",
            "Lcom/itextpdf/kernel/geom/Rectangle;"
        }
    .end annotation

    .line 397
    .local p1, "yLevelBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    const/4 v0, 0x0

    .line 398
    .local v0, "lastLeftFloatAtY":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v1, 0x0

    .line 399
    .local v1, "lastRightFloatAtY":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v2

    .line 400
    .local v2, "left":F
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 401
    .local v4, "box":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_0

    .line 402
    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v2

    .line 404
    .end local v4    # "box":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_0
    goto :goto_0

    .line 405
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 406
    .restart local v4    # "box":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v5

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_2

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_2

    .line 407
    move-object v0, v4

    .line 408
    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v2

    goto :goto_2

    .line 410
    :cond_2
    move-object v1, v4

    .line 412
    .end local v4    # "box":Lcom/itextpdf/kernel/geom/Rectangle;
    :goto_2
    goto :goto_1

    .line 414
    :cond_3
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    return-object v3
.end method

.method private static getBoxesAtYLevel(Ljava/util/List;F)Ljava/util/List;
    .locals 5
    .param p1, "currY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;F)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;"
        }
    .end annotation

    .line 418
    .local p0, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v0, "yLevelBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 420
    .local v2, "box":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v3

    const v4, 0x38d1b717    # 1.0E-4f

    add-float/2addr v3, v4

    cmpg-float v3, v3, p1

    if-gez v3, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v3

    add-float/2addr v3, v4

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_0

    .line 421
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    .end local v2    # "box":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_0
    goto :goto_0

    .line 424
    :cond_1
    return-object v0
.end method

.method static includeChildFloatsInOccupiedArea(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/Set;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 4
    .param p1, "occupiedAreaBbox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;)",
            "Lcom/itextpdf/kernel/geom/Rectangle;"
        }
    .end annotation

    .line 269
    .local p0, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local p2, "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 270
    .local v1, "floatBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    goto :goto_0

    .line 275
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    .line 276
    .end local v1    # "floatBox":Lcom/itextpdf/kernel/geom/Rectangle;
    goto :goto_0

    .line 277
    :cond_1
    return-object p1
.end method

.method static includeChildFloatsInOccupiedArea(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/Set;)V
    .locals 2
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;)V"
        }
    .end annotation

    .line 264
    .local p0, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local p2, "nonChildFloatingRendererAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->includeChildFloatsInOccupiedArea(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/Set;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 265
    .local v0, "commonRectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/layout/LayoutArea;->setBBox(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 266
    return-void
.end method

.method static isClearanceApplied(Ljava/util/List;Lcom/itextpdf/layout/property/ClearPropertyValue;)Z
    .locals 5
    .param p1, "clearPropertyValue"    # Lcom/itextpdf/layout/property/ClearPropertyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;",
            "Lcom/itextpdf/layout/property/ClearPropertyValue;",
            ")Z"
        }
    .end annotation

    .line 354
    .local p0, "floatingRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    sget-object v1, Lcom/itextpdf/layout/property/ClearPropertyValue;->NONE:Lcom/itextpdf/layout/property/ClearPropertyValue;

    invoke-virtual {p1, v1}, Lcom/itextpdf/layout/property/ClearPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 357
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 358
    .local v2, "floatingRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    const/16 v3, 0x63

    invoke-interface {v2, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/property/FloatPropertyValue;

    .line 360
    .local v3, "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    sget-object v4, Lcom/itextpdf/layout/property/ClearPropertyValue;->BOTH:Lcom/itextpdf/layout/property/ClearPropertyValue;

    invoke-virtual {p1, v4}, Lcom/itextpdf/layout/property/ClearPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/itextpdf/layout/property/FloatPropertyValue;->LEFT:Lcom/itextpdf/layout/property/FloatPropertyValue;

    .line 361
    invoke-virtual {v3, v4}, Lcom/itextpdf/layout/property/FloatPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/itextpdf/layout/property/ClearPropertyValue;->LEFT:Lcom/itextpdf/layout/property/ClearPropertyValue;

    invoke-virtual {p1, v4}, Lcom/itextpdf/layout/property/ClearPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    sget-object v4, Lcom/itextpdf/layout/property/FloatPropertyValue;->RIGHT:Lcom/itextpdf/layout/property/FloatPropertyValue;

    .line 362
    invoke-virtual {v3, v4}, Lcom/itextpdf/layout/property/FloatPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/itextpdf/layout/property/ClearPropertyValue;->RIGHT:Lcom/itextpdf/layout/property/ClearPropertyValue;

    invoke-virtual {p1, v4}, Lcom/itextpdf/layout/property/ClearPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 365
    .end local v2    # "floatingRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v3    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    :cond_2
    goto :goto_0

    .line 363
    .restart local v2    # "floatingRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .restart local v3    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 366
    .end local v2    # "floatingRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v3    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    :cond_4
    return v0

    .line 355
    :cond_5
    :goto_2
    return v0
.end method

.method static isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 1
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 344
    const/16 v0, 0x63

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/FloatPropertyValue;

    invoke-static {p0, v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/property/FloatPropertyValue;)Z

    move-result v0

    return v0
.end method

.method static isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/property/FloatPropertyValue;)Z
    .locals 5
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p1, "kidFloatPropertyVal"    # Lcom/itextpdf/layout/property/FloatPropertyValue;

    .line 348
    const/16 v0, 0x34

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 349
    .local v0, "position":Ljava/lang/Integer;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    .line 350
    .local v3, "notAbsolutePos":Z
    :goto_1
    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    sget-object v4, Lcom/itextpdf/layout/property/FloatPropertyValue;->NONE:Lcom/itextpdf/layout/property/FloatPropertyValue;

    invoke-virtual {p1, v4}, Lcom/itextpdf/layout/property/FloatPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method static removeFloatsAboveRendererBottom(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 3
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ")V"
        }
    .end annotation

    .line 234
    .local p0, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v0

    .line 236
    .local v0, "bottom":F
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 237
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v2

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_0

    .line 238
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 236
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 242
    .end local v0    # "bottom":F
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method static removeParentArtifactsOnPageSplitIfOnlyFloatsOverflow(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 6
    .param p0, "overflowRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 370
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 371
    const/16 v0, 0x5a

    invoke-interface {p0, v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 372
    const/16 v0, 0x6a

    invoke-interface {p0, v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 374
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorders(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    .line 375
    .local v0, "borders":[Lcom/itextpdf/layout/borders/Border;
    const/16 v2, 0xd

    invoke-interface {p0, v2, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 376
    const/16 v2, 0xa

    invoke-interface {p0, v2, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 377
    const/4 v1, 0x1

    aget-object v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 378
    const/16 v2, 0xc

    new-instance v4, Lcom/itextpdf/layout/borders/SolidBorder;

    sget-object v5, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    invoke-direct {v4, v5, v1, v3}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;FF)V

    invoke-interface {p0, v2, v4}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 380
    :cond_0
    const/4 v1, 0x3

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 381
    const/16 v2, 0xb

    new-instance v4, Lcom/itextpdf/layout/borders/SolidBorder;

    sget-object v5, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    invoke-direct {v4, v5, v1, v3}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;FF)V

    invoke-interface {p0, v2, v4}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 384
    :cond_1
    const/16 v1, 0x2e

    invoke-static {v3}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 385
    const/16 v1, 0x2b

    invoke-static {v3}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 386
    const/16 v1, 0x32

    invoke-static {v3}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 387
    const/16 v1, 0x2f

    invoke-static {v3}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 389
    return-void
.end method
