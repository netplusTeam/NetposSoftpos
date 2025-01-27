.class public Lcom/itextpdf/layout/renderer/LineRenderer;
.super Lcom/itextpdf/layout/renderer/AbstractRenderer;
.source "LineRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;,
        Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;,
        Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;
    }
.end annotation


# static fields
.field private static final MIN_MAX_WIDTH_CORRECTION_EPS:F = 0.001f

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field protected levels:[B

.field protected maxAscent:F

.field private maxBlockAscent:F

.field private maxBlockDescent:F

.field protected maxDescent:F

.field maxTextAscent:F

.field maxTextDescent:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const-class v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/layout/renderer/LineRenderer;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;-><init>()V

    return-void
.end method

.method static adjustChildPositionsAfterReordering(Ljava/util/List;F)V
    .locals 13
    .param p1, "initialXPos"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;F)V"
        }
    .end annotation

    .line 1072
    .local p0, "children":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    move v0, p1

    .line 1073
    .local v0, "currentXPos":F
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1074
    .local v2, "child":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-static {v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1076
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v3, :cond_4

    .line 1077
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->calculateLineWidth()F

    move-result v3

    .line 1078
    .local v3, "currentWidth":F
    move-object v4, v2

    check-cast v4, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->getMargins()[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v4

    .line 1079
    .local v4, "margins":[Lcom/itextpdf/layout/property/UnitValue;
    const/4 v5, 0x1

    aget-object v6, v4, v5

    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v6

    const/4 v7, 0x0

    const-string v8, "Property {0} in percents is not supported"

    if-nez v6, :cond_0

    sget-object v6, Lcom/itextpdf/layout/renderer/LineRenderer;->logger:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1080
    new-array v9, v5, [Ljava/lang/Object;

    const-string/jumbo v10, "right margin"

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1082
    :cond_0
    const/4 v6, 0x3

    aget-object v9, v4, v6

    invoke-virtual {v9}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v9

    if-nez v9, :cond_1

    sget-object v9, Lcom/itextpdf/layout/renderer/LineRenderer;->logger:Lorg/slf4j/Logger;

    invoke-interface {v9}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1083
    new-array v10, v5, [Ljava/lang/Object;

    const-string v11, "left margin"

    aput-object v11, v10, v7

    invoke-static {v8, v10}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1085
    :cond_1
    move-object v9, v2

    check-cast v9, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v9}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPaddings()[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v9

    .line 1086
    .local v9, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    aget-object v10, v9, v5

    invoke-virtual {v10}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v10, Lcom/itextpdf/layout/renderer/LineRenderer;->logger:Lorg/slf4j/Logger;

    invoke-interface {v10}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1087
    new-array v11, v5, [Ljava/lang/Object;

    const-string/jumbo v12, "right padding"

    aput-object v12, v11, v7

    invoke-static {v8, v11}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1089
    :cond_2
    aget-object v10, v9, v6

    invoke-virtual {v10}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v10

    if-nez v10, :cond_3

    sget-object v10, Lcom/itextpdf/layout/renderer/LineRenderer;->logger:Lorg/slf4j/Logger;

    invoke-interface {v10}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1090
    new-array v11, v5, [Ljava/lang/Object;

    const-string v12, "left padding"

    aput-object v12, v11, v7

    invoke-static {v8, v11}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1092
    :cond_3
    aget-object v7, v4, v5

    invoke-virtual {v7}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v7

    aget-object v8, v4, v6

    invoke-virtual {v8}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v8

    add-float/2addr v7, v8

    aget-object v5, v9, v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v5

    add-float/2addr v7, v5

    aget-object v5, v9, v6

    invoke-virtual {v5}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v5

    add-float/2addr v7, v5

    add-float/2addr v3, v7

    .line 1093
    move-object v5, v2

    check-cast v5, Lcom/itextpdf/layout/renderer/TextRenderer;

    iget-object v5, v5, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1094
    .end local v4    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v9    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    goto :goto_1

    .line 1095
    .end local v3    # "currentWidth":F
    :cond_4
    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    .line 1096
    .restart local v3    # "currentWidth":F
    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v4

    sub-float v4, v0, v4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 1098
    :goto_1
    add-float/2addr v0, v3

    .line 1100
    .end local v2    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v3    # "currentWidth":F
    :cond_5
    goto/16 :goto_0

    .line 1101
    :cond_6
    return-void
.end method

.method private adjustLineOnFloatPlaced(Lcom/itextpdf/kernel/geom/Rectangle;ILcom/itextpdf/layout/property/FloatPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 4
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "childPos"    # I
    .param p3, "kidFloatPropertyVal"    # Lcom/itextpdf/layout/property/FloatPropertyValue;
    .param p4, "justPlacedFloatBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1114
    invoke-virtual {p4}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-virtual {p4}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_2

    .line 1118
    :cond_0
    invoke-virtual {p4}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    .line 1119
    .local v0, "floatWidth":F
    sget-object v1, Lcom/itextpdf/layout/property/FloatPropertyValue;->LEFT:Lcom/itextpdf/layout/property/FloatPropertyValue;

    invoke-virtual {p3, v1}, Lcom/itextpdf/layout/property/FloatPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1120
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1121
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1122
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 1123
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1124
    .local v2, "prevChild":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-static {v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1125
    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 1122
    .end local v2    # "prevChild":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    goto :goto_1

    .line 1130
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1132
    :goto_1
    return-void

    .line 1115
    .end local v0    # "floatWidth":F
    :cond_4
    :goto_2
    return-void
.end method

.method private applyOtf()Lcom/itextpdf/layout/property/BaseDirection;
    .locals 5

    .line 1300
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/BaseDirection;

    .line 1301
    .local v1, "baseDirection":Lcom/itextpdf/layout/property/BaseDirection;
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1302
    .local v3, "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    instance-of v4, v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v4, :cond_1

    .line 1303
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyOtf()V

    .line 1304
    if-eqz v1, :cond_0

    sget-object v4, Lcom/itextpdf/layout/property/BaseDirection;->NO_BIDI:Lcom/itextpdf/layout/property/BaseDirection;

    if-ne v1, v4, :cond_1

    .line 1305
    :cond_0
    invoke-interface {v3, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/itextpdf/layout/property/BaseDirection;

    .line 1308
    .end local v3    # "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_1
    goto :goto_0

    .line 1309
    :cond_2
    return-object v1
.end method

.method private calculateTab(Lcom/itextpdf/kernel/geom/Rectangle;FLcom/itextpdf/layout/element/TabStop;Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;)F
    .locals 8
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "curWidth"    # F
    .param p3, "tabStop"    # Lcom/itextpdf/layout/element/TabStop;
    .param p5, "tabRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "F",
            "Lcom/itextpdf/layout/element/TabStop;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ")F"
        }
    .end annotation

    .line 1205
    .local p4, "affectedRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    const/4 v0, 0x0

    .line 1206
    .local v0, "sumOfAffectedRendererWidths":F
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1207
    .local v2, "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    add-float/2addr v0, v3

    .line 1208
    .end local v2    # "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_0

    .line 1209
    :cond_0
    const/4 v1, 0x0

    .line 1210
    .local v1, "tabWidth":F
    sget-object v2, Lcom/itextpdf/layout/renderer/LineRenderer$1;->$SwitchMap$com$itextpdf$layout$property$TabAlignment:[I

    invoke-virtual {p3}, Lcom/itextpdf/layout/element/TabStop;->getTabAlignment()Lcom/itextpdf/layout/property/TabAlignment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/TabAlignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    .line 1218
    :pswitch_0
    const/high16 v2, -0x40800000    # -1.0f

    .line 1219
    .local v2, "anchorPosition":F
    const/4 v3, 0x0

    .line 1220
    .local v3, "processedRenderersWidth":F
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/high16 v6, -0x40800000    # -1.0f

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1221
    .local v5, "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    move-object v7, v5

    check-cast v7, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v7}, Lcom/itextpdf/layout/renderer/TextRenderer;->getTabAnchorCharacterPosition()F

    move-result v2

    .line 1222
    cmpl-float v7, v6, v2

    if-eqz v7, :cond_1

    .line 1223
    goto :goto_2

    .line 1225
    :cond_1
    invoke-interface {v5}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    add-float/2addr v3, v6

    .line 1227
    .end local v5    # "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_1

    .line 1228
    :cond_2
    :goto_2
    cmpl-float v4, v2, v6

    if-nez v4, :cond_3

    .line 1229
    const/4 v2, 0x0

    .line 1231
    :cond_3
    invoke-virtual {p3}, Lcom/itextpdf/layout/element/TabStop;->getTabPosition()F

    move-result v4

    sub-float/2addr v4, p2

    sub-float/2addr v4, v2

    sub-float v1, v4, v3

    goto :goto_3

    .line 1215
    .end local v2    # "anchorPosition":F
    .end local v3    # "processedRenderersWidth":F
    :pswitch_1
    invoke-virtual {p3}, Lcom/itextpdf/layout/element/TabStop;->getTabPosition()F

    move-result v2

    sub-float/2addr v2, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    sub-float v1, v2, v3

    .line 1216
    goto :goto_3

    .line 1212
    :pswitch_2
    invoke-virtual {p3}, Lcom/itextpdf/layout/element/TabStop;->getTabPosition()F

    move-result v2

    sub-float/2addr v2, p2

    sub-float v1, v2, v0

    .line 1213
    nop

    .line 1234
    :goto_3
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    .line 1235
    const/4 v1, 0x0

    .line 1237
    :cond_4
    add-float v2, p2, v1

    add-float/2addr v2, v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 1238
    add-float v2, p2, v0

    add-float/2addr v2, v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 1241
    :cond_5
    const/16 v2, 0x4d

    invoke-static {v1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v3

    invoke-interface {p5, v2, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1242
    const/16 v2, 0x55

    iget v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    iget v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v3

    invoke-interface {p5, v2, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1244
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateTab(Lcom/itextpdf/layout/renderer/IRenderer;FF)Lcom/itextpdf/layout/element/TabStop;
    .locals 5
    .param p1, "childRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "curWidth"    # F
    .param p3, "lineWidth"    # F

    .line 1182
    invoke-direct {p0, p2}, Lcom/itextpdf/layout/renderer/LineRenderer;->getNextTabStop(F)Lcom/itextpdf/layout/element/TabStop;

    move-result-object v0

    .line 1184
    .local v0, "nextTabStop":Lcom/itextpdf/layout/element/TabStop;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1185
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/renderer/LineRenderer;->processDefaultTab(Lcom/itextpdf/layout/renderer/IRenderer;FF)V

    .line 1186
    return-object v1

    .line 1189
    :cond_0
    const/16 v2, 0x44

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/TabStop;->getTabLeader()Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1190
    const/16 v2, 0x4d

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/TabStop;->getTabPosition()F

    move-result v3

    sub-float/2addr v3, p2

    invoke-static {v3}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1191
    const/16 v2, 0x55

    iget v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    iget v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1193
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/TabStop;->getTabAlignment()Lcom/itextpdf/layout/property/TabAlignment;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/layout/property/TabAlignment;->LEFT:Lcom/itextpdf/layout/property/TabAlignment;

    if-ne v2, v3, :cond_1

    .line 1194
    return-object v1

    .line 1197
    :cond_1
    return-object v0
.end method

.method private decreaseRelativeWidthByChildAdditionalWidth(Lcom/itextpdf/layout/renderer/IRenderer;F)F
    .locals 3
    .param p1, "childRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "normalizedChildWidth"    # F

    .line 1519
    instance-of v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v0, :cond_1

    .line 1520
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    .line 1521
    .local v0, "dummyRect":Lcom/itextpdf/kernel/geom/Rectangle;
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1522
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/LineRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1523
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1524
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1526
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p2

    .line 1528
    .end local v0    # "dummyRect":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_1
    return p2
.end method

.method private getLastNonFloatChildRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 4

    .line 1150
    const/4 v0, 0x0

    .line 1151
    .local v0, "result":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1152
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1153
    .local v2, "current":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-static {v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1154
    move-object v0, v2

    .line 1155
    goto :goto_1

    .line 1151
    .end local v2    # "current":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1158
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method private getNextTabStop(F)Lcom/itextpdf/layout/element/TabStop;
    .locals 4
    .param p1, "curWidth"    # F

    .line 1162
    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    .line 1164
    .local v0, "tabStops":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Float;Lcom/itextpdf/layout/element/TabStop;>;"
    const/4 v1, 0x0

    .line 1165
    .local v1, "nextTabStopEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Float;Lcom/itextpdf/layout/element/TabStop;>;"
    const/4 v2, 0x0

    .line 1167
    .local v2, "nextTabStop":Lcom/itextpdf/layout/element/TabStop;
    if-eqz v0, :cond_0

    .line 1168
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 1169
    :cond_0
    if-eqz v1, :cond_1

    .line 1170
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/itextpdf/layout/element/TabStop;

    .line 1173
    :cond_1
    return-object v2
.end method

.method static isChildFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 2
    .param p0, "childRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1313
    const/16 v0, 0x63

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/FloatPropertyValue;

    .line 1314
    .local v0, "kidFloatPropertyVal":Lcom/itextpdf/layout/property/FloatPropertyValue;
    instance-of v1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v1, :cond_0

    .line 1315
    invoke-static {p0, v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/property/FloatPropertyValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1314
    :goto_0
    return v1
.end method

.method static isInlineBlockChild(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 1
    .param p0, "child"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1319
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

.method private processDefaultTab(Lcom/itextpdf/layout/renderer/IRenderer;FF)V
    .locals 5
    .param p1, "tabRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "curWidth"    # F
    .param p3, "lineWidth"    # F

    .line 1248
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    .line 1249
    .local v0, "tabDefault":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    rem-float v2, p2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1250
    .local v1, "tabWidth":Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, p2

    cmpl-float v2, v2, p3

    if-lez v2, :cond_0

    .line 1251
    sub-float v2, p3, p2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1252
    :cond_0
    const/16 v2, 0x4d

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1253
    const/16 v2, 0x55

    iget v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    iget v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1254
    return-void
.end method

.method static reorder(Lcom/itextpdf/layout/renderer/LineRenderer;Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;[I)V
    .locals 13
    .param p0, "toProcess"    # Lcom/itextpdf/layout/renderer/LineRenderer;
    .param p1, "splitLineIntoGlyphsResult"    # Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;
    .param p2, "newOrder"    # [I

    .line 1035
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->getStarterNonTextRenderers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->setChildRenderers(Ljava/util/List;)V

    .line 1037
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->getLineGlyphs()Ljava/util/List;

    move-result-object v0

    .line 1038
    .local v0, "lineGlyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;>;"
    const/4 v1, 0x0

    .line 1039
    .local v1, "initialPos":I
    move v2, v1

    .local v2, "offset":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1040
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    iget-object v3, v3, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;->renderer:Lcom/itextpdf/layout/renderer/TextRenderer;

    .line 1041
    .local v3, "renderer":Lcom/itextpdf/layout/renderer/TextRenderer;
    new-instance v4, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-direct {v4, v3}, Lcom/itextpdf/layout/renderer/TextRenderer;-><init>(Lcom/itextpdf/layout/renderer/TextRenderer;)V

    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->removeReversedRanges()Lcom/itextpdf/layout/renderer/TextRenderer;

    move-result-object v4

    .line 1042
    .local v4, "newRenderer":Lcom/itextpdf/layout/renderer/TextRenderer;
    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 1045
    invoke-virtual {p1, v3}, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->getInsertAfterAndRemove(Lcom/itextpdf/layout/renderer/TextRenderer;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/layout/renderer/LineRenderer;->addAllChildRenderers(Ljava/util/List;)V

    .line 1047
    new-instance v5, Lcom/itextpdf/io/font/otf/GlyphLine;

    iget-object v6, v4, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {v5, v6}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;)V

    iput-object v5, v4, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 1048
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1049
    .local v5, "replacementGlyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    const/4 v6, 0x0

    .line 1050
    .local v6, "reversed":Z
    move v7, v2

    .local v7, "pos":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    iget-object v8, v8, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;->renderer:Lcom/itextpdf/layout/renderer/TextRenderer;

    if-ne v8, v3, :cond_2

    .line 1051
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    iget-object v8, v8, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    add-int/lit8 v8, v7, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v8, v9, :cond_0

    add-int/lit8 v8, v7, 0x1

    .line 1053
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    iget-object v8, v8, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;->renderer:Lcom/itextpdf/layout/renderer/TextRenderer;

    if-ne v8, v3, :cond_0

    aget v8, p2, v7

    add-int/lit8 v9, v7, 0x1

    aget v9, p2, v9

    add-int/2addr v9, v10

    if-ne v8, v9, :cond_0

    add-int/lit8 v8, v7, 0x1

    .line 1055
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    iget-object v8, v8, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    invoke-static {v8}, Lcom/itextpdf/io/util/TextUtil;->isSpaceOrWhitespace(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1056
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    iget-object v8, v8, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    invoke-static {v8}, Lcom/itextpdf/io/util/TextUtil;->isSpaceOrWhitespace(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1057
    const/4 v6, 0x1

    .line 1058
    goto :goto_2

    .line 1060
    :cond_0
    if-eqz v6, :cond_1

    .line 1061
    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->initReversedRanges()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v11, 0x0

    sub-int v12, v1, v2

    aput v12, v9, v11

    sub-int v11, v7, v2

    aput v11, v9, v10

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    const/4 v6, 0x0

    .line 1064
    :cond_1
    add-int/lit8 v1, v7, 0x1

    .line 1050
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1067
    .end local v7    # "pos":I
    :cond_2
    iget-object v7, v4, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v7, v5}, Lcom/itextpdf/io/font/otf/GlyphLine;->setGlyphs(Ljava/util/List;)V

    .line 1039
    .end local v3    # "renderer":Lcom/itextpdf/layout/renderer/TextRenderer;
    .end local v4    # "newRenderer":Lcom/itextpdf/layout/renderer/TextRenderer;
    .end local v5    # "replacementGlyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    .end local v6    # "reversed":Z
    move v2, v1

    goto/16 :goto_0

    .line 1069
    .end local v2    # "offset":I
    :cond_3
    return-void
.end method

.method private replaceSplitRendererKidFloats(Ljava/util/Map;Lcom/itextpdf/layout/renderer/LineRenderer;)V
    .locals 4
    .param p2, "splitRenderer"    # Lcom/itextpdf/layout/renderer/LineRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;",
            "Lcom/itextpdf/layout/renderer/LineRenderer;",
            ")V"
        }
    .end annotation

    .line 1135
    .local p1, "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
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

    .line 1136
    .local v1, "splitFloat":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1137
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-virtual {p2, v2, v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->setChildRenderer(ILcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    goto :goto_1

    .line 1139
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->setChildRenderer(ILcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1141
    .end local v1    # "splitFloat":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :goto_1
    goto :goto_0

    .line 1142
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_3

    .line 1143
    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1144
    invoke-virtual {p2, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->removeChildRenderer(I)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1142
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1147
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private resolveChildrenFonts()V
    .locals 5

    .line 1497
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1498
    .local v0, "newChildRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    const/4 v1, 0x0

    .line 1499
    .local v1, "updateChildRenderers":Z
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1500
    .local v3, "child":Lcom/itextpdf/layout/renderer/IRenderer;
    instance-of v4, v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v4, :cond_0

    .line 1501
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v4, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->resolveFonts(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1502
    const/4 v1, 0x1

    goto :goto_1

    .line 1505
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1507
    .end local v3    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1510
    :cond_2
    if-eqz v1, :cond_3

    .line 1511
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->setChildRenderers(Ljava/util/List;)V

    .line 1513
    :cond_3
    return-void
.end method

.method static splitLineIntoGlyphs(Lcom/itextpdf/layout/renderer/LineRenderer;)Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;
    .locals 10
    .param p0, "toSplit"    # Lcom/itextpdf/layout/renderer/LineRenderer;

    .line 1008
    new-instance v0, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;

    invoke-direct {v0}, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;-><init>()V

    .line 1010
    .local v0, "result":Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;
    const/4 v1, 0x0

    .line 1011
    .local v1, "newLineFound":Z
    const/4 v2, 0x0

    .line 1012
    .local v2, "lastTextRenderer":Lcom/itextpdf/layout/renderer/TextRenderer;
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1013
    .local v4, "child":Lcom/itextpdf/layout/renderer/IRenderer;
    if-eqz v1, :cond_0

    .line 1014
    goto :goto_4

    .line 1016
    :cond_0
    instance-of v5, v4, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v5, :cond_3

    .line 1017
    move-object v5, v4

    check-cast v5, Lcom/itextpdf/layout/renderer/TextRenderer;

    iget-object v5, v5, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 1018
    .local v5, "childLine":Lcom/itextpdf/io/font/otf/GlyphLine;
    iget v6, v5, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .local v6, "i":I
    :goto_1
    iget v7, v5, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v6, v7, :cond_2

    .line 1019
    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/io/util/TextUtil;->isNewLine(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1020
    const/4 v1, 0x1

    .line 1021
    goto :goto_2

    .line 1023
    :cond_1
    new-instance v7, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v8

    move-object v9, v4

    check-cast v9, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;-><init>(Lcom/itextpdf/io/font/otf/Glyph;Lcom/itextpdf/layout/renderer/TextRenderer;)V

    invoke-virtual {v0, v7}, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->addLineGlyph(Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;)V

    .line 1018
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1025
    .end local v6    # "i":I
    :cond_2
    :goto_2
    move-object v2, v4

    check-cast v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    .line 1026
    .end local v5    # "childLine":Lcom/itextpdf/io/font/otf/GlyphLine;
    goto :goto_3

    .line 1027
    :cond_3
    invoke-virtual {v0, v2, v4}, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->addInsertAfter(Lcom/itextpdf/layout/renderer/TextRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 1029
    .end local v4    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    :goto_3
    goto :goto_0

    .line 1030
    :cond_4
    :goto_4
    return-object v0
.end method

.method private splitNotFittingFloat(ILcom/itextpdf/layout/layout/LayoutResult;)[Lcom/itextpdf/layout/renderer/LineRenderer;
    .locals 5
    .param p1, "childPos"    # I
    .param p2, "childResult"    # Lcom/itextpdf/layout/layout/LayoutResult;

    .line 1104
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->split()[Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object v0

    .line 1105
    .local v0, "split":[Lcom/itextpdf/layout/renderer/LineRenderer;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->addAllChildRenderers(Ljava/util/List;)V

    .line 1106
    aget-object v1, v0, v1

    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 1107
    const/4 v1, 0x1

    aget-object v2, v0, v1

    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 1108
    aget-object v1, v0, v1

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->addAllChildRenderers(Ljava/util/List;)V

    .line 1110
    return-object v0
.end method

.method private updateBidiLevels(ILcom/itextpdf/layout/property/BaseDirection;)V
    .locals 9
    .param p1, "totalNumberOfTrimmedGlyphs"    # I
    .param p2, "baseDirection"    # Lcom/itextpdf/layout/property/BaseDirection;

    .line 1462
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    if-eqz v0, :cond_0

    .line 1463
    array-length v1, v0

    invoke-static {v0, p1, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    .line 1466
    :cond_0
    const/4 v0, 0x0

    .line 1467
    .local v0, "unicodeIdsReorderingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    if-nez v1, :cond_7

    if-eqz p2, :cond_7

    sget-object v1, Lcom/itextpdf/layout/property/BaseDirection;->NO_BIDI:Lcom/itextpdf/layout/property/BaseDirection;

    if-eq p2, v1, :cond_7

    .line 1468
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1469
    const/4 v1, 0x0

    .line 1470
    .local v1, "newLineFound":Z
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1471
    .local v3, "child":Lcom/itextpdf/layout/renderer/IRenderer;
    if-eqz v1, :cond_1

    .line 1472
    goto :goto_4

    .line 1474
    :cond_1
    instance-of v4, v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v4, :cond_4

    .line 1475
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->getText()Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v4

    .line 1476
    .local v4, "text":Lcom/itextpdf/io/font/otf/GlyphLine;
    iget v5, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .local v5, "i":I
    :goto_1
    iget v6, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v5, v6, :cond_4

    .line 1477
    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v6

    .line 1478
    .local v6, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-static {v6}, Lcom/itextpdf/io/util/TextUtil;->isNewLine(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1479
    const/4 v1, 0x1

    .line 1480
    goto :goto_3

    .line 1484
    :cond_2
    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v7

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicodeChars()[C

    move-result-object v7

    const/4 v8, 0x0

    aget-char v7, v7, v8

    .line 1485
    .local v7, "unicode":I
    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1476
    .end local v6    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v7    # "unicode":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1488
    .end local v3    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v4    # "text":Lcom/itextpdf/io/font/otf/GlyphLine;
    .end local v5    # "i":I
    :cond_4
    :goto_3
    goto :goto_0

    .line 1489
    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-static {v0}, Lcom/itextpdf/io/util/ArrayUtil;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-static {p2, v2}, Lcom/itextpdf/layout/renderer/TypographyUtils;->getBidiLevels(Lcom/itextpdf/layout/property/BaseDirection;[I)[B

    move-result-object v2

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    iput-object v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    .line 1491
    .end local v1    # "newLineFound":Z
    :cond_7
    return-void
.end method

.method private updateChildrenParent()V
    .locals 2

    .line 1257
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1258
    .local v1, "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-interface {v1, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1259
    .end local v1    # "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_0

    .line 1260
    :cond_0
    return-void
.end method


# virtual methods
.method protected adjustChildrenYLine()Lcom/itextpdf/layout/renderer/LineRenderer;
    .locals 6

    .line 899
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    sub-float/2addr v0, v1

    .line 900
    .local v0, "actualYLine":F
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 901
    .local v2, "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-static {v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 902
    goto :goto_0

    .line 904
    :cond_0
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/ILeafElementRenderer;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 905
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/renderer/ILeafElementRenderer;

    invoke-interface {v3}, Lcom/itextpdf/layout/renderer/ILeafElementRenderer;->getDescent()F

    move-result v3

    .line 906
    .local v3, "descent":F
    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v5

    sub-float v5, v0, v5

    add-float/2addr v5, v3

    invoke-interface {v2, v4, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 907
    .end local v3    # "descent":F
    goto :goto_3

    .line 908
    :cond_1
    invoke-static {v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->isInlineBlockChild(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, v2, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getLastYLineRecursively()Ljava/lang/Float;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 909
    .local v3, "yLine":Ljava/lang/Float;
    :goto_1
    if-nez v3, :cond_3

    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v5

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :goto_2
    sub-float v5, v0, v5

    invoke-interface {v2, v4, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 911
    .end local v2    # "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v3    # "yLine":Ljava/lang/Float;
    :goto_3
    goto :goto_0

    .line 912
    :cond_4
    return-object p0
.end method

.method protected applyLeading(F)V
    .locals 3
    .param p1, "deltaY"    # F

    .line 916
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 917
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 918
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

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

    .line 919
    .local v1, "child":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-static {v1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 920
    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 922
    .end local v1    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_0
    goto :goto_0

    .line 923
    :cond_1
    return-void
.end method

.method protected baseCharactersCount()I
    .locals 4

    .line 852
    const/4 v0, 0x0

    .line 853
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 854
    .local v2, "child":Lcom/itextpdf/layout/renderer/IRenderer;
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 855
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->baseCharactersCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 857
    .end local v2    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_0
    goto :goto_0

    .line 858
    :cond_1
    return v0
.end method

.method public containsImage()Z
    .locals 3

    .line 942
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

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

    .line 943
    .local v1, "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    instance-of v2, v1, Lcom/itextpdf/layout/renderer/ImageRenderer;

    if-eqz v2, :cond_0

    .line 944
    const/4 v0, 0x1

    return v0

    .line 946
    .end local v1    # "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_0
    goto :goto_0

    .line 947
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected createOverflowRenderer()Lcom/itextpdf/layout/renderer/LineRenderer;
    .locals 1

    .line 875
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    return-object v0
.end method

.method protected createSplitRenderer()Lcom/itextpdf/layout/renderer/LineRenderer;
    .locals 1

    .line 871
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    return-object v0
.end method

.method getAscentDescentOfLayoutedChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/layout/LayoutResult;Lcom/itextpdf/layout/property/RenderingMode;Z)[F
    .locals 5
    .param p1, "childRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "childResult"    # Lcom/itextpdf/layout/layout/LayoutResult;
    .param p3, "childRenderingMode"    # Lcom/itextpdf/layout/property/RenderingMode;
    .param p4, "isInlineBlockChild"    # Z

    .line 1363
    const/4 v0, 0x0

    .line 1364
    .local v0, "childAscent":F
    const/4 v1, 0x0

    .line 1365
    .local v1, "childDescent":F
    instance-of v2, p1, Lcom/itextpdf/layout/renderer/ILeafElementRenderer;

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    .line 1366
    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 1367
    sget-object v2, Lcom/itextpdf/layout/property/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/property/RenderingMode;

    if-ne v2, p3, :cond_0

    instance-of v2, p1, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v2, :cond_0

    .line 1368
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-static {v2}, Lcom/itextpdf/layout/renderer/LineHeightHelper;->getActualAscenderDescender(Lcom/itextpdf/layout/renderer/AbstractRenderer;)[F

    move-result-object v2

    return-object v2

    .line 1370
    :cond_0
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/layout/renderer/ILeafElementRenderer;

    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/ILeafElementRenderer;->getAscent()F

    move-result v0

    .line 1371
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/layout/renderer/ILeafElementRenderer;

    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/ILeafElementRenderer;->getDescent()F

    move-result v1

    goto :goto_1

    .line 1373
    :cond_1
    if-eqz p4, :cond_4

    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 1374
    instance-of v2, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v2, :cond_3

    .line 1375
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getLastYLineRecursively()Ljava/lang/Float;

    move-result-object v2

    .line 1376
    .local v2, "yLine":Ljava/lang/Float;
    if-nez v2, :cond_2

    .line 1377
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    goto :goto_0

    .line 1379
    :cond_2
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v3, v4

    .line 1380
    .end local v0    # "childAscent":F
    .local v3, "childAscent":F
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v4

    sub-float/2addr v0, v4

    neg-float v1, v0

    move v0, v3

    .line 1382
    .end local v2    # "yLine":Ljava/lang/Float;
    .end local v3    # "childAscent":F
    .restart local v0    # "childAscent":F
    :goto_0
    goto :goto_1

    .line 1383
    :cond_3
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    .line 1387
    :cond_4
    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2
.end method

.method getBottomLeadingIndent(Lcom/itextpdf/layout/property/Leading;)F
    .locals 8
    .param p1, "leading"    # Lcom/itextpdf/layout/property/Leading;

    .line 987
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/Leading;->getType()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    packed-switch v0, :pswitch_data_0

    .line 1003
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 991
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v2

    const/16 v3, 0x18

    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/property/UnitValue;

    .line 992
    .local v2, "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 993
    sget-object v4, Lcom/itextpdf/layout/renderer/LineRenderer;->logger:Lorg/slf4j/Logger;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const-string v3, "Property {0} in percents is not supported"

    invoke-static {v3, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 999
    :cond_0
    iget v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    cmpl-float v3, v3, v0

    if-nez v3, :cond_1

    iget v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    cmpl-float v3, v3, v0

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->containsImage()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    .line 1000
    .local v3, "textAscent":F
    :goto_0
    iget v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    cmpl-float v4, v4, v0

    if-nez v4, :cond_2

    iget v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    cmpl-float v0, v4, v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->containsImage()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    neg-float v0, v0

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v4

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    .line 1001
    .local v0, "textDescent":F
    :goto_1
    neg-float v4, v0

    sub-float v5, v3, v0

    invoke-virtual {p1}, Lcom/itextpdf/layout/property/Leading;->getValue()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    div-float/2addr v5, v1

    add-float/2addr v4, v5

    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockDescent:F

    neg-float v1, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    add-float/2addr v1, v4

    return v1

    .line 989
    .end local v0    # "textDescent":F
    .end local v2    # "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    .end local v3    # "textAscent":F
    :pswitch_1
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/Leading;->getValue()F

    move-result v0

    iget v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockAscent:F

    iget v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockDescent:F

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getFirstYLineRecursively()Ljava/lang/Float;
    .locals 1

    .line 770
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getYLine()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected getLastYLineRecursively()Ljava/lang/Float;
    .locals 1

    .line 775
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getYLine()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getLeadingValue(Lcom/itextpdf/layout/property/Leading;)F
    .locals 3
    .param p1, "leading"    # Lcom/itextpdf/layout/property/Leading;

    .line 753
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/Leading;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 759
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 757
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/LineRenderer;->getTopLeadingIndent(Lcom/itextpdf/layout/property/Leading;)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/LineRenderer;->getBottomLeadingIndent(Lcom/itextpdf/layout/property/Leading;)F

    move-result v1

    add-float/2addr v0, v1

    return v0

    .line 755
    :pswitch_1
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/Leading;->getValue()F

    move-result v0

    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockAscent:F

    iget v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockDescent:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMaxAscent()F
    .locals 1

    .line 741
    iget v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    return v0
.end method

.method public getMaxDescent()F
    .locals 1

    .line 745
    iget v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    return v0
.end method

.method public getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 5

    .line 952
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getInfWidth()F

    move-result v3

    const v4, 0x49742400    # 1000000.0f

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/layout/LineLayoutResult;

    .line 953
    .local v0, "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v1

    return-object v1
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 765
    new-instance v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-direct {v0}, Lcom/itextpdf/layout/renderer/LineRenderer;-><init>()V

    return-object v0
.end method

.method protected getNumberOfSpaces()I
    .locals 4

    .line 823
    const/4 v0, 0x0

    .line 824
    .local v0, "spaces":I
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 825
    .local v2, "child":Lcom/itextpdf/layout/renderer/IRenderer;
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 826
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->getNumberOfSpaces()I

    move-result v3

    add-int/2addr v0, v3

    .line 828
    .end local v2    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_0
    goto :goto_0

    .line 829
    :cond_1
    return v0
.end method

.method getTopLeadingIndent(Lcom/itextpdf/layout/property/Leading;)F
    .locals 7
    .param p1, "leading"    # Lcom/itextpdf/layout/property/Leading;

    .line 966
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/Leading;->getType()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    packed-switch v0, :pswitch_data_0

    .line 982
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 970
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v2

    const/16 v3, 0x18

    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/property/UnitValue;

    .line 971
    .local v2, "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 972
    sget-object v4, Lcom/itextpdf/layout/renderer/LineRenderer;->logger:Lorg/slf4j/Logger;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const-string v3, "Property {0} in percents is not supported"

    invoke-static {v3, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 978
    :cond_0
    iget v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    cmpl-float v3, v3, v0

    if-nez v3, :cond_1

    iget v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    cmpl-float v3, v3, v0

    if-nez v3, :cond_1

    iget v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->containsImage()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    .line 979
    .local v3, "textAscent":F
    :goto_0
    iget v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    cmpl-float v4, v4, v0

    if-nez v4, :cond_2

    iget v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    cmpl-float v4, v4, v0

    if-nez v4, :cond_2

    iget v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->containsImage()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    neg-float v0, v0

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v4

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    .line 980
    .local v0, "textDescent":F
    :goto_1
    sub-float v4, v3, v0

    invoke-virtual {p1}, Lcom/itextpdf/layout/property/Leading;->getValue()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    div-float/2addr v4, v1

    add-float/2addr v4, v3

    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockAscent:F

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    sub-float/2addr v1, v4

    return v1

    .line 968
    .end local v0    # "textDescent":F
    .end local v2    # "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    .end local v3    # "textAscent":F
    :pswitch_1
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/Leading;->getValue()F

    move-result v0

    iget v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockAscent:F

    iget v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockDescent:F

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getYLine()F
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    sub-float/2addr v0, v1

    return v0
.end method

.method hasChildRendererInHtmlMode()Z
    .locals 4

    .line 957
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

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

    .line 958
    .local v1, "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    sget-object v2, Lcom/itextpdf/layout/property/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/property/RenderingMode;

    const/16 v3, 0x7b

    invoke-interface {v1, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/property/RenderingMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 959
    const/4 v0, 0x1

    return v0

    .line 961
    .end local v1    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_0
    goto :goto_0

    .line 962
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isForceOverflowForTextRendererPartialResult(Lcom/itextpdf/layout/renderer/IRenderer;ZLcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/layout/layout/LayoutContext;Lcom/itextpdf/kernel/geom/Rectangle;Z)Z
    .locals 4
    .param p1, "childRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "wasXOverflowChanged"    # Z
    .param p3, "oldXOverflow"    # Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .param p4, "layoutContext"    # Lcom/itextpdf/layout/layout/LayoutContext;
    .param p5, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p6, "wasParentsHeightClipped"    # Z

    .line 1339
    const/16 v0, 0x67

    if-eqz p2, :cond_0

    .line 1340
    invoke-virtual {p0, v0, p3}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1342
    :cond_0
    new-instance v1, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v2, Lcom/itextpdf/layout/layout/LayoutArea;

    .line 1343
    invoke-virtual {p4}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v3

    invoke-direct {v2, v3, p5}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v1, v2, p6}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    .line 1342
    invoke-interface {p1, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v1

    .line 1345
    .local v1, "newLayoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    if-eqz p2, :cond_1

    .line 1346
    sget-object v2, Lcom/itextpdf/layout/property/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1348
    :cond_1
    instance-of v0, v1, Lcom/itextpdf/layout/layout/TextLayoutResult;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/itextpdf/layout/layout/TextLayoutResult;

    .line 1349
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/TextLayoutResult;->isWordHasBeenSplit()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1348
    :goto_0
    return v0
.end method

.method public justify(F)V
    .locals 22
    .param p1, "width"    # F

    .line 779
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 780
    .local v2, "ratio":F
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getLastNonFloatChildRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    .line 781
    .local v3, "lastChildRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    if-nez v3, :cond_0

    .line 782
    return-void

    .line 784
    :cond_0
    iget-object v4, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v4

    add-float/2addr v4, v1

    .line 785
    invoke-interface {v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-interface {v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    .line 786
    .local v4, "freeWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getNumberOfSpaces()I

    move-result v5

    .line 787
    .local v5, "numberOfSpaces":I
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->baseCharactersCount()I

    move-result v6

    .line 788
    .local v6, "baseCharsCount":I
    int-to-float v7, v5

    mul-float/2addr v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v9, v8, v2

    add-int/lit8 v10, v6, -0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v7, v9

    div-float v7, v4, v7

    .line 791
    .local v7, "baseFactor":F
    invoke-static {v7}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 792
    const/4 v7, 0x0

    .line 794
    :cond_1
    mul-float v9, v2, v7

    .line 795
    .local v9, "wordSpacing":F
    sub-float v10, v8, v2

    mul-float/2addr v10, v7

    .line 797
    .local v10, "characterSpacing":F
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v11

    .line 798
    .local v11, "lastRightPos":F
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 799
    .local v13, "child":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-static {v13}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 800
    goto :goto_0

    .line 802
    :cond_2
    invoke-interface {v13}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v14

    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v14

    invoke-virtual {v14}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v14

    .line 803
    .local v14, "childX":F
    sub-float v15, v11, v14

    const/4 v8, 0x0

    invoke-interface {v13, v15, v8}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 804
    move v14, v11

    .line 805
    instance-of v15, v13, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v15, :cond_7

    .line 806
    move-object v15, v13

    check-cast v15, Lcom/itextpdf/layout/renderer/TextRenderer;

    const/16 v8, 0x1d

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v15, v8, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 807
    .local v0, "childHSCale":F
    move-object v8, v13

    check-cast v8, Lcom/itextpdf/layout/renderer/TextRenderer;

    const/16 v15, 0xf

    invoke-virtual {v8, v15}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v8

    .line 808
    .local v8, "oldCharacterSpacing":Ljava/lang/Float;
    move-object v15, v13

    check-cast v15, Lcom/itextpdf/layout/renderer/TextRenderer;

    move/from16 v19, v2

    .end local v2    # "ratio":F
    .local v19, "ratio":F
    const/16 v2, 0x4e

    invoke-virtual {v15, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v15

    .line 809
    .local v15, "oldWordSpacing":Ljava/lang/Float;
    if-nez v8, :cond_3

    const/16 v20, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v20

    :goto_1
    div-float v21, v10, v0

    add-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move/from16 v20, v4

    const/16 v4, 0xf

    .end local v4    # "freeWidth":F
    .local v20, "freeWidth":F
    invoke-interface {v13, v4, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 810
    if-nez v15, :cond_4

    const/16 v17, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move/from16 v17, v2

    :goto_2
    div-float v2, v9, v0

    add-float v17, v17, v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v4, 0x4e

    invoke-interface {v13, v4, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 811
    const/4 v2, 0x1

    if-ne v13, v3, :cond_5

    move v4, v2

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 812
    .local v4, "isLastTextRenderer":Z
    :goto_3
    if-eqz v4, :cond_6

    move-object/from16 v17, v13

    check-cast v17, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/renderer/TextRenderer;->lineLength()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    goto :goto_4

    :cond_6
    move-object v2, v13

    check-cast v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->lineLength()I

    move-result v17

    :goto_4
    move/from16 v2, v17

    int-to-float v2, v2

    mul-float/2addr v2, v10

    move-object/from16 v17, v13

    check-cast v17, Lcom/itextpdf/layout/renderer/TextRenderer;

    .line 813
    move/from16 v18, v0

    .end local v0    # "childHSCale":F
    .local v18, "childHSCale":F
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/renderer/TextRenderer;->getNumberOfSpaces()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v9

    add-float/2addr v2, v0

    .line 814
    .local v2, "widthAddition":F
    invoke-interface {v13}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-interface {v13}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v17

    move-object/from16 v21, v3

    .end local v3    # "lastChildRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v21, "lastChildRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    add-float v3, v17, v2

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_5

    .line 805
    .end local v8    # "oldCharacterSpacing":Ljava/lang/Float;
    .end local v15    # "oldWordSpacing":Ljava/lang/Float;
    .end local v18    # "childHSCale":F
    .end local v19    # "ratio":F
    .end local v20    # "freeWidth":F
    .end local v21    # "lastChildRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v2, "ratio":F
    .restart local v3    # "lastChildRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v4, "freeWidth":F
    :cond_7
    move/from16 v19, v2

    move-object/from16 v21, v3

    move/from16 v20, v4

    const/high16 v16, 0x3f800000    # 1.0f

    .line 816
    .end local v2    # "ratio":F
    .end local v3    # "lastChildRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v4    # "freeWidth":F
    .restart local v19    # "ratio":F
    .restart local v20    # "freeWidth":F
    .restart local v21    # "lastChildRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    :goto_5
    invoke-interface {v13}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    add-float v11, v14, v0

    .line 817
    .end local v13    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v14    # "childX":F
    move-object/from16 v0, p0

    move/from16 v8, v16

    move/from16 v2, v19

    move/from16 v4, v20

    move-object/from16 v3, v21

    goto/16 :goto_0

    .line 819
    .end local v19    # "ratio":F
    .end local v20    # "freeWidth":F
    .end local v21    # "lastChildRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .restart local v2    # "ratio":F
    .restart local v3    # "lastChildRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .restart local v4    # "freeWidth":F
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 820
    return-void
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 77
    .param p1, "layoutContext"    # Lcom/itextpdf/layout/layout/LayoutContext;

    .line 104
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const/4 v0, 0x0

    .line 105
    .local v0, "textSequenceOverflowXProcessing":Z
    const/4 v1, -0x1

    .line 107
    .local v1, "firstChildToRelayout":I
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v10

    .line 108
    .local v10, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->isClippedHeight()Z

    move-result v11

    .line 109
    .local v11, "wasParentsHeightClipped":Z
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v12

    .line 111
    .local v12, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    const/4 v2, 0x0

    .line 112
    .local v2, "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    const/4 v3, 0x0

    .line 113
    .local v3, "wasXOverflowChanged":Z
    const/4 v4, 0x0

    .line 115
    .local v4, "floatsPlacedBeforeLine":Z
    const/16 v13, 0x67

    if-eqz v12, :cond_1

    .line 116
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    .line 117
    .local v5, "layoutWidth":F
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    .line 120
    .local v6, "layoutHeight":F
    invoke-static {v12, v10}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustLineAreaAccordingToFloats(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 121
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v7

    cmpl-float v7, v5, v7

    if-gtz v7, :cond_0

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_1

    .line 122
    :cond_0
    const/4 v4, 0x1

    .line 123
    invoke-virtual {v8, v13}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    check-cast v2, Lcom/itextpdf/layout/property/OverflowPropertyValue;

    .line 124
    const/4 v3, 0x1

    .line 125
    sget-object v7, Lcom/itextpdf/layout/property/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    invoke-virtual {v8, v13, v7}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    move v14, v4

    goto :goto_0

    .line 129
    .end local v5    # "layoutWidth":F
    .end local v6    # "layoutHeight":F
    :cond_1
    move v14, v4

    .end local v4    # "floatsPlacedBeforeLine":Z
    .local v14, "floatsPlacedBeforeLine":Z
    :goto_0
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v5, 0x76

    invoke-virtual {v8, v5}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 131
    .local v22, "noSoftWrap":Z
    instance-of v4, v9, Lcom/itextpdf/layout/layout/LineLayoutContext;

    if-eqz v4, :cond_2

    move-object v4, v9

    check-cast v4, Lcom/itextpdf/layout/layout/LineLayoutContext;

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/itextpdf/layout/layout/LineLayoutContext;

    invoke-direct {v4, v9}, Lcom/itextpdf/layout/layout/LineLayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutContext;)V

    :goto_1
    move-object v7, v4

    .line 132
    .local v7, "lineLayoutContext":Lcom/itextpdf/layout/layout/LineLayoutContext;
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LineLayoutContext;->getTextIndent()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_3

    .line 133
    nop

    .line 134
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LineLayoutContext;->getTextIndent()F

    move-result v4

    invoke-virtual {v10, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 135
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LineLayoutContext;->getTextIndent()F

    move-result v15

    sub-float/2addr v5, v15

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 138
    :cond_3
    new-instance v4, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v5

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v15

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v13

    invoke-virtual {v15, v13}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v13

    invoke-direct {v4, v5, v13}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v4, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 140
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->updateChildrenParent()V

    .line 142
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->addPageByID(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 144
    const/4 v4, 0x0

    .line 145
    .local v4, "curWidth":F
    sget-object v5, Lcom/itextpdf/layout/property/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/property/RenderingMode;

    const/16 v13, 0x7b

    invoke-virtual {v8, v13}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/itextpdf/layout/property/RenderingMode;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v15, 0x0

    const/4 v13, 0x1

    if-eqz v5, :cond_4

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->hasChildRendererInHtmlMode()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 147
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineHeightHelper;->getActualAscenderDescender(Lcom/itextpdf/layout/renderer/AbstractRenderer;)[F

    move-result-object v5

    .line 148
    .local v5, "ascenderDescender":[F
    aget v6, v5, v15

    iput v6, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    .line 149
    aget v6, v5, v13

    iput v6, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    .line 150
    .end local v5    # "ascenderDescender":[F
    const/4 v5, 0x0

    goto :goto_2

    .line 151
    :cond_4
    const/4 v5, 0x0

    iput v5, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    .line 152
    iput v5, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    .line 154
    :goto_2
    iput v5, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    .line 155
    iput v5, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    .line 156
    const v5, -0x1f528714    # -1.0E20f

    iput v5, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockAscent:F

    .line 157
    const v5, 0x60ad78ec    # 1.0E20f

    iput v5, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockDescent:F

    .line 159
    const/4 v5, 0x0

    .line 161
    .local v5, "childPos":I
    new-instance v6, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-direct {v6}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>()V

    .line 163
    .local v6, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    if-eqz v22, :cond_5

    .line 164
    new-instance v15, Lcom/itextpdf/layout/renderer/SumSumWidthHandler;

    invoke-direct {v15, v6}, Lcom/itextpdf/layout/renderer/SumSumWidthHandler;-><init>(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)V

    .local v15, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    goto :goto_3

    .line 166
    .end local v15    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    :cond_5
    new-instance v15, Lcom/itextpdf/layout/renderer/MaxSumWidthHandler;

    invoke-direct {v15, v6}, Lcom/itextpdf/layout/renderer/MaxSumWidthHandler;-><init>(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)V

    .line 169
    .restart local v15    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->resolveChildrenFonts()V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->trimFirst()I

    move-result v13

    .line 173
    .local v13, "totalNumberOfTrimmedGlyphs":I
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->applyOtf()Lcom/itextpdf/layout/property/BaseDirection;

    move-result-object v9

    .line 175
    .local v9, "baseDirection":Lcom/itextpdf/layout/property/BaseDirection;
    invoke-direct {v8, v13, v9}, Lcom/itextpdf/layout/renderer/LineRenderer;->updateBidiLevels(ILcom/itextpdf/layout/property/BaseDirection;)V

    .line 177
    const/16 v17, 0x0

    .line 178
    .local v17, "anythingPlaced":Z
    const/16 v18, 0x0

    .line 179
    .local v18, "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    const/16 v26, 0x0

    .line 181
    .local v26, "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    const/16 v19, 0x0

    .line 182
    .local v19, "floatsPlacedInLine":Z
    new-instance v20, Ljava/util/LinkedHashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v27, v20

    .line 183
    .local v27, "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v28, v20

    .line 184
    .local v28, "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v20

    .line 185
    .local v29, "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    const/16 v20, 0x0

    .line 187
    .local v20, "lastTabIndex":I
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v30, v21

    .line 188
    .local v30, "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v31, v21

    .line 190
    .local v31, "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v32, v21

    .line 191
    .local v32, "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    const/16 v21, 0x0

    .line 193
    .local v21, "lineAscentDescentStateBeforeTextRendererSequence":Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;
    const/16 v33, 0x0

    move-object/from16 v37, v6

    move/from16 v36, v13

    move/from16 v34, v17

    move/from16 v35, v19

    move/from16 v13, v20

    move-object/from16 v6, v21

    move-object/from16 v38, v33

    move/from16 v33, v1

    move v1, v5

    move v5, v0

    move-object/from16 v0, v18

    .line 195
    .end local v17    # "anythingPlaced":Z
    .end local v18    # "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    .end local v19    # "floatsPlacedInLine":Z
    .end local v20    # "lastTabIndex":I
    .end local v21    # "lineAscentDescentStateBeforeTextRendererSequence":Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;
    .local v0, "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    .local v1, "childPos":I
    .local v5, "textSequenceOverflowXProcessing":Z
    .local v6, "lineAscentDescentStateBeforeTextRendererSequence":Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;
    .local v13, "lastTabIndex":I
    .local v33, "firstChildToRelayout":I
    .local v34, "anythingPlaced":Z
    .local v35, "floatsPlacedInLine":Z
    .local v36, "totalNumberOfTrimmedGlyphs":I
    .local v37, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v38, "minMaxWidthOfTextRendererSequenceHelper":Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v17

    move-object/from16 v39, v2

    .end local v2    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v39, "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v40, v9

    .end local v9    # "baseDirection":Lcom/itextpdf/layout/property/BaseDirection;
    .local v40, "baseDirection":Lcom/itextpdf/layout/property/BaseDirection;
    if-ge v1, v2, :cond_66

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 197
    .local v2, "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    const/16 v47, 0x0

    .line 198
    .local v47, "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    new-instance v9, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v17

    move-object/from16 v18, v15

    .end local v15    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v18, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    add-float v15, v17, v4

    move/from16 v48, v13

    .end local v13    # "lastTabIndex":I
    .local v48, "lastTabIndex":I
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v13

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v17

    move/from16 v49, v14

    .end local v14    # "floatsPlacedBeforeLine":Z
    .local v49, "floatsPlacedBeforeLine":Z
    sub-float v14, v17, v4

    move-object/from16 v50, v6

    .end local v6    # "lineAscentDescentStateBeforeTextRendererSequence":Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;
    .local v50, "lineAscentDescentStateBeforeTextRendererSequence":Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    invoke-direct {v9, v15, v13, v14, v6}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 200
    .local v9, "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    const/16 v13, 0x7b

    invoke-interface {v2, v13}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lcom/itextpdf/layout/property/RenderingMode;

    .line 202
    .local v14, "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    invoke-static {v2}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->isTextRendererAndRequiresSpecialScriptPreLayoutProcessing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 203
    invoke-static {}, Lcom/itextpdf/layout/renderer/TypographyUtils;->isPdfCalligraphAvailable()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 204
    invoke-static {v8, v1}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->processSpecialScriptPreLayout(Lcom/itextpdf/layout/renderer/LineRenderer;I)V

    .line 206
    :cond_6
    const/4 v6, 0x1

    move-object/from16 v51, v18

    const/4 v13, 0x0

    .end local v18    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v51, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    move-object/from16 v15, v30

    move/from16 v16, v6

    move-object/from16 v17, v2

    move/from16 v18, v1

    move-object/from16 v19, v38

    move/from16 v20, v22

    move-object/from16 v21, v51

    invoke-static/range {v15 .. v21}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->resetTextSequenceIfItEnded(Ljava/util/Map;ZLcom/itextpdf/layout/renderer/IRenderer;ILcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;ZLcom/itextpdf/layout/renderer/AbstractWidthHandler;)V

    .line 209
    const/16 v16, 0x0

    move-object/from16 v15, v31

    invoke-static/range {v15 .. v21}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->resetTextSequenceIfItEnded(Ljava/util/Map;ZLcom/itextpdf/layout/renderer/IRenderer;ILcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;ZLcom/itextpdf/layout/renderer/AbstractWidthHandler;)V

    .line 213
    instance-of v6, v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v6, :cond_7

    .line 215
    const/16 v6, 0xf

    invoke-interface {v2, v6}, Lcom/itextpdf/layout/renderer/IRenderer;->deleteOwnProperty(I)V

    .line 216
    const/16 v6, 0x4e

    invoke-interface {v2, v6}, Lcom/itextpdf/layout/renderer/IRenderer;->deleteOwnProperty(I)V

    move-object/from16 v17, v0

    move-object/from16 v13, v51

    goto/16 :goto_6

    .line 217
    :cond_7
    instance-of v6, v2, Lcom/itextpdf/layout/renderer/TabRenderer;

    if-eqz v6, :cond_b

    .line 218
    if-eqz v0, :cond_8

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v6

    add-int/lit8 v15, v1, -0x1

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 220
    .local v6, "tabRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    new-instance v15, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v13, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v16

    move-object/from16 v17, v0

    .end local v0    # "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    .local v17, "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v0

    invoke-direct {v13, v0, v9}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v15, v13, v11}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    invoke-interface {v6, v15}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    .line 221
    invoke-interface {v6}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    add-float/2addr v4, v0

    .line 222
    invoke-interface {v6}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    move-object/from16 v13, v51

    .end local v51    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v13, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    invoke-virtual {v13, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    goto :goto_5

    .line 218
    .end local v6    # "tabRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v13    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .end local v17    # "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    .restart local v0    # "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    .restart local v51    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    :cond_8
    move-object/from16 v17, v0

    move-object/from16 v13, v51

    .line 224
    .end local v0    # "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    .end local v51    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v13    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v17    # "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    :goto_5
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-direct {v8, v2, v4, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->calculateTab(Lcom/itextpdf/layout/renderer/IRenderer;FF)Lcom/itextpdf/layout/element/TabStop;

    move-result-object v0

    .line 225
    .end local v17    # "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    .restart local v0    # "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v15, 0x1

    sub-int/2addr v6, v15

    if-ne v1, v6, :cond_9

    .line 226
    const/4 v0, 0x0

    .line 227
    :cond_9
    if-eqz v0, :cond_a

    .line 228
    move v6, v1

    .line 229
    .end local v48    # "lastTabIndex":I
    .local v6, "lastTabIndex":I
    add-int/lit8 v1, v1, 0x1

    .line 230
    move-object v15, v13

    move-object/from16 v2, v39

    move-object/from16 v9, v40

    move/from16 v14, v49

    move v13, v6

    move-object/from16 v6, v50

    goto/16 :goto_4

    .line 227
    .end local v6    # "lastTabIndex":I
    .restart local v48    # "lastTabIndex":I
    :cond_a
    move-object/from16 v17, v0

    move v15, v4

    goto :goto_7

    .line 217
    .end local v13    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v51    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    :cond_b
    move-object/from16 v17, v0

    move-object/from16 v13, v51

    .line 234
    .end local v0    # "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    .end local v51    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v13    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v17    # "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    :goto_6
    move v15, v4

    .end local v4    # "curWidth":F
    .local v15, "curWidth":F
    :goto_7
    if-eqz v17, :cond_c

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/element/TabStop;->getTabAlignment()Lcom/itextpdf/layout/property/TabAlignment;

    move-result-object v0

    sget-object v4, Lcom/itextpdf/layout/property/TabAlignment;->ANCHOR:Lcom/itextpdf/layout/property/TabAlignment;

    if-ne v0, v4, :cond_c

    instance-of v0, v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v0, :cond_c

    .line 236
    const/16 v0, 0x42

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/element/TabStop;->getTabAnchor()Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 240
    :cond_c
    const/16 v6, 0x4d

    invoke-interface {v2, v6}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    .line 241
    .local v4, "childWidth":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 242
    .local v0, "childWidthWasReplaced":Z
    invoke-interface {v2, v6}, Lcom/itextpdf/layout/renderer/IRenderer;->hasOwnProperty(I)Z

    move-result v16

    .line 243
    .local v16, "childRendererHasOwnWidthProperty":Z
    instance-of v6, v4, Lcom/itextpdf/layout/property/UnitValue;

    if-eqz v6, :cond_e

    move-object v6, v4

    check-cast v6, Lcom/itextpdf/layout/property/UnitValue;

    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 244
    move-object v6, v4

    check-cast v6, Lcom/itextpdf/layout/property/UnitValue;

    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v6

    const/high16 v19, 0x42c80000    # 100.0f

    div-float v6, v6, v19

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v19

    mul-float v6, v6, v19

    .line 245
    .local v6, "normalizedChildWidth":F
    invoke-direct {v8, v2, v6}, Lcom/itextpdf/layout/renderer/LineRenderer;->decreaseRelativeWidthByChildAdditionalWidth(Lcom/itextpdf/layout/renderer/IRenderer;F)F

    move-result v6

    .line 247
    const/16 v19, 0x0

    cmpl-float v20, v6, v19

    if-lez v20, :cond_d

    .line 248
    move/from16 v20, v0

    .end local v0    # "childWidthWasReplaced":Z
    .local v20, "childWidthWasReplaced":Z
    invoke-static {v6}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    move/from16 v21, v6

    const/16 v6, 0x4d

    .end local v6    # "normalizedChildWidth":F
    .local v21, "normalizedChildWidth":F
    invoke-interface {v2, v6, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 249
    const/4 v0, 0x1

    move/from16 v20, v0

    .end local v20    # "childWidthWasReplaced":Z
    .restart local v0    # "childWidthWasReplaced":Z
    goto :goto_8

    .line 247
    .end local v21    # "normalizedChildWidth":F
    .restart local v6    # "normalizedChildWidth":F
    :cond_d
    move/from16 v20, v0

    move/from16 v21, v6

    .end local v0    # "childWidthWasReplaced":Z
    .end local v6    # "normalizedChildWidth":F
    .restart local v20    # "childWidthWasReplaced":Z
    .restart local v21    # "normalizedChildWidth":F
    goto :goto_8

    .line 243
    .end local v20    # "childWidthWasReplaced":Z
    .end local v21    # "normalizedChildWidth":F
    .restart local v0    # "childWidthWasReplaced":Z
    :cond_e
    move/from16 v20, v0

    const/16 v19, 0x0

    .line 253
    .end local v0    # "childWidthWasReplaced":Z
    .restart local v20    # "childWidthWasReplaced":Z
    :goto_8
    const/16 v0, 0x63

    invoke-interface {v2, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/itextpdf/layout/property/FloatPropertyValue;

    .line 254
    .local v6, "kidFloatPropertyVal":Lcom/itextpdf/layout/property/FloatPropertyValue;
    instance-of v0, v2, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v0, :cond_f

    invoke-static {v2, v6}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/property/FloatPropertyValue;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_9

    :cond_f
    const/4 v0, 0x0

    .line 255
    .local v0, "isChildFloating":Z
    :goto_9
    move/from16 v21, v15

    .end local v15    # "curWidth":F
    .local v21, "curWidth":F
    if-eqz v0, :cond_20

    .line 256
    const/16 v25, 0x0

    .line 257
    .end local v47    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .local v25, "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    move-object v15, v2

    check-cast v15, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {v15, v6}, Lcom/itextpdf/layout/renderer/FloatingHelper;->calculateMinMaxWidthForFloat(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/property/FloatPropertyValue;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v15

    .line 258
    .local v15, "kidMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    invoke-virtual {v15}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v41

    .line 264
    .local v41, "floatingBoxFullWidth":F
    if-nez v3, :cond_10

    if-lez v1, :cond_10

    .line 265
    move/from16 v52, v0

    const/16 v0, 0x67

    .end local v0    # "isChildFloating":Z
    .local v52, "isChildFloating":Z
    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v39, v23

    check-cast v39, Lcom/itextpdf/layout/property/OverflowPropertyValue;

    .line 266
    const/4 v3, 0x1

    .line 267
    move/from16 v42, v3

    .end local v3    # "wasXOverflowChanged":Z
    .local v42, "wasXOverflowChanged":Z
    sget-object v3, Lcom/itextpdf/layout/property/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    invoke-virtual {v8, v0, v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    move/from16 v3, v42

    goto :goto_a

    .line 264
    .end local v42    # "wasXOverflowChanged":Z
    .end local v52    # "isChildFloating":Z
    .restart local v0    # "isChildFloating":Z
    .restart local v3    # "wasXOverflowChanged":Z
    :cond_10
    move/from16 v52, v0

    .line 269
    .end local v0    # "isChildFloating":Z
    .restart local v52    # "isChildFloating":Z
    :goto_a
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LineLayoutContext;->isFloatOverflowedToNextPageWithNothing()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz v34, :cond_12

    .line 270
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    cmpg-float v0, v41, v0

    if-gtz v0, :cond_11

    goto :goto_b

    :cond_11
    move/from16 v42, v3

    move/from16 v53, v5

    move-object/from16 v54, v14

    goto :goto_c

    .line 271
    :cond_12
    :goto_b
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutContext;

    move/from16 v42, v3

    .end local v3    # "wasXOverflowChanged":Z
    .restart local v42    # "wasXOverflowChanged":Z
    new-instance v3, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v43

    move/from16 v53, v5

    .end local v5    # "textSequenceOverflowXProcessing":Z
    .local v53, "textSequenceOverflowXProcessing":Z
    invoke-virtual/range {v43 .. v43}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v43

    move-object/from16 v54, v14

    .end local v14    # "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    .local v54, "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    invoke-virtual/range {v43 .. v43}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v14

    invoke-direct {v3, v5, v14}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    const/4 v5, 0x0

    invoke-direct {v0, v3, v5, v12, v11}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;Ljava/util/List;Z)V

    invoke-interface {v2, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v25

    move-object/from16 v0, v25

    goto :goto_d

    .line 269
    .end local v42    # "wasXOverflowChanged":Z
    .end local v53    # "textSequenceOverflowXProcessing":Z
    .end local v54    # "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    .restart local v3    # "wasXOverflowChanged":Z
    .restart local v5    # "textSequenceOverflowXProcessing":Z
    .restart local v14    # "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    :cond_13
    move/from16 v42, v3

    move/from16 v53, v5

    move-object/from16 v54, v14

    .line 274
    .end local v3    # "wasXOverflowChanged":Z
    .end local v5    # "textSequenceOverflowXProcessing":Z
    .end local v14    # "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    .restart local v42    # "wasXOverflowChanged":Z
    .restart local v53    # "textSequenceOverflowXProcessing":Z
    .restart local v54    # "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    :goto_c
    move-object/from16 v0, v25

    .end local v25    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .local v0, "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    :goto_d
    if-eqz v20, :cond_15

    .line 275
    if-eqz v16, :cond_14

    .line 276
    const/16 v3, 0x4d

    invoke-interface {v2, v3, v4}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_e

    .line 278
    :cond_14
    const/16 v3, 0x4d

    invoke-interface {v2, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->deleteOwnProperty(I)V

    .line 282
    :cond_15
    :goto_e
    const/4 v3, 0x0

    .line 283
    .local v3, "minChildWidth":F
    const/4 v5, 0x0

    .line 284
    .local v5, "maxChildWidth":F
    instance-of v14, v0, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    const v18, 0x38d1b717    # 1.0E-4f

    if-eqz v14, :cond_17

    .line 285
    if-nez v20, :cond_16

    .line 286
    move-object v14, v0

    check-cast v14, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v14

    invoke-virtual {v14}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v3

    .line 289
    :cond_16
    move-object v14, v0

    check-cast v14, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v14

    invoke-virtual {v14}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v5

    .line 290
    add-float v14, v3, v18

    invoke-virtual {v13, v14}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    .line 291
    add-float v14, v5, v18

    invoke-virtual {v13, v14}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    goto :goto_f

    .line 293
    :cond_17
    invoke-virtual {v15}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v14

    add-float v14, v14, v18

    invoke-virtual {v13, v14}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    .line 294
    invoke-virtual {v15}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v14

    add-float v14, v14, v18

    invoke-virtual {v13, v14}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    .line 297
    :goto_f
    if-nez v0, :cond_18

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LineLayoutContext;->isFloatOverflowedToNextPageWithNothing()Z

    move-result v14

    if-nez v14, :cond_18

    .line 298
    move-object/from16 v14, v29

    .end local v29    # "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v14, "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v18, v3

    move-object/from16 v25, v4

    move/from16 v29, v5

    move-object/from16 v5, v27

    move-object/from16 v4, v28

    move-object/from16 v27, v6

    goto/16 :goto_11

    .line 297
    .end local v14    # "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v29    # "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :cond_18
    move-object/from16 v14, v29

    .line 299
    .end local v29    # "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v14    # "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LineLayoutContext;->isFloatOverflowedToNextPageWithNothing()Z

    move-result v18

    if-nez v18, :cond_1e

    move/from16 v18, v3

    .end local v3    # "minChildWidth":F
    .local v18, "minChildWidth":F
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v3

    move-object/from16 v25, v4

    const/4 v4, 0x3

    .end local v4    # "childWidth":Ljava/lang/Object;
    .local v25, "childWidth":Ljava/lang/Object;
    if-ne v3, v4, :cond_19

    move/from16 v29, v5

    move-object/from16 v5, v27

    move-object/from16 v4, v28

    goto/16 :goto_10

    .line 303
    :cond_19
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 304
    const/16 v35, 0x1

    .line 306
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v3, :cond_1b

    .line 313
    invoke-direct {v8, v1, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->splitNotFittingFloat(ILcom/itextpdf/layout/layout/LayoutResult;)[Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object v3

    .line 314
    .local v3, "split":[Lcom/itextpdf/layout/renderer/LineRenderer;
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    .line 315
    .local v4, "splitRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    move/from16 v29, v5

    .end local v5    # "maxChildWidth":F
    .local v29, "maxChildWidth":F
    instance-of v5, v4, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v5, :cond_1a

    .line 316
    move-object v5, v4

    check-cast v5, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v5}, Lcom/itextpdf/layout/renderer/TextRenderer;->trimFirst()V

    .line 317
    move-object v5, v4

    check-cast v5, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v5}, Lcom/itextpdf/layout/renderer/TextRenderer;->trimLast()F

    .line 320
    :cond_1a
    invoke-interface {v4}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v19

    move-object/from16 v24, v4

    .end local v4    # "splitRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v24, "splitRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 321
    new-instance v4, Lcom/itextpdf/layout/layout/LineLayoutResult;

    const/16 v56, 0x2

    iget-object v5, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/16 v19, 0x0

    aget-object v58, v3, v19

    const/16 v19, 0x1

    aget-object v59, v3, v19

    const/16 v60, 0x0

    move-object/from16 v55, v4

    move-object/from16 v57, v5

    invoke-direct/range {v55 .. v60}, Lcom/itextpdf/layout/layout/LineLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    move-object/from16 v26, v4

    .line 322
    move v9, v1

    move-object/from16 v29, v10

    move-object v5, v13

    move-object v10, v14

    move/from16 v13, v21

    move-object/from16 v6, v27

    move-object/from16 v3, v28

    move-object/from16 v59, v31

    move-object/from16 v56, v32

    move-object/from16 v62, v37

    move/from16 v41, v48

    move-object/from16 v14, v50

    move-object/from16 v27, v7

    move-object/from16 v28, v12

    move-object/from16 v7, v17

    move-object/from16 v50, v30

    move-object/from16 v12, v39

    goto/16 :goto_3f

    .line 324
    .end local v3    # "split":[Lcom/itextpdf/layout/renderer/LineRenderer;
    .end local v24    # "splitRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v29    # "maxChildWidth":F
    .restart local v5    # "maxChildWidth":F
    :cond_1b
    move/from16 v29, v5

    .end local v5    # "maxChildWidth":F
    .restart local v29    # "maxChildWidth":F
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    move-object/from16 v5, v27

    .end local v27    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v5, "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    move-object/from16 v4, v28

    .end local v28    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v4, "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    invoke-interface {v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-direct {v8, v10, v1, v6, v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->adjustLineOnFloatPlaced(Lcom/itextpdf/kernel/geom/Rectangle;ILcom/itextpdf/layout/property/FloatPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    move-object/from16 v27, v6

    goto :goto_11

    .line 329
    .end local v4    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v29    # "maxChildWidth":F
    .local v5, "maxChildWidth":F
    .restart local v27    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v28    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :cond_1c
    move/from16 v29, v5

    move-object/from16 v5, v27

    move-object/from16 v4, v28

    .end local v27    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v28    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v4    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v5, "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v29    # "maxChildWidth":F
    const/4 v3, 0x1

    .line 331
    .end local v35    # "floatsPlacedInLine":Z
    .local v3, "floatsPlacedInLine":Z
    move/from16 v27, v3

    .end local v3    # "floatsPlacedInLine":Z
    .local v27, "floatsPlacedInLine":Z
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v3, :cond_1d

    .line 332
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->trimFirst()V

    .line 333
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->trimLast()F

    .line 336
    :cond_1d
    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-direct {v8, v10, v1, v6, v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->adjustLineOnFloatPlaced(Lcom/itextpdf/kernel/geom/Rectangle;ILcom/itextpdf/layout/property/FloatPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    move/from16 v35, v27

    move-object/from16 v27, v6

    goto :goto_11

    .line 299
    .end local v18    # "minChildWidth":F
    .end local v25    # "childWidth":Ljava/lang/Object;
    .end local v29    # "maxChildWidth":F
    .local v3, "minChildWidth":F
    .local v4, "childWidth":Ljava/lang/Object;
    .local v5, "maxChildWidth":F
    .local v27, "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v28    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v35    # "floatsPlacedInLine":Z
    :cond_1e
    move/from16 v18, v3

    move-object/from16 v25, v4

    move/from16 v29, v5

    move-object/from16 v5, v27

    move-object/from16 v4, v28

    .line 300
    .end local v3    # "minChildWidth":F
    .end local v27    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v28    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v4, "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v5, "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v18    # "minChildWidth":F
    .restart local v25    # "childWidth":Ljava/lang/Object;
    .restart local v29    # "maxChildWidth":F
    :goto_10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v27, v6

    const/4 v6, 0x0

    .end local v6    # "kidFloatPropertyVal":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .local v27, "kidFloatPropertyVal":Lcom/itextpdf/layout/property/FloatPropertyValue;
    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Lcom/itextpdf/layout/layout/LineLayoutContext;->setFloatOverflowedToNextPageWithNothing(Z)Lcom/itextpdf/layout/layout/LineLayoutContext;

    .line 339
    :goto_11
    add-int/lit8 v1, v1, 0x1

    .line 340
    if-nez v34, :cond_1f

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1f

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->isFirstOnRootArea()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 345
    move v9, v1

    move-object v3, v4

    move-object v6, v5

    move-object/from16 v27, v7

    move-object/from16 v29, v10

    move-object/from16 v28, v12

    move-object v5, v13

    move-object v10, v14

    move-object/from16 v7, v17

    move/from16 v13, v21

    move-object/from16 v59, v31

    move-object/from16 v56, v32

    move-object/from16 v62, v37

    move-object/from16 v12, v39

    move/from16 v41, v48

    move-object/from16 v14, v50

    move-object/from16 v50, v30

    goto/16 :goto_3f

    .line 195
    .end local v0    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v2    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v9    # "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v15    # "kidMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .end local v16    # "childRendererHasOwnWidthProperty":Z
    .end local v18    # "minChildWidth":F
    .end local v20    # "childWidthWasReplaced":Z
    .end local v25    # "childWidth":Ljava/lang/Object;
    .end local v27    # "kidFloatPropertyVal":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .end local v29    # "maxChildWidth":F
    .end local v41    # "floatingBoxFullWidth":F
    .end local v52    # "isChildFloating":Z
    .end local v54    # "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    :cond_1f
    move-object/from16 v28, v4

    move-object/from16 v27, v5

    move-object v15, v13

    move-object/from16 v29, v14

    move-object/from16 v0, v17

    move/from16 v4, v21

    move-object/from16 v2, v39

    move-object/from16 v9, v40

    move/from16 v3, v42

    move/from16 v13, v48

    move/from16 v14, v49

    move-object/from16 v6, v50

    move/from16 v5, v53

    goto/16 :goto_4

    .line 351
    .end local v42    # "wasXOverflowChanged":Z
    .end local v53    # "textSequenceOverflowXProcessing":Z
    .local v0, "isChildFloating":Z
    .restart local v2    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v3, "wasXOverflowChanged":Z
    .local v4, "childWidth":Ljava/lang/Object;
    .local v5, "textSequenceOverflowXProcessing":Z
    .restart local v6    # "kidFloatPropertyVal":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .restart local v9    # "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v14, "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    .restart local v16    # "childRendererHasOwnWidthProperty":Z
    .restart local v20    # "childWidthWasReplaced":Z
    .local v27, "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v28    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v29, "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v47    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    :cond_20
    move/from16 v52, v0

    move-object/from16 v25, v4

    move/from16 v53, v5

    move-object/from16 v54, v14

    move-object/from16 v5, v27

    move-object/from16 v4, v28

    move-object/from16 v14, v29

    move-object/from16 v27, v6

    .end local v0    # "isChildFloating":Z
    .end local v6    # "kidFloatPropertyVal":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .end local v28    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v29    # "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v4, "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v5, "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v14, "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v25    # "childWidth":Ljava/lang/Object;
    .local v27, "kidFloatPropertyVal":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .restart local v52    # "isChildFloating":Z
    .restart local v53    # "textSequenceOverflowXProcessing":Z
    .restart local v54    # "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    const/4 v0, 0x0

    .line 352
    .local v0, "childBlockMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    invoke-static {v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->isInlineBlockChild(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v15

    .line 353
    .local v15, "isInlineBlockChild":Z
    const-string v6, "Inline block element does not fit into parent element and will be clipped"

    move-object/from16 v28, v12

    .end local v12    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v28, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    const v29, 0x3a83126f    # 0.001f

    if-nez v20, :cond_26

    .line 354
    if-eqz v15, :cond_25

    instance-of v12, v2, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v12, :cond_25

    .line 355
    move-object v12, v2

    check-cast v12, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v12}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v12

    .line 357
    .local v12, "childMaxWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v41

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LineLayoutContext;->getTextIndent()F

    move-result v42

    move-object/from16 v56, v4

    .end local v4    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v56, "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    sub-float v4, v41, v42

    .line 358
    .local v4, "lineFullAvailableWidth":F
    if-nez v22, :cond_21

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v41

    add-float v41, v41, v29

    cmpl-float v41, v12, v41

    if-lez v41, :cond_21

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v41

    cmpl-float v41, v41, v4

    if-eqz v41, :cond_21

    .line 359
    new-instance v57, Lcom/itextpdf/layout/layout/LineLayoutResult;

    const/16 v42, 0x3

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v41, v57

    move-object/from16 v45, v2

    move-object/from16 v46, v2

    invoke-direct/range {v41 .. v46}, Lcom/itextpdf/layout/layout/LineLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    move/from16 v42, v4

    move-object/from16 v47, v41

    move-object/from16 v41, v5

    .end local v47    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .local v41, "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    goto :goto_12

    .line 361
    .end local v41    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .restart local v47    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    :cond_21
    add-float v12, v12, v29

    .line 362
    move-object/from16 v41, v5

    .end local v5    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v41, "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-static {v12, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 364
    .local v5, "inlineBlockWidth":F
    move/from16 v42, v4

    const/16 v4, 0x67

    .end local v4    # "lineFullAvailableWidth":F
    .local v42, "lineFullAvailableWidth":F
    invoke-virtual {v8, v4}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/itextpdf/layout/property/OverflowPropertyValue;

    invoke-static/range {v43 .. v43}, Lcom/itextpdf/layout/renderer/LineRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 365
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v4

    add-float v4, v4, v29

    .line 366
    .local v4, "childMinWidth":F
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 368
    .end local v4    # "childMinWidth":F
    :cond_22
    invoke-virtual {v9, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 370
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v4

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v43

    cmpl-float v4, v4, v43

    if-lez v4, :cond_24

    .line 371
    sget-object v4, Lcom/itextpdf/layout/renderer/LineRenderer;->logger:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v43

    if-eqz v43, :cond_23

    .line 372
    invoke-interface {v4, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 374
    :cond_23
    move/from16 v43, v5

    const/4 v4, 0x1

    .end local v5    # "inlineBlockWidth":F
    .local v43, "inlineBlockWidth":F
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v4, 0x1a

    invoke-interface {v2, v4, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_12

    .line 370
    .end local v43    # "inlineBlockWidth":F
    .restart local v5    # "inlineBlockWidth":F
    :cond_24
    move/from16 v43, v5

    .line 377
    .end local v5    # "inlineBlockWidth":F
    :goto_12
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMaxWidth()F

    move-result v4

    add-float v4, v4, v29

    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    .line 378
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMinWidth()F

    move-result v4

    add-float v4, v4, v29

    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    move-object v12, v0

    goto :goto_14

    .line 354
    .end local v12    # "childMaxWidth":F
    .end local v41    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v42    # "lineFullAvailableWidth":F
    .end local v56    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v4, "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v5, "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :cond_25
    move-object/from16 v56, v4

    move-object/from16 v41, v5

    .end local v4    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v5    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v41    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v56    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    goto :goto_13

    .line 353
    .end local v41    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v56    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v4    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v5    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :cond_26
    move-object/from16 v56, v4

    move-object/from16 v41, v5

    .line 383
    .end local v4    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v5    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v41    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v56    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :goto_13
    move-object v12, v0

    .end local v0    # "childBlockMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v12, "childBlockMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    :goto_14
    const/16 v42, 0x0

    .line 385
    .local v42, "shouldBreakLayouting":Z
    if-nez v47, :cond_2d

    .line 386
    instance-of v0, v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v0, :cond_27

    move-object v0, v2

    check-cast v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    .line 387
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_15

    :cond_27
    const/4 v0, 0x0

    :goto_15
    move/from16 v43, v0

    .line 389
    .local v43, "setOverflowFitCausedBySpecialScripts":Z
    sget-object v0, Lcom/itextpdf/layout/property/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/property/RenderingMode;

    move-object/from16 v5, v54

    .end local v54    # "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    .local v5, "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    if-ne v0, v5, :cond_28

    instance-of v0, v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v0, :cond_28

    move-object v0, v2

    check-cast v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    .line 391
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    goto :goto_16

    :cond_28
    const/4 v0, 0x0

    :goto_16
    move/from16 v44, v0

    .line 393
    .local v44, "setOverflowFitCausedByTextRendererInHtmlMode":Z
    if-nez v3, :cond_2b

    if-gtz v1, :cond_2a

    if-nez v43, :cond_2a

    if-eqz v44, :cond_29

    goto :goto_17

    :cond_29
    move/from16 v45, v1

    goto :goto_18

    :cond_2a
    :goto_17
    if-nez v53, :cond_2b

    .line 396
    const/16 v0, 0x67

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/property/OverflowPropertyValue;

    .line 397
    .end local v39    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v4, "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    const/4 v3, 0x1

    .line 398
    move/from16 v45, v1

    .end local v1    # "childPos":I
    .local v45, "childPos":I
    sget-object v1, Lcom/itextpdf/layout/property/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    invoke-virtual {v8, v0, v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_19

    .line 393
    .end local v4    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v45    # "childPos":I
    .restart local v1    # "childPos":I
    .restart local v39    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    :cond_2b
    move/from16 v45, v1

    .line 401
    .end local v1    # "childPos":I
    .restart local v45    # "childPos":I
    :goto_18
    move-object/from16 v4, v39

    .end local v39    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v4    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    :goto_19
    move/from16 v1, v53

    .end local v53    # "textSequenceOverflowXProcessing":Z
    .local v1, "textSequenceOverflowXProcessing":Z
    invoke-static {v8, v1, v2, v3, v4}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->preprocessTextSequenceOverflowX(Lcom/itextpdf/layout/renderer/LineRenderer;ZLcom/itextpdf/layout/renderer/IRenderer;ZLcom/itextpdf/layout/property/OverflowPropertyValue;)V

    .line 404
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutContext;

    .end local v1    # "textSequenceOverflowXProcessing":Z
    .restart local v53    # "textSequenceOverflowXProcessing":Z
    new-instance v1, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v39

    move/from16 v46, v3

    .end local v3    # "wasXOverflowChanged":Z
    .local v46, "wasXOverflowChanged":Z
    invoke-virtual/range {v39 .. v39}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v3

    invoke-direct {v1, v3, v9}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v0, v1, v11}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    invoke-interface {v2, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v3

    .line 406
    .end local v47    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .local v3, "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    move/from16 v1, v52

    .end local v52    # "isChildFloating":Z
    .local v1, "isChildFloating":Z
    move-object/from16 v0, p0

    move/from16 v52, v45

    move-object/from16 v45, v14

    move v14, v1

    .end local v1    # "isChildFloating":Z
    .local v14, "isChildFloating":Z
    .local v45, "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v52, "childPos":I
    move/from16 v1, v53

    move-object/from16 v54, v2

    .end local v2    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v54, "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    move/from16 v2, v52

    move/from16 v39, v46

    move-object/from16 v46, v3

    .end local v3    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .local v39, "wasXOverflowChanged":Z
    .local v46, "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    move-object/from16 v3, v54

    move-object/from16 v47, v4

    move-object/from16 v57, v56

    move-object/from16 v76, v25

    move-object/from16 v25, v9

    move-object/from16 v9, v76

    .end local v4    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v56    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v9, "childWidth":Ljava/lang/Object;
    .local v25, "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v47, "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v57, "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    move-object/from16 v4, v46

    move-object/from16 v61, v41

    move/from16 v41, v14

    move-object v14, v5

    .end local v5    # "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    .local v14, "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    .local v41, "isChildFloating":Z
    .local v61, "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    move/from16 v5, v39

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->postprocessTextSequenceOverflowX(Lcom/itextpdf/layout/renderer/LineRenderer;ZILcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/layout/LayoutResult;Z)Z

    move-result v42

    .line 410
    move-object/from16 v5, v31

    move-object/from16 v0, v46

    move/from16 v4, v52

    move-object/from16 v2, v54

    const/4 v1, 0x0

    .end local v31    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .end local v46    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v52    # "childPos":I
    .end local v54    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v0, "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .restart local v2    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v4, "childPos":I
    .local v5, "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    invoke-static {v5, v1, v2, v4, v0}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->updateTextSequenceLayoutResults(Ljava/util/Map;ZLcom/itextpdf/layout/renderer/IRenderer;ILcom/itextpdf/layout/layout/LayoutResult;)V

    .line 412
    move-object/from16 v1, v30

    const/4 v3, 0x1

    .end local v30    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .local v1, "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    invoke-static {v1, v3, v2, v4, v0}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->updateTextSequenceLayoutResults(Ljava/util/Map;ZLcom/itextpdf/layout/renderer/IRenderer;ILcom/itextpdf/layout/layout/LayoutResult;)V

    .line 416
    instance-of v3, v0, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    if-eqz v3, :cond_2c

    if-eqz v12, :cond_2c

    .line 417
    move-object v3, v0

    check-cast v3, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v3

    .line 418
    .local v3, "childResultMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    invoke-virtual {v3}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMaxWidth()F

    move-result v30

    move-object/from16 v46, v0

    .end local v0    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .restart local v46    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    add-float v0, v30, v29

    invoke-virtual {v3, v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    .line 419
    invoke-virtual {v3}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMinWidth()F

    move-result v0

    add-float v0, v0, v29

    invoke-virtual {v3, v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    goto :goto_1a

    .line 416
    .end local v3    # "childResultMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .end local v46    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .restart local v0    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    :cond_2c
    move-object/from16 v46, v0

    .line 424
    .end local v0    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v43    # "setOverflowFitCausedBySpecialScripts":Z
    .end local v44    # "setOverflowFitCausedByTextRendererInHtmlMode":Z
    .restart local v46    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    :goto_1a
    move-object/from16 v0, v46

    move-object/from16 v3, v47

    goto :goto_1b

    .line 385
    .end local v4    # "childPos":I
    .end local v5    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .end local v45    # "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v46    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v57    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v61    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v1, "childPos":I
    .local v3, "wasXOverflowChanged":Z
    .local v9, "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v14, "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v25, "childWidth":Ljava/lang/Object;
    .restart local v30    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .restart local v31    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .local v39, "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v41, "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v47, "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .local v52, "isChildFloating":Z
    .local v54, "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    .restart local v56    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :cond_2d
    move v4, v1

    move-object/from16 v45, v14

    move-object/from16 v1, v30

    move-object/from16 v5, v31

    move-object/from16 v61, v41

    move/from16 v41, v52

    move-object/from16 v14, v54

    move-object/from16 v57, v56

    move-object/from16 v76, v25

    move-object/from16 v25, v9

    move-object/from16 v9, v76

    .end local v30    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .end local v31    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .end local v52    # "isChildFloating":Z
    .end local v54    # "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    .end local v56    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v1, "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .restart local v4    # "childPos":I
    .restart local v5    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .local v9, "childWidth":Ljava/lang/Object;
    .local v14, "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    .local v25, "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v41, "isChildFloating":Z
    .restart local v45    # "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v57    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v61    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    move-object/from16 v0, v47

    move-object/from16 v76, v39

    move/from16 v39, v3

    move-object/from16 v3, v76

    .line 424
    .end local v47    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .restart local v0    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .local v3, "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v39, "wasXOverflowChanged":Z
    :goto_1b
    if-eqz v20, :cond_2f

    .line 425
    if-eqz v16, :cond_2e

    .line 426
    move-object/from16 v29, v1

    const/16 v1, 0x4d

    .end local v1    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .local v29, "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    invoke-interface {v2, v1, v9}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_1c

    .line 428
    .end local v29    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .restart local v1    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    :cond_2e
    move-object/from16 v29, v1

    const/16 v1, 0x4d

    .end local v1    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .restart local v29    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    invoke-interface {v2, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->deleteOwnProperty(I)V

    goto :goto_1c

    .line 424
    .end local v29    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .restart local v1    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    :cond_2f
    move-object/from16 v29, v1

    .line 432
    .end local v1    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .restart local v29    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    :goto_1c
    const/4 v1, 0x0

    .line 433
    .local v1, "minChildWidth":F
    const/16 v18, 0x0

    .line 434
    .local v18, "maxChildWidth":F
    move/from16 v30, v1

    .end local v1    # "minChildWidth":F
    .local v30, "minChildWidth":F
    instance-of v1, v0, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    if-eqz v1, :cond_31

    .line 435
    if-nez v20, :cond_30

    .line 436
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v1

    .end local v30    # "minChildWidth":F
    .restart local v1    # "minChildWidth":F
    goto :goto_1d

    .line 435
    .end local v1    # "minChildWidth":F
    .restart local v30    # "minChildWidth":F
    :cond_30
    move/from16 v1, v30

    .line 438
    .end local v30    # "minChildWidth":F
    .restart local v1    # "minChildWidth":F
    :goto_1d
    move-object/from16 v30, v0

    check-cast v30, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v18

    move/from16 v30, v1

    goto :goto_1e

    .line 439
    .end local v1    # "minChildWidth":F
    .restart local v30    # "minChildWidth":F
    :cond_31
    if-eqz v12, :cond_32

    .line 440
    invoke-virtual {v12}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v1

    .line 441
    .end local v30    # "minChildWidth":F
    .restart local v1    # "minChildWidth":F
    invoke-virtual {v12}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v18

    move/from16 v30, v1

    .line 444
    .end local v1    # "minChildWidth":F
    .restart local v30    # "minChildWidth":F
    :cond_32
    :goto_1e
    invoke-virtual {v8, v2, v0, v14, v15}, Lcom/itextpdf/layout/renderer/LineRenderer;->getAscentDescentOfLayoutedChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/layout/LayoutResult;Lcom/itextpdf/layout/property/RenderingMode;Z)[F

    move-result-object v1

    .line 447
    .local v1, "childAscentDescent":[F
    nop

    .line 448
    move-object/from16 v31, v9

    move-object/from16 v9, v32

    move-object/from16 v32, v0

    move-object/from16 v0, v50

    .end local v50    # "lineAscentDescentStateBeforeTextRendererSequence":Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;
    .local v0, "lineAscentDescentStateBeforeTextRendererSequence":Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;
    .local v9, "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .local v31, "childWidth":Ljava/lang/Object;
    .local v32, "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    invoke-static {v8, v9, v4, v1, v0}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->updateTextRendererSequenceAscentDescent(Lcom/itextpdf/layout/renderer/LineRenderer;Ljava/util/Map;I[FLcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;)Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;

    move-result-object v0

    .line 452
    nop

    .line 456
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LineLayoutContext;->getTextIndent()F

    move-result v43

    .line 453
    move-object/from16 v44, v12

    move-object/from16 v12, v32

    move/from16 v32, v15

    move-object v15, v0

    .end local v0    # "lineAscentDescentStateBeforeTextRendererSequence":Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;
    .local v12, "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .local v15, "lineAscentDescentStateBeforeTextRendererSequence":Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;
    .local v32, "isInlineBlockChild":Z
    .local v44, "childBlockMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    move-object/from16 v0, p0

    move-object/from16 v46, v29

    move-object/from16 v29, v1

    .end local v1    # "childAscentDescent":[F
    .local v29, "childAscentDescent":[F
    .local v46, "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    move-object v1, v13

    move-object/from16 v47, v13

    move-object v13, v2

    .end local v2    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v13, "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v47, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    move v2, v4

    move-object/from16 v50, v3

    .end local v3    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v50, "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    move-object/from16 v3, v38

    move-object/from16 v52, v9

    move v9, v4

    .end local v4    # "childPos":I
    .local v9, "childPos":I
    .local v52, "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    move/from16 v4, v34

    move-object/from16 v54, v5

    .end local v5    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .local v54, "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    move-object/from16 v63, v6

    move-object/from16 v19, v27

    move-object/from16 v62, v37

    .end local v27    # "kidFloatPropertyVal":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .end local v37    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v19, "kidFloatPropertyVal":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .local v62, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    move-object/from16 v6, v46

    move-object/from16 v27, v7

    .end local v7    # "lineLayoutContext":Lcom/itextpdf/layout/layout/LineLayoutContext;
    .local v27, "lineLayoutContext":Lcom/itextpdf/layout/layout/LineLayoutContext;
    move/from16 v7, v43

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->updateTextRendererSequenceMinMaxWidth(Lcom/itextpdf/layout/renderer/LineRenderer;Lcom/itextpdf/layout/renderer/AbstractWidthHandler;ILcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;ZLjava/util/Map;Ljava/util/Map;F)Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;

    move-result-object v38

    .line 458
    instance-of v0, v12, Lcom/itextpdf/layout/layout/TextLayoutResult;

    if-eqz v0, :cond_33

    move-object v0, v12

    check-cast v0, Lcom/itextpdf/layout/layout/TextLayoutResult;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/TextLayoutResult;->isSplitForcedByNewline()Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    goto :goto_1f

    :cond_33
    const/4 v0, 0x0

    :goto_1f
    move v7, v0

    .line 459
    .local v7, "newLineOccurred":Z
    if-nez v42, :cond_36

    .line 460
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_35

    if-eqz v7, :cond_34

    goto :goto_20

    :cond_34
    const/4 v0, 0x0

    goto :goto_21

    :cond_35
    :goto_20
    const/4 v0, 0x1

    :goto_21
    move/from16 v42, v0

    .line 463
    :cond_36
    if-eqz v42, :cond_37

    instance-of v0, v12, Lcom/itextpdf/layout/layout/TextLayoutResult;

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    goto :goto_22

    :cond_37
    const/4 v0, 0x0

    :goto_22
    move/from16 v37, v0

    .line 465
    .local v37, "shouldBreakLayoutingOnTextRenderer":Z
    const/16 v43, 0x0

    .line 467
    .local v43, "forceOverflowForTextRendererPartialResult":Z
    if-eqz v37, :cond_47

    .line 468
    move-object v0, v12

    check-cast v0, Lcom/itextpdf/layout/layout/TextLayoutResult;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/TextLayoutResult;->isWordHasBeenSplit()Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/itextpdf/layout/property/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/property/RenderingMode;

    if-eq v0, v14, :cond_38

    move-object v0, v13

    check-cast v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    .line 470
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v0

    if-nez v0, :cond_38

    const/4 v0, 0x1

    goto :goto_23

    :cond_38
    const/4 v0, 0x0

    :goto_23
    move/from16 v56, v0

    .line 471
    .local v56, "isWordHasBeenSplitLayoutRenderingMode":Z
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    .line 472
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v0

    if-eqz v0, :cond_39

    if-nez v53, :cond_39

    if-nez v7, :cond_39

    const/4 v0, 0x1

    goto :goto_24

    :cond_39
    const/4 v0, 0x0

    :goto_24
    move/from16 v58, v0

    .line 474
    .local v58, "enableSpecialScriptsWrapping":Z
    sget-object v0, Lcom/itextpdf/layout/property/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/property/RenderingMode;

    if-ne v0, v14, :cond_3a

    if-nez v7, :cond_3a

    if-nez v53, :cond_3a

    const/4 v0, 0x1

    goto :goto_25

    :cond_3a
    const/4 v0, 0x0

    :goto_25
    move/from16 v59, v0

    .line 477
    .local v59, "enableTextSequenceWrapping":Z
    if-eqz v56, :cond_3b

    .line 478
    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, v39

    move-object/from16 v3, v50

    move-object/from16 v4, p1

    move-object v5, v10

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/layout/renderer/LineRenderer;->isForceOverflowForTextRendererPartialResult(Lcom/itextpdf/layout/renderer/IRenderer;ZLcom/itextpdf/layout/property/OverflowPropertyValue;Lcom/itextpdf/layout/layout/LayoutContext;Lcom/itextpdf/kernel/geom/Rectangle;Z)Z

    move-result v43

    move-object/from16 v4, v29

    move/from16 v2, v33

    move-object/from16 v6, v50

    move-object/from16 v3, v52

    move-object/from16 v5, v54

    move-object/from16 v50, v46

    goto/16 :goto_2d

    .line 481
    :cond_3b
    if-eqz v58, :cond_3f

    .line 482
    if-eqz v39, :cond_3d

    sget-object v0, Lcom/itextpdf/layout/property/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    move-object/from16 v6, v50

    .end local v50    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v6, "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    if-ne v6, v0, :cond_3c

    const/4 v0, 0x1

    goto :goto_26

    :cond_3c
    const/4 v0, 0x0

    goto :goto_26

    .end local v6    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v50    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    :cond_3d
    move-object/from16 v6, v50

    .line 484
    .end local v50    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v6    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    const/16 v0, 0x67

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/OverflowPropertyValue;

    invoke-static {v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v0

    :goto_26
    nop

    .line 485
    .local v0, "isOverflowFit":Z
    nop

    .line 486
    move-object/from16 v5, v46

    .end local v46    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .local v5, "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    invoke-static {v8, v9, v5, v11, v0}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->getIndexAndLayoutResultOfTheLastTextRendererContainingSpecialScripts(Lcom/itextpdf/layout/renderer/LineRenderer;ILjava/util/Map;ZZ)Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;

    move-result-object v1

    .line 491
    .local v1, "lastFittingChildRendererData":Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;
    if-nez v1, :cond_3e

    .line 492
    const/4 v2, 0x1

    .line 493
    .end local v53    # "textSequenceOverflowXProcessing":Z
    .local v2, "textSequenceOverflowXProcessing":Z
    const/16 v42, 0x0

    .line 494
    move/from16 v33, v9

    move v1, v9

    move-object v0, v12

    goto :goto_27

    .line 496
    .end local v2    # "textSequenceOverflowXProcessing":Z
    .restart local v53    # "textSequenceOverflowXProcessing":Z
    :cond_3e
    iget v2, v1, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;->childIndex:I

    invoke-static {v9, v2, v5}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->getCurWidthRelayoutedTextSequenceDecrement(IILjava/util/Map;)F

    move-result v2

    sub-float v2, v21, v2

    .line 498
    .end local v21    # "curWidth":F
    .local v2, "curWidth":F
    iget v3, v1, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;->childIndex:I

    .line 499
    .end local v9    # "childPos":I
    .local v3, "childPos":I
    iget-object v4, v1, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;->childLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

    .line 500
    .end local v12    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .local v4, "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    move-object v9, v4

    check-cast v9, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v9

    .line 503
    .local v9, "textSequenceElemminMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    invoke-virtual {v9}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v30

    .line 504
    invoke-virtual {v9}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v18

    move/from16 v21, v2

    move v1, v3

    move-object v0, v4

    move/from16 v2, v53

    .line 506
    .end local v3    # "childPos":I
    .end local v4    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v9    # "textSequenceElemminMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .end local v53    # "textSequenceOverflowXProcessing":Z
    .local v0, "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .local v1, "childPos":I
    .local v2, "textSequenceOverflowXProcessing":Z
    .restart local v21    # "curWidth":F
    :goto_27
    move-object v12, v0

    move v9, v1

    move/from16 v53, v2

    move-object/from16 v50, v5

    move-object/from16 v4, v29

    move/from16 v2, v33

    move-object/from16 v3, v52

    move-object/from16 v5, v54

    goto/16 :goto_2d

    .end local v0    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v1    # "childPos":I
    .end local v2    # "textSequenceOverflowXProcessing":Z
    .end local v5    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .end local v6    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v9, "childPos":I
    .restart local v12    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .restart local v46    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .restart local v50    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v53    # "textSequenceOverflowXProcessing":Z
    :cond_3f
    move-object/from16 v5, v46

    move-object/from16 v6, v50

    .end local v46    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .end local v50    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v5    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .restart local v6    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    if-eqz v59, :cond_46

    .line 507
    if-eqz v39, :cond_41

    sget-object v0, Lcom/itextpdf/layout/property/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    if-ne v6, v0, :cond_40

    const/4 v4, 0x1

    goto :goto_28

    :cond_40
    const/4 v4, 0x0

    goto :goto_28

    .line 509
    :cond_41
    const/16 v0, 0x67

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/OverflowPropertyValue;

    invoke-static {v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v0

    move v4, v0

    :goto_28
    nop

    .line 510
    .local v4, "isOverflowFit":Z
    if-nez v35, :cond_43

    if-eqz v49, :cond_42

    goto :goto_29

    :cond_42
    const/16 v46, 0x0

    goto :goto_2a

    :cond_43
    :goto_29
    const/16 v46, 0x1

    .line 511
    :goto_2a
    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, v54

    move v3, v11

    move-object/from16 v50, v5

    .end local v5    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .local v50, "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    move/from16 v5, v46

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->getIndexAndLayoutResultOfTheLastTextRendererWithNoSpecialScripts(Lcom/itextpdf/layout/renderer/LineRenderer;ILjava/util/Map;ZZZ)Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;

    move-result-object v0

    .line 515
    .local v0, "lastFittingChildRendererData":Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;
    if-nez v0, :cond_44

    .line 516
    const/4 v1, 0x1

    .line 517
    .end local v53    # "textSequenceOverflowXProcessing":Z
    .local v1, "textSequenceOverflowXProcessing":Z
    const/16 v42, 0x0

    .line 518
    move v2, v9

    move/from16 v53, v1

    move-object/from16 v4, v29

    move-object/from16 v3, v52

    move-object/from16 v5, v54

    .end local v33    # "firstChildToRelayout":I
    .local v2, "firstChildToRelayout":I
    goto :goto_2d

    .line 520
    .end local v1    # "textSequenceOverflowXProcessing":Z
    .end local v2    # "firstChildToRelayout":I
    .restart local v33    # "firstChildToRelayout":I
    .restart local v53    # "textSequenceOverflowXProcessing":Z
    :cond_44
    iget v1, v0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;->childIndex:I

    move-object/from16 v5, v54

    .end local v54    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .local v5, "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    invoke-static {v9, v1, v5}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->getCurWidthRelayoutedTextSequenceDecrement(IILjava/util/Map;)F

    move-result v1

    sub-float v1, v21, v1

    .line 522
    .end local v21    # "curWidth":F
    .local v1, "curWidth":F
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;->childLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

    .line 524
    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_45

    iget v2, v0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;->childIndex:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    goto :goto_2b

    :cond_45
    iget v2, v0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;->childIndex:I

    .line 523
    :goto_2b
    move-object/from16 v3, v52

    .end local v52    # "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .local v3, "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    invoke-virtual {v8, v2, v15, v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->updateAscentDescentAfterTextRendererSequenceProcessing(ILcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;Ljava/util/Map;)[F

    move-result-object v2

    .line 531
    .end local v29    # "childAscentDescent":[F
    .local v2, "childAscentDescent":[F
    iget v9, v0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;->childIndex:I

    .line 532
    iget-object v12, v0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;->childLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

    .line 533
    move-object/from16 v46, v0

    .end local v0    # "lastFittingChildRendererData":Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;
    .local v46, "lastFittingChildRendererData":Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    move-object v0, v12

    check-cast v0, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    .line 536
    .local v0, "textSequenceElemminMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v30

    .line 537
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v18

    move/from16 v21, v1

    move-object v4, v2

    move/from16 v2, v33

    goto :goto_2d

    .line 506
    .end local v0    # "textSequenceElemminMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .end local v1    # "curWidth":F
    .end local v2    # "childAscentDescent":[F
    .end local v3    # "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .end local v4    # "isOverflowFit":Z
    .end local v46    # "lastFittingChildRendererData":Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;
    .end local v50    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .local v5, "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .restart local v21    # "curWidth":F
    .restart local v29    # "childAscentDescent":[F
    .restart local v52    # "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .restart local v54    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    :cond_46
    move-object/from16 v50, v5

    move-object/from16 v3, v52

    move-object/from16 v5, v54

    .end local v52    # "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .end local v54    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .restart local v3    # "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .local v5, "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .restart local v50    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    goto :goto_2c

    .line 467
    .end local v3    # "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .end local v5    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .end local v6    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v56    # "isWordHasBeenSplitLayoutRenderingMode":Z
    .end local v58    # "enableSpecialScriptsWrapping":Z
    .end local v59    # "enableTextSequenceWrapping":Z
    .local v46, "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .local v50, "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v52    # "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .restart local v54    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    :cond_47
    move-object/from16 v6, v50

    move-object/from16 v3, v52

    move-object/from16 v5, v54

    move-object/from16 v50, v46

    .line 542
    .end local v46    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .end local v52    # "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .end local v54    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .restart local v3    # "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .restart local v5    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .restart local v6    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v50, "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    :goto_2c
    move-object/from16 v4, v29

    move/from16 v2, v33

    .end local v29    # "childAscentDescent":[F
    .end local v33    # "firstChildToRelayout":I
    .local v2, "firstChildToRelayout":I
    .local v4, "childAscentDescent":[F
    :goto_2d
    if-eq v9, v2, :cond_53

    .line 543
    if-nez v43, :cond_48

    .line 544
    move/from16 v1, v41

    .end local v41    # "isChildFloating":Z
    .local v1, "isChildFloating":Z
    invoke-virtual {v8, v4, v13, v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->updateAscentDescentAfterChildLayout([FLcom/itextpdf/layout/renderer/IRenderer;Z)V

    goto :goto_2e

    .line 543
    .end local v1    # "isChildFloating":Z
    .restart local v41    # "isChildFloating":Z
    :cond_48
    move/from16 v1, v41

    .line 546
    .end local v41    # "isChildFloating":Z
    .restart local v1    # "isChildFloating":Z
    :goto_2e
    iget v0, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    move/from16 v52, v1

    .end local v1    # "isChildFloating":Z
    .local v52, "isChildFloating":Z
    iget v1, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    sub-float v1, v0, v1

    .line 548
    .local v1, "maxHeight":F
    if-eqz v34, :cond_49

    const/4 v0, 0x0

    goto :goto_2f

    :cond_49
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/layout/layout/LineLayoutContext;->getTextIndent()F

    move-result v0

    :goto_2f
    move/from16 v29, v0

    .line 549
    .local v29, "currChildTextIndent":F
    if-eqz v17, :cond_4f

    sget-object v0, Lcom/itextpdf/layout/property/TabAlignment;->LEFT:Lcom/itextpdf/layout/property/TabAlignment;

    .line 550
    move/from16 v33, v1

    .end local v1    # "maxHeight":F
    .local v33, "maxHeight":F
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/element/TabStop;->getTabAlignment()Lcom/itextpdf/layout/property/TabAlignment;

    move-result-object v1

    if-eq v0, v1, :cond_4b

    if-nez v42, :cond_4b

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-eq v0, v9, :cond_4b

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, v9, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/TabRenderer;

    if-eqz v0, :cond_4a

    goto :goto_30

    :cond_4a
    move-object/from16 v56, v3

    move-object/from16 v58, v4

    move-object/from16 v59, v5

    move-object/from16 v46, v6

    move-object/from16 v54, v14

    move-object/from16 v4, v25

    move/from16 v6, v33

    move-object/from16 v5, v47

    move/from16 v41, v48

    move/from16 v33, v52

    move v14, v2

    goto/16 :goto_33

    .line 554
    :cond_4b
    :goto_30
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    move/from16 v1, v48

    .end local v48    # "lastTabIndex":I
    .local v1, "lastTabIndex":I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 555
    .local v0, "tabRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v46, v41

    .line 556
    .local v46, "affectedRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    move-object/from16 v41, v0

    .end local v0    # "tabRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v41, "tabRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    move/from16 v48, v2

    .end local v2    # "firstChildToRelayout":I
    .local v48, "firstChildToRelayout":I
    add-int/lit8 v2, v1, 0x1

    move/from16 v54, v1

    .end local v1    # "lastTabIndex":I
    .local v54, "lastTabIndex":I
    add-int/lit8 v1, v9, 0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object/from16 v2, v46

    .end local v46    # "affectedRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v2, "affectedRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 557
    move-object/from16 v1, v41

    .end local v41    # "tabRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v1, "tabRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    move-object/from16 v0, p0

    move-object/from16 v46, v6

    move/from16 v6, v33

    move/from16 v33, v52

    move/from16 v41, v54

    move-object/from16 v52, v1

    .end local v1    # "tabRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v54    # "lastTabIndex":I
    .local v6, "maxHeight":F
    .local v33, "isChildFloating":Z
    .local v41, "lastTabIndex":I
    .local v46, "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v52, "tabRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    move-object v1, v10

    move-object/from16 v54, v14

    move/from16 v14, v48

    move-object/from16 v48, v2

    .end local v2    # "affectedRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v14, "firstChildToRelayout":I
    .local v48, "affectedRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v54, "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    move/from16 v2, v21

    move-object/from16 v56, v3

    .end local v3    # "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .local v56, "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    move-object/from16 v3, v17

    move-object/from16 v58, v4

    .end local v4    # "childAscentDescent":[F
    .local v58, "childAscentDescent":[F
    move-object/from16 v4, v48

    move-object/from16 v59, v5

    .end local v5    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .local v59, "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    move-object/from16 v5, v52

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/LineRenderer;->calculateTab(Lcom/itextpdf/kernel/geom/Rectangle;FLcom/itextpdf/layout/element/TabStop;Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;)F

    move-result v0

    .line 559
    .local v0, "tabWidth":F
    new-instance v1, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v2, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v3

    move-object/from16 v4, v25

    .end local v25    # "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v4, "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-direct {v2, v3, v4}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v1, v2, v11}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    move-object/from16 v2, v52

    .end local v52    # "tabRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v2, "tabRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-interface {v2, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    .line 560
    const/4 v1, 0x0

    .line 561
    .local v1, "sumOfAffectedRendererWidths":F
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 562
    .local v5, "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    move-object/from16 v52, v2

    .end local v2    # "tabRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .restart local v52    # "tabRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    add-float v2, v0, v1

    move-object/from16 v25, v3

    const/4 v3, 0x0

    invoke-interface {v5, v2, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 563
    invoke-interface {v5}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    .line 564
    .end local v5    # "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    move-object/from16 v3, v25

    move-object/from16 v2, v52

    goto :goto_31

    .line 565
    .end local v52    # "tabRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .restart local v2    # "tabRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_4c
    move-object/from16 v52, v2

    const/4 v3, 0x0

    .end local v2    # "tabRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .restart local v52    # "tabRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 566
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    add-float v5, v0, v1

    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v25

    sub-float v5, v5, v25

    invoke-interface {v2, v5, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 568
    :cond_4d
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    add-float/2addr v2, v0

    .line 569
    .local v2, "tabAndNextElemWidth":F
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/element/TabStop;->getTabAlignment()Lcom/itextpdf/layout/property/TabAlignment;

    move-result-object v5

    sget-object v3, Lcom/itextpdf/layout/property/TabAlignment;->RIGHT:Lcom/itextpdf/layout/property/TabAlignment;

    if-ne v5, v3, :cond_4e

    add-float v3, v21, v2

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/element/TabStop;->getTabPosition()F

    move-result v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_4e

    .line 570
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/element/TabStop;->getTabPosition()F

    move-result v3

    move/from16 v21, v3

    .end local v21    # "curWidth":F
    .local v3, "curWidth":F
    goto :goto_32

    .line 572
    .end local v3    # "curWidth":F
    .restart local v21    # "curWidth":F
    :cond_4e
    add-float v21, v21, v2

    .line 574
    :goto_32
    add-float v3, v30, v29

    move-object/from16 v5, v47

    .end local v47    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v5, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    invoke-virtual {v5, v3}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    .line 575
    add-float v3, v0, v18

    add-float v3, v3, v29

    invoke-virtual {v5, v3}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    .line 576
    const/16 v17, 0x0

    .end local v0    # "tabWidth":F
    .end local v1    # "sumOfAffectedRendererWidths":F
    .end local v2    # "tabAndNextElemWidth":F
    .end local v48    # "affectedRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v52    # "tabRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_34

    .line 549
    .end local v33    # "isChildFloating":Z
    .end local v41    # "lastTabIndex":I
    .end local v46    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v54    # "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    .end local v56    # "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .end local v58    # "childAscentDescent":[F
    .end local v59    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .local v1, "maxHeight":F
    .local v2, "firstChildToRelayout":I
    .local v3, "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .local v4, "childAscentDescent":[F
    .local v5, "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .local v6, "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v14, "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    .restart local v25    # "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v47    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v48, "lastTabIndex":I
    .local v52, "isChildFloating":Z
    :cond_4f
    move-object/from16 v56, v3

    move-object/from16 v58, v4

    move-object/from16 v59, v5

    move-object/from16 v46, v6

    move-object/from16 v54, v14

    move-object/from16 v4, v25

    move-object/from16 v5, v47

    move/from16 v41, v48

    move/from16 v33, v52

    move v6, v1

    move v14, v2

    .line 577
    .end local v1    # "maxHeight":F
    .end local v2    # "firstChildToRelayout":I
    .end local v3    # "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .end local v25    # "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v47    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .end local v48    # "lastTabIndex":I
    .end local v52    # "isChildFloating":Z
    .local v4, "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v5, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v6, "maxHeight":F
    .local v14, "firstChildToRelayout":I
    .restart local v33    # "isChildFloating":Z
    .restart local v41    # "lastTabIndex":I
    .restart local v46    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v54    # "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    .restart local v56    # "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .restart local v58    # "childAscentDescent":[F
    .restart local v59    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    :goto_33
    if-nez v17, :cond_51

    .line 578
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 579
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    add-float v21, v21, v0

    .line 581
    :cond_50
    add-float v0, v30, v29

    invoke-virtual {v5, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    .line 582
    add-float v0, v18, v29

    invoke-virtual {v5, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    move/from16 v0, v21

    goto :goto_35

    .line 577
    :cond_51
    :goto_34
    move/from16 v0, v21

    .line 584
    .end local v21    # "curWidth":F
    .local v0, "curWidth":F
    :goto_35
    if-nez v43, :cond_52

    .line 585
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v3

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v21

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v25

    add-float v21, v21, v25

    move-object/from16 v25, v4

    .end local v4    # "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v25    # "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    sub-float v4, v21, v6

    invoke-direct {v2, v3, v4, v0, v6}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/layout/LayoutArea;->setBBox(Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_36

    .line 584
    .end local v25    # "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v4    # "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_52
    move-object/from16 v25, v4

    .line 589
    .end local v4    # "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v6    # "maxHeight":F
    .end local v29    # "currChildTextIndent":F
    .restart local v25    # "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    :goto_36
    move v4, v0

    move-object/from16 v0, v17

    goto :goto_37

    .line 542
    .end local v0    # "curWidth":F
    .end local v33    # "isChildFloating":Z
    .end local v46    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v54    # "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    .end local v56    # "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .end local v58    # "childAscentDescent":[F
    .end local v59    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .restart local v2    # "firstChildToRelayout":I
    .restart local v3    # "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .local v4, "childAscentDescent":[F
    .local v5, "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .local v6, "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v14, "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    .restart local v21    # "curWidth":F
    .local v41, "isChildFloating":Z
    .restart local v47    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v48    # "lastTabIndex":I
    :cond_53
    move-object/from16 v56, v3

    move-object/from16 v58, v4

    move-object/from16 v59, v5

    move-object/from16 v46, v6

    move-object/from16 v54, v14

    move/from16 v33, v41

    move-object/from16 v5, v47

    move/from16 v41, v48

    move v14, v2

    .end local v2    # "firstChildToRelayout":I
    .end local v3    # "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .end local v4    # "childAscentDescent":[F
    .end local v6    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v47    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .end local v48    # "lastTabIndex":I
    .local v5, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v14, "firstChildToRelayout":I
    .restart local v33    # "isChildFloating":Z
    .local v41, "lastTabIndex":I
    .restart local v46    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v54    # "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    .restart local v56    # "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .restart local v58    # "childAscentDescent":[F
    .restart local v59    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    move-object/from16 v0, v17

    move/from16 v4, v21

    .line 589
    .end local v17    # "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    .end local v21    # "curWidth":F
    .local v0, "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    .local v4, "curWidth":F
    :goto_37
    if-eqz v42, :cond_64

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->split()[Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object v1

    .line 591
    .local v1, "split":[Lcom/itextpdf/layout/renderer/LineRenderer;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/itextpdf/layout/renderer/LineRenderer;->setChildRenderers(Ljava/util/List;)V

    .line 593
    if-eqz v43, :cond_54

    .line 594
    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-virtual {v3, v13}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    move-object/from16 v17, v0

    move/from16 v21, v4

    move-object/from16 v29, v10

    const/4 v0, 0x1

    goto/16 :goto_3a

    .line 596
    :cond_54
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v3, 0x1a

    invoke-virtual {v8, v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 597
    .local v2, "forcePlacement":Z
    if-eqz v32, :cond_55

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->isFirstOnRootArea()Z

    move-result v3

    if-eqz v3, :cond_55

    const/4 v3, 0x1

    goto :goto_38

    :cond_55
    const/4 v3, 0x0

    .line 598
    .local v3, "isInlineBlockAndFirstOnRootArea":Z
    :goto_38
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v6

    move-object/from16 v17, v0

    const/4 v0, 0x2

    .end local v0    # "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    .restart local v17    # "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    if-ne v6, v0, :cond_56

    if-eqz v32, :cond_57

    if-nez v2, :cond_57

    if-nez v3, :cond_57

    .line 600
    :cond_56
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_59

    .line 601
    :cond_57
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    .line 602
    .local v0, "splitRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    move/from16 v21, v4

    const/4 v6, 0x0

    .end local v4    # "curWidth":F
    .restart local v21    # "curWidth":F
    aget-object v4, v1, v6

    invoke-virtual {v4, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 605
    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    move-object/from16 v29, v10

    .end local v10    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v29, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    aget-object v10, v1, v6

    if-eq v4, v10, :cond_58

    aget-object v4, v1, v6

    iget-object v4, v4, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 606
    aget-object v4, v1, v6

    invoke-interface {v0, v4}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 608
    :cond_58
    const/16 v34, 0x1

    goto :goto_39

    .line 600
    .end local v0    # "splitRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v21    # "curWidth":F
    .end local v29    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v4    # "curWidth":F
    .restart local v10    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_59
    move/from16 v21, v4

    move-object/from16 v29, v10

    .line 611
    .end local v4    # "curWidth":F
    .end local v10    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v21    # "curWidth":F
    .restart local v29    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    :goto_39
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 612
    if-eqz v32, :cond_5a

    if-nez v2, :cond_5a

    if-nez v3, :cond_5a

    .line 613
    const/4 v0, 0x1

    aget-object v4, v1, v0

    invoke-virtual {v4, v13}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    const/4 v0, 0x1

    goto :goto_3a

    .line 614
    :cond_5a
    if-eqz v32, :cond_5c

    .line 615
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 616
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5c

    .line 617
    sget-object v0, Lcom/itextpdf/layout/renderer/LineRenderer;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 618
    move-object/from16 v4, v63

    invoke-interface {v0, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_3a

    .line 617
    :cond_5b
    const/4 v0, 0x1

    goto :goto_3a

    .line 621
    :cond_5c
    const/4 v0, 0x1

    aget-object v4, v1, v0

    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_3a

    .line 611
    :cond_5d
    const/4 v0, 0x1

    .line 625
    .end local v2    # "forcePlacement":Z
    .end local v3    # "isInlineBlockAndFirstOnRootArea":Z
    :goto_3a
    aget-object v2, v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v3, v9, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->addAllChildRenderers(Ljava/util/List;)V

    .line 627
    const/4 v0, 0x0

    aget-object v2, v1, v0

    move-object/from16 v6, v61

    .end local v61    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v6, "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-direct {v8, v6, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->replaceSplitRendererKidFloats(Ljava/util/Map;Lcom/itextpdf/layout/renderer/LineRenderer;)V

    .line 628
    aget-object v2, v1, v0

    move-object/from16 v10, v45

    .end local v45    # "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v10, "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-virtual {v2, v10}, Lcom/itextpdf/layout/renderer/LineRenderer;->removeAllChildRenderers(Ljava/util/Collection;)Z

    .line 629
    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-virtual {v3, v0, v10}, Lcom/itextpdf/layout/renderer/LineRenderer;->addAllChildRenderers(ILjava/util/List;)V

    .line 632
    aget-object v0, v1, v2

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface/range {v57 .. v57}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 633
    const/4 v0, 0x0

    aput-object v0, v1, v2

    .line 636
    :cond_5e
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5f

    .line 637
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    goto :goto_3b

    :cond_5f
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    :goto_3b
    move-object/from16 v68, v0

    .line 638
    .local v68, "causeOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    const/4 v0, 0x1

    aget-object v2, v1, v0

    if-nez v2, :cond_60

    .line 639
    new-instance v2, Lcom/itextpdf/layout/layout/LineLayoutResult;

    const/16 v64, 0x1

    iget-object v3, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v4, 0x0

    aget-object v66, v1, v4

    aget-object v67, v1, v0

    move-object/from16 v63, v2

    move-object/from16 v65, v3

    invoke-direct/range {v63 .. v68}, Lcom/itextpdf/layout/layout/LineLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    move-object v0, v2

    .end local v26    # "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    .local v0, "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    goto :goto_3d

    .line 640
    .end local v0    # "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    .restart local v26    # "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    :cond_60
    if-nez v34, :cond_62

    if-eqz v35, :cond_61

    goto :goto_3c

    .line 644
    :cond_61
    new-instance v0, Lcom/itextpdf/layout/layout/LineLayoutResult;

    const/16 v70, 0x3

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/4 v2, 0x1

    aget-object v73, v1, v2

    const/16 v74, 0x0

    move-object/from16 v69, v0

    invoke-direct/range {v69 .. v74}, Lcom/itextpdf/layout/layout/LineLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .end local v26    # "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    .restart local v0    # "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    goto :goto_3d

    .line 641
    .end local v0    # "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    .restart local v26    # "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    :cond_62
    :goto_3c
    new-instance v0, Lcom/itextpdf/layout/layout/LineLayoutResult;

    const/16 v70, 0x2

    iget-object v2, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v3, 0x0

    aget-object v72, v1, v3

    const/4 v3, 0x1

    aget-object v73, v1, v3

    move-object/from16 v69, v0

    move-object/from16 v71, v2

    move-object/from16 v74, v68

    invoke-direct/range {v69 .. v74}, Lcom/itextpdf/layout/layout/LineLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 646
    .end local v26    # "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    .restart local v0    # "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    :goto_3d
    move-object/from16 v3, v57

    .end local v57    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v3, "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/layout/LineLayoutResult;->setFloatsOverflowedToNextPage(Ljava/util/List;)V

    .line 647
    if-eqz v7, :cond_63

    .line 648
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/layout/LineLayoutResult;->setSplitForcedByNewline(Z)Lcom/itextpdf/layout/layout/LineLayoutResult;

    .line 662
    .end local v1    # "split":[Lcom/itextpdf/layout/renderer/LineRenderer;
    .end local v7    # "newLineOccurred":Z
    .end local v12    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v13    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v16    # "childRendererHasOwnWidthProperty":Z
    .end local v18    # "maxChildWidth":F
    .end local v19    # "kidFloatPropertyVal":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .end local v20    # "childWidthWasReplaced":Z
    .end local v25    # "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v30    # "minChildWidth":F
    .end local v31    # "childWidth":Ljava/lang/Object;
    .end local v32    # "isInlineBlockChild":Z
    .end local v33    # "isChildFloating":Z
    .end local v37    # "shouldBreakLayoutingOnTextRenderer":Z
    .end local v42    # "shouldBreakLayouting":Z
    .end local v43    # "forceOverflowForTextRendererPartialResult":Z
    .end local v44    # "childBlockMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .end local v54    # "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    .end local v58    # "childAscentDescent":[F
    .end local v68    # "causeOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_63
    move-object/from16 v26, v0

    move/from16 v33, v14

    move-object v14, v15

    move-object/from16 v7, v17

    move/from16 v13, v21

    move/from16 v42, v39

    move-object/from16 v12, v46

    goto/16 :goto_3f

    .line 653
    .end local v3    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v6    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v17    # "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    .end local v21    # "curWidth":F
    .end local v29    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v0, "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    .restart local v4    # "curWidth":F
    .restart local v7    # "newLineOccurred":Z
    .local v10, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v12    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .restart local v13    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .restart local v16    # "childRendererHasOwnWidthProperty":Z
    .restart local v18    # "maxChildWidth":F
    .restart local v19    # "kidFloatPropertyVal":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .restart local v20    # "childWidthWasReplaced":Z
    .restart local v25    # "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v26    # "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    .restart local v30    # "minChildWidth":F
    .restart local v31    # "childWidth":Ljava/lang/Object;
    .restart local v32    # "isInlineBlockChild":Z
    .restart local v33    # "isChildFloating":Z
    .restart local v37    # "shouldBreakLayoutingOnTextRenderer":Z
    .restart local v42    # "shouldBreakLayouting":Z
    .restart local v43    # "forceOverflowForTextRendererPartialResult":Z
    .restart local v44    # "childBlockMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .restart local v45    # "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v54    # "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    .restart local v57    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v58    # "childAscentDescent":[F
    .restart local v61    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :cond_64
    move-object/from16 v17, v0

    move/from16 v21, v4

    move-object/from16 v29, v10

    move-object/from16 v10, v45

    move-object/from16 v3, v57

    move-object/from16 v6, v61

    .end local v0    # "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    .end local v4    # "curWidth":F
    .end local v45    # "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v57    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v61    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v3    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v6    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v10, "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v17    # "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    .restart local v21    # "curWidth":F
    .restart local v29    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    if-ne v9, v14, :cond_65

    .line 654
    const/4 v0, -0x1

    move/from16 v33, v0

    move v1, v9

    .end local v14    # "firstChildToRelayout":I
    .local v0, "firstChildToRelayout":I
    goto :goto_3e

    .line 656
    .end local v0    # "firstChildToRelayout":I
    .restart local v14    # "firstChildToRelayout":I
    :cond_65
    const/4 v0, 0x1

    .line 657
    .end local v34    # "anythingPlaced":Z
    .local v0, "anythingPlaced":Z
    add-int/lit8 v9, v9, 0x1

    move/from16 v34, v0

    move v1, v9

    move/from16 v33, v14

    .line 660
    .end local v0    # "anythingPlaced":Z
    .end local v7    # "newLineOccurred":Z
    .end local v9    # "childPos":I
    .end local v12    # "childResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v13    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v14    # "firstChildToRelayout":I
    .end local v16    # "childRendererHasOwnWidthProperty":Z
    .end local v18    # "maxChildWidth":F
    .end local v19    # "kidFloatPropertyVal":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .end local v20    # "childWidthWasReplaced":Z
    .end local v25    # "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v30    # "minChildWidth":F
    .end local v31    # "childWidth":Ljava/lang/Object;
    .end local v32    # "isInlineBlockChild":Z
    .end local v37    # "shouldBreakLayoutingOnTextRenderer":Z
    .end local v42    # "shouldBreakLayouting":Z
    .end local v43    # "forceOverflowForTextRendererPartialResult":Z
    .end local v44    # "childBlockMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .end local v54    # "childRenderingMode":Lcom/itextpdf/layout/property/RenderingMode;
    .end local v58    # "childAscentDescent":[F
    .local v1, "childPos":I
    .local v33, "firstChildToRelayout":I
    .restart local v34    # "anythingPlaced":Z
    :goto_3e
    move-object/from16 v0, v17

    move/from16 v4, v21

    move-object/from16 v7, v27

    move-object/from16 v12, v28

    move-object/from16 v9, v40

    move/from16 v13, v41

    move-object/from16 v2, v46

    move/from16 v14, v49

    move-object/from16 v30, v50

    move-object/from16 v32, v56

    move-object/from16 v31, v59

    move-object/from16 v37, v62

    move-object/from16 v28, v3

    move-object/from16 v27, v6

    move-object v6, v15

    move/from16 v3, v39

    move-object v15, v5

    move/from16 v5, v53

    move-object/from16 v76, v29

    move-object/from16 v29, v10

    move-object/from16 v10, v76

    goto/16 :goto_4

    .line 195
    .end local v17    # "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    .end local v21    # "curWidth":F
    .end local v41    # "lastTabIndex":I
    .end local v46    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v49    # "floatsPlacedBeforeLine":Z
    .end local v50    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .end local v53    # "textSequenceOverflowXProcessing":Z
    .end local v56    # "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .end local v59    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .end local v62    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v0, "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    .local v3, "wasXOverflowChanged":Z
    .restart local v4    # "curWidth":F
    .local v5, "textSequenceOverflowXProcessing":Z
    .local v6, "lineAscentDescentStateBeforeTextRendererSequence":Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;
    .local v7, "lineLayoutContext":Lcom/itextpdf/layout/layout/LineLayoutContext;
    .local v10, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v12, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v13, "lastTabIndex":I
    .local v14, "floatsPlacedBeforeLine":Z
    .local v15, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v27, "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v28, "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v29, "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v30, "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .local v31, "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .local v32, "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .local v37, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v39, "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    :cond_66
    move-object/from16 v17, v0

    move v9, v1

    move/from16 v42, v3

    move/from16 v53, v5

    move-object v0, v6

    move/from16 v41, v13

    move/from16 v49, v14

    move-object v5, v15

    move-object/from16 v6, v27

    move-object/from16 v3, v28

    move-object/from16 v50, v30

    move-object/from16 v59, v31

    move-object/from16 v56, v32

    move-object/from16 v62, v37

    move-object/from16 v27, v7

    move-object/from16 v28, v12

    move-object/from16 v76, v29

    move-object/from16 v29, v10

    move-object/from16 v10, v76

    .end local v1    # "childPos":I
    .end local v7    # "lineLayoutContext":Lcom/itextpdf/layout/layout/LineLayoutContext;
    .end local v12    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v13    # "lastTabIndex":I
    .end local v14    # "floatsPlacedBeforeLine":Z
    .end local v15    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .end local v30    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .end local v31    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .end local v32    # "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .end local v37    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v0, "lineAscentDescentStateBeforeTextRendererSequence":Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;
    .local v3, "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v5, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v6, "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v9    # "childPos":I
    .local v10, "floatsOverflowedToNextLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v17    # "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    .local v27, "lineLayoutContext":Lcom/itextpdf/layout/layout/LineLayoutContext;
    .local v28, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v29, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v41    # "lastTabIndex":I
    .local v42, "wasXOverflowChanged":Z
    .restart local v49    # "floatsPlacedBeforeLine":Z
    .restart local v50    # "specialScriptLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .restart local v53    # "textSequenceOverflowXProcessing":Z
    .restart local v56    # "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    .restart local v59    # "textRendererLayoutResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/layout/LayoutResult;>;"
    .restart local v62    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    move-object v14, v0

    move v13, v4

    move-object/from16 v7, v17

    move-object/from16 v12, v39

    .line 662
    .end local v0    # "lineAscentDescentStateBeforeTextRendererSequence":Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;
    .end local v4    # "curWidth":F
    .end local v17    # "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    .end local v39    # "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v7, "hangingTabStop":Lcom/itextpdf/layout/element/TabStop;
    .local v12, "oldXOverflow":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v13, "curWidth":F
    .local v14, "lineAscentDescentStateBeforeTextRendererSequence":Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;
    :goto_3f
    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v15, v50

    move/from16 v18, v9

    move-object/from16 v19, v38

    move/from16 v20, v22

    move-object/from16 v21, v5

    invoke-static/range {v15 .. v21}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->resetTextSequenceIfItEnded(Ljava/util/Map;ZLcom/itextpdf/layout/renderer/IRenderer;ILcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;ZLcom/itextpdf/layout/renderer/AbstractWidthHandler;)V

    .line 664
    const/16 v16, 0x0

    move-object/from16 v15, v59

    invoke-static/range {v15 .. v21}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->resetTextSequenceIfItEnded(Ljava/util/Map;ZLcom/itextpdf/layout/renderer/IRenderer;ILcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;ZLcom/itextpdf/layout/renderer/AbstractWidthHandler;)V

    .line 667
    if-nez v26, :cond_70

    .line 668
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    const/4 v15, 0x1

    goto :goto_40

    :cond_67
    const/4 v15, 0x0

    .line 669
    .local v15, "noOverflowedFloats":Z
    :goto_40
    if-nez v34, :cond_68

    if-eqz v35, :cond_69

    :cond_68
    if-nez v15, :cond_6f

    :cond_69
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6a

    move-object v2, v3

    move-object/from16 v16, v5

    goto/16 :goto_43

    .line 672
    :cond_6a
    if-eqz v15, :cond_6b

    .line 675
    new-instance v0, Lcom/itextpdf/layout/layout/LineLayoutResult;

    iget-object v1, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1, v2, v2}, Lcom/itextpdf/layout/layout/LineLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    move-object/from16 v26, v0

    move-object v2, v3

    move-object/from16 v16, v5

    move-object/from16 v1, v26

    goto/16 :goto_44

    .line 676
    :cond_6b
    if-nez v34, :cond_6e

    if-eqz v35, :cond_6c

    move-object/from16 v75, v3

    move-object/from16 v16, v5

    goto :goto_42

    .line 690
    :cond_6c
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6d

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_41

    :cond_6d
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_41
    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    move-object/from16 v16, v5

    .end local v5    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v16, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    move-object v5, v1

    .line 691
    .local v5, "causeOfNothing":Lcom/itextpdf/layout/renderer/IRenderer;
    new-instance v17, Lcom/itextpdf/layout/layout/LineLayoutResult;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v75, v3

    .end local v3    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v75, "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    move-object v3, v4

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LineLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    move-object/from16 v26, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v75

    goto :goto_44

    .line 676
    .end local v16    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .end local v75    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v3    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v5, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    :cond_6e
    move-object/from16 v75, v3

    move-object/from16 v16, v5

    .line 677
    .end local v3    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v5    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v16    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v75    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :goto_42
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->split()[Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object v0

    .line 678
    .local v0, "split":[Lcom/itextpdf/layout/renderer/LineRenderer;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->addAllChildRenderers(Ljava/util/List;)V

    .line 679
    aget-object v2, v0, v1

    invoke-direct {v8, v6, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->replaceSplitRendererKidFloats(Ljava/util/Map;Lcom/itextpdf/layout/renderer/LineRenderer;)V

    .line 680
    aget-object v2, v0, v1

    invoke-virtual {v2, v10}, Lcom/itextpdf/layout/renderer/LineRenderer;->removeAllChildRenderers(Ljava/util/Collection;)Z

    .line 686
    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-virtual {v3, v10}, Lcom/itextpdf/layout/renderer/LineRenderer;->addAllChildRenderers(Ljava/util/List;)V

    .line 687
    new-instance v3, Lcom/itextpdf/layout/layout/LineLayoutResult;

    const/16 v64, 0x2

    iget-object v4, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    aget-object v66, v0, v1

    aget-object v67, v0, v2

    const/16 v68, 0x0

    move-object/from16 v63, v3

    move-object/from16 v65, v4

    invoke-direct/range {v63 .. v68}, Lcom/itextpdf/layout/layout/LineLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    move-object v1, v3

    .line 688
    .end local v26    # "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    .local v1, "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    move-object/from16 v2, v75

    .end local v75    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v2, "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/layout/LineLayoutResult;->setFloatsOverflowedToNextPage(Ljava/util/List;)V

    .line 689
    .end local v0    # "split":[Lcom/itextpdf/layout/renderer/LineRenderer;
    goto :goto_44

    .line 669
    .end local v1    # "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    .end local v2    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v16    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v3    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v5    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v26    # "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    :cond_6f
    move-object v2, v3

    move-object/from16 v16, v5

    .line 670
    .end local v3    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v5    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v2    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v16    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    :goto_43
    new-instance v0, Lcom/itextpdf/layout/layout/LineLayoutResult;

    iget-object v1, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1, v3, v3}, Lcom/itextpdf/layout/layout/LineLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    move-object/from16 v26, v0

    move-object/from16 v1, v26

    goto :goto_44

    .line 667
    .end local v2    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v15    # "noOverflowedFloats":Z
    .end local v16    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v3    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v5    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    :cond_70
    move-object v2, v3

    move-object/from16 v16, v5

    .end local v3    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v5    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v2    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v16    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    move-object/from16 v1, v26

    .line 696
    .end local v26    # "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    .restart local v1    # "result":Lcom/itextpdf/layout/layout/LineLayoutResult;
    :goto_44
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    .line 697
    .local v0, "toProcess":Lcom/itextpdf/layout/renderer/LineRenderer;
    if-nez v0, :cond_71

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getStatus()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_71

    .line 698
    move-object/from16 v0, p0

    .line 700
    :cond_71
    if-eqz v40, :cond_76

    sget-object v3, Lcom/itextpdf/layout/property/BaseDirection;->NO_BIDI:Lcom/itextpdf/layout/property/BaseDirection;

    move-object/from16 v4, v40

    .end local v40    # "baseDirection":Lcom/itextpdf/layout/property/BaseDirection;
    .local v4, "baseDirection":Lcom/itextpdf/layout/property/BaseDirection;
    if-eq v4, v3, :cond_75

    if-eqz v0, :cond_75

    .line 701
    invoke-static {v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->splitLineIntoGlyphs(Lcom/itextpdf/layout/renderer/LineRenderer;)Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;

    move-result-object v3

    .line 702
    .local v3, "splitIntoGlyphsData":Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->getLineGlyphs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [B

    .line 703
    .local v5, "lineLevels":[B
    iget-object v15, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    if-eqz v15, :cond_72

    .line 704
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->getLineGlyphs()Ljava/util/List;

    move-result-object v17

    move-object/from16 v57, v2

    .end local v2    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v57    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v40, v4

    const/4 v4, 0x0

    .end local v4    # "baseDirection":Lcom/itextpdf/layout/property/BaseDirection;
    .restart local v40    # "baseDirection":Lcom/itextpdf/layout/property/BaseDirection;
    invoke-static {v15, v4, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_45

    .line 703
    .end local v40    # "baseDirection":Lcom/itextpdf/layout/property/BaseDirection;
    .end local v57    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v2    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v4    # "baseDirection":Lcom/itextpdf/layout/property/BaseDirection;
    :cond_72
    move-object/from16 v57, v2

    move-object/from16 v40, v4

    .line 707
    .end local v2    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v4    # "baseDirection":Lcom/itextpdf/layout/property/BaseDirection;
    .restart local v40    # "baseDirection":Lcom/itextpdf/layout/property/BaseDirection;
    .restart local v57    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :goto_45
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->getLineGlyphs()Ljava/util/List;

    move-result-object v2

    iget-object v4, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    invoke-static {v2, v5, v4}, Lcom/itextpdf/layout/renderer/TypographyUtils;->reorderLine(Ljava/util/List;[B[B)[I

    move-result-object v2

    .line 708
    .local v2, "newOrder":[I
    if-eqz v2, :cond_73

    .line 709
    invoke-static {v0, v3, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->reorder(Lcom/itextpdf/layout/renderer/LineRenderer;Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;[I)V

    .line 710
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v4

    iget-object v15, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v15

    invoke-virtual {v15}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v15

    invoke-static {v4, v15}, Lcom/itextpdf/layout/renderer/LineRenderer;->adjustChildPositionsAfterReordering(Ljava/util/List;F)V

    .line 713
    :cond_73
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getStatus()I

    move-result v4

    const/4 v15, 0x2

    if-ne v4, v15, :cond_74

    iget-object v4, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    if-eqz v4, :cond_74

    .line 714
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/LineRenderer;

    .line 715
    .local v4, "overflow":Lcom/itextpdf/layout/renderer/LineRenderer;
    iget-object v15, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    array-length v15, v15

    move-object/from16 v17, v2

    .end local v2    # "newOrder":[I
    .local v17, "newOrder":[I
    array-length v2, v5

    sub-int/2addr v15, v2

    new-array v2, v15, [B

    iput-object v2, v4, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    .line 716
    iget-object v15, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    move-object/from16 v18, v3

    .end local v3    # "splitIntoGlyphsData":Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;
    .local v18, "splitIntoGlyphsData":Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;
    array-length v3, v5

    move-object/from16 v19, v5

    .end local v5    # "lineLevels":[B
    .local v19, "lineLevels":[B
    array-length v5, v2

    move-object/from16 v61, v6

    const/4 v6, 0x0

    .end local v6    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v61    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-static {v15, v3, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 717
    iget-object v2, v4, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    array-length v2, v2

    if-nez v2, :cond_77

    .line 718
    const/4 v2, 0x0

    iput-object v2, v4, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    goto :goto_46

    .line 713
    .end local v4    # "overflow":Lcom/itextpdf/layout/renderer/LineRenderer;
    .end local v17    # "newOrder":[I
    .end local v18    # "splitIntoGlyphsData":Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;
    .end local v19    # "lineLevels":[B
    .end local v61    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v2    # "newOrder":[I
    .restart local v3    # "splitIntoGlyphsData":Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;
    .restart local v5    # "lineLevels":[B
    .restart local v6    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :cond_74
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v61, v6

    .end local v2    # "newOrder":[I
    .end local v3    # "splitIntoGlyphsData":Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;
    .end local v5    # "lineLevels":[B
    .end local v6    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v17    # "newOrder":[I
    .restart local v18    # "splitIntoGlyphsData":Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;
    .restart local v19    # "lineLevels":[B
    .restart local v61    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    goto :goto_46

    .line 700
    .end local v17    # "newOrder":[I
    .end local v18    # "splitIntoGlyphsData":Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;
    .end local v19    # "lineLevels":[B
    .end local v40    # "baseDirection":Lcom/itextpdf/layout/property/BaseDirection;
    .end local v57    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v61    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v2, "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .local v4, "baseDirection":Lcom/itextpdf/layout/property/BaseDirection;
    .restart local v6    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :cond_75
    move-object/from16 v57, v2

    move-object/from16 v40, v4

    move-object/from16 v61, v6

    .end local v2    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v4    # "baseDirection":Lcom/itextpdf/layout/property/BaseDirection;
    .end local v6    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v40    # "baseDirection":Lcom/itextpdf/layout/property/BaseDirection;
    .restart local v57    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v61    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    goto :goto_46

    .end local v57    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v61    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v2    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v6    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :cond_76
    move-object/from16 v57, v2

    move-object/from16 v61, v6

    .line 723
    .end local v2    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v6    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v57    # "floatsToNextPageOverflowRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .restart local v61    # "floatsToNextPageSplitRenderers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/layout/renderer/IRenderer;>;"
    :cond_77
    :goto_46
    if-nez v34, :cond_79

    if-eqz v35, :cond_78

    goto :goto_47

    :cond_78
    move-object/from16 v2, v62

    goto :goto_48

    .line 724
    :cond_79
    :goto_47
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->adjustChildrenYLine()Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->trimLast()Lcom/itextpdf/layout/renderer/LineRenderer;

    .line 725
    move-object/from16 v2, v62

    .end local v62    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v2, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/layout/LineLayoutResult;->setMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    .line 728
    :goto_48
    if-eqz v42, :cond_7b

    .line 729
    const/16 v3, 0x67

    invoke-virtual {v8, v3, v12}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    .line 730
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    if-eqz v4, :cond_7a

    .line 731
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    invoke-interface {v4, v3, v12}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 733
    :cond_7a
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    if-eqz v4, :cond_7b

    .line 734
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    invoke-interface {v4, v3, v12}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 737
    :cond_7b
    return-object v1
.end method

.method protected length()I
    .locals 4

    .line 838
    const/4 v0, 0x0

    .line 839
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 840
    .local v2, "child":Lcom/itextpdf/layout/renderer/IRenderer;
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 841
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->lineLength()I

    move-result v3

    add-int/2addr v0, v3

    .line 843
    .end local v2    # "child":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_0
    goto :goto_0

    .line 844
    :cond_1
    return v0
.end method

.method protected split()[Lcom/itextpdf/layout/renderer/LineRenderer;
    .locals 4

    .line 879
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->createSplitRenderer()Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object v0

    .line 880
    .local v0, "splitRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 881
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 882
    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    iput v1, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    .line 883
    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    iput v1, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    .line 884
    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    iput v1, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    .line 885
    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    iput v1, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    .line 886
    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockAscent:F

    iput v1, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockAscent:F

    .line 887
    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockDescent:F

    iput v1, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockDescent:F

    .line 888
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    .line 889
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 891
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->createOverflowRenderer()Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object v1

    .line 892
    .local v1, "overflowRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v2, v1, Lcom/itextpdf/layout/renderer/LineRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 893
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 895
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/itextpdf/layout/renderer/LineRenderer;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 864
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 865
    .local v2, "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    .end local v2    # "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_0

    .line 867
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method trimFirst()I
    .locals 7

    .line 1268
    const/4 v0, 0x0

    .line 1269
    .local v0, "totalNumberOfTrimmedGlyphs":I
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1270
    .local v2, "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-static {v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1271
    goto :goto_0

    .line 1274
    :cond_0
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v3, :cond_3

    .line 1275
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    .line 1276
    .local v3, "textRenderer":Lcom/itextpdf/layout/renderer/TextRenderer;
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->getText()Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v4

    .line 1277
    .local v4, "currentText":Lcom/itextpdf/io/font/otf/GlyphLine;
    if-eqz v4, :cond_1

    .line 1278
    iget v5, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 1279
    .local v5, "prevTextStart":I
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->trimFirst()V

    .line 1280
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->getText()Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v6

    iget v6, v6, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    sub-int/2addr v6, v5

    .line 1281
    .local v6, "numOfTrimmedGlyphs":I
    add-int/2addr v0, v6

    .line 1283
    .end local v5    # "prevTextStart":I
    .end local v6    # "numOfTrimmedGlyphs":I
    :cond_1
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->length()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    move v3, v5

    .line 1284
    .end local v4    # "currentText":Lcom/itextpdf/io/font/otf/GlyphLine;
    .local v3, "trimFinished":Z
    goto :goto_2

    .line 1285
    .end local v3    # "trimFinished":Z
    :cond_3
    const/4 v3, 0x1

    .line 1287
    .restart local v3    # "trimFinished":Z
    :goto_2
    if-eqz v3, :cond_4

    .line 1288
    goto :goto_3

    .line 1290
    .end local v2    # "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v3    # "trimFinished":Z
    :cond_4
    goto :goto_0

    .line 1291
    :cond_5
    :goto_3
    return v0
.end method

.method protected trimLast()Lcom/itextpdf/layout/renderer/LineRenderer;
    .locals 5

    .line 926
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 927
    .local v0, "lastIndex":I
    const/4 v1, 0x0

    .line 928
    .local v1, "lastRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 929
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 930
    invoke-static {v1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 934
    :cond_1
    instance-of v2, v1, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v2, :cond_2

    if-ltz v0, :cond_2

    .line 935
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->trimLast()F

    move-result v2

    .line 936
    .local v2, "trimmedSpace":F
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    sub-float/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 938
    .end local v2    # "trimmedSpace":F
    :cond_2
    return-object p0
.end method

.method updateAscentDescentAfterChildLayout([FLcom/itextpdf/layout/renderer/IRenderer;Z)V
    .locals 3
    .param p1, "childAscentDescent"    # [F
    .param p2, "childRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p3, "isChildFloating"    # Z

    .line 1445
    const/4 v0, 0x0

    aget v0, p1, v0

    .line 1446
    .local v0, "childAscent":F
    const/4 v1, 0x1

    aget v1, p1, v1

    .line 1447
    .local v1, "childDescent":F
    iget v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    .line 1448
    instance-of v2, p2, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v2, :cond_0

    .line 1449
    iget v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    goto :goto_0

    .line 1450
    :cond_0
    if-nez p3, :cond_1

    .line 1451
    iget v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockAscent:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockAscent:F

    .line 1453
    :cond_1
    :goto_0
    iget v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    .line 1454
    instance-of v2, p2, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v2, :cond_2

    .line 1455
    iget v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    goto :goto_1

    .line 1456
    :cond_2
    if-nez p3, :cond_3

    .line 1457
    iget v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockDescent:F

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockDescent:F

    .line 1459
    :cond_3
    :goto_1
    return-void
.end method

.method updateAscentDescentAfterTextRendererSequenceProcessing(ILcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;Ljava/util/Map;)[F
    .locals 9
    .param p1, "newChildPos"    # I
    .param p2, "lineAscentDescentStateBeforeTextRendererSequence"    # Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[F>;)[F"
        }
    .end annotation

    .line 1412
    .local p3, "textRendererSequenceAscentDescent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[F>;"
    iget v0, p2, Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;->maxAscent:F

    .line 1413
    .local v0, "maxAscentUpdated":F
    iget v1, p2, Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;->maxDescent:F

    .line 1414
    .local v1, "maxDescentUpdated":F
    iget v2, p2, Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;->maxTextAscent:F

    .line 1415
    .local v2, "maxTextAscentUpdated":F
    iget v3, p2, Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;->maxTextDescent:F

    .line 1416
    .local v3, "maxTextDescentUpdated":F
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1417
    .local v5, "childAscentDescent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v8, p1, :cond_0

    .line 1418
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    aget v8, v8, v7

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1419
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    aget v8, v8, v6

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1420
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    aget v7, v8, v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1421
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    aget v6, v7, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1423
    .end local v5    # "childAscentDescent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    :cond_0
    goto :goto_0

    .line 1425
    :cond_1
    iput v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    .line 1426
    iput v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    .line 1427
    iput v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    .line 1428
    iput v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    .line 1430
    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v0, v4, v7

    aput v1, v4, v6

    return-object v4
.end method
