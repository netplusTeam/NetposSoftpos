.class public final Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;
.super Ljava/lang/Object;
.source "MinMaxWidthUtils.java"


# static fields
.field private static final eps:F = 0.01f

.field private static final max:F = 32760.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countDefaultMinMaxWidth(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 5
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 79
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getInfWidth()F

    move-result v3

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getInfHeight()F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    .line 80
    .local v0, "result":Lcom/itextpdf/layout/layout/LayoutResult;
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-direct {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    .line 81
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>(FFF)V

    .line 80
    :goto_0
    return-object v1
.end method

.method public static getBorderWidth(Lcom/itextpdf/layout/IPropertyContainer;)F
    .locals 6
    .param p0, "element"    # Lcom/itextpdf/layout/IPropertyContainer;

    .line 85
    const/16 v0, 0x9

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/borders/Border;

    .line 86
    .local v0, "border":Lcom/itextpdf/layout/borders/Border;
    const/16 v1, 0xc

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/borders/Border;

    .line 87
    .local v2, "rightBorder":Lcom/itextpdf/layout/borders/Border;
    const/16 v3, 0xb

    invoke-interface {p0, v3}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    .line 89
    .local v4, "leftBorder":Lcom/itextpdf/layout/borders/Border;
    invoke-interface {p0, v1}, Lcom/itextpdf/layout/IPropertyContainer;->hasOwnProperty(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    move-object v2, v0

    .line 92
    :cond_0
    invoke-interface {p0, v3}, Lcom/itextpdf/layout/IPropertyContainer;->hasOwnProperty(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    move-object v4, v0

    .line 96
    :cond_1
    const/4 v1, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v1

    .line 97
    .local v3, "rightBorderWidth":F
    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    .line 98
    .local v1, "leftBorderWidth":F
    :cond_3
    add-float v5, v3, v1

    return v5
.end method

.method public static getEps()F
    .locals 1

    .line 65
    const v0, 0x3c23d70a    # 0.01f

    return v0
.end method

.method private static getInfHeight()F
    .locals 1

    .line 72
    const v0, 0x49742400    # 1000000.0f

    return v0
.end method

.method public static getInfWidth()F
    .locals 1

    .line 69
    const v0, 0x46fff000    # 32760.0f

    return v0
.end method

.method public static getMarginsWidth(Lcom/itextpdf/layout/IPropertyContainer;)F
    .locals 8
    .param p0, "element"    # Lcom/itextpdf/layout/IPropertyContainer;

    .line 102
    const-class v0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;

    const/16 v1, 0x2d

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/property/UnitValue;

    .line 103
    .local v2, "rightMargin":Lcom/itextpdf/layout/property/UnitValue;
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "Property {0} in percents is not supported"

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v6

    if-nez v6, :cond_0

    .line 104
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v6

    .line 105
    .local v6, "logger":Lorg/slf4j/Logger;
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v3

    invoke-static {v5, v7}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 107
    .end local v6    # "logger":Lorg/slf4j/Logger;
    :cond_0
    const/16 v1, 0x2c

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/property/UnitValue;

    .line 108
    .local v6, "leftMargin":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v7

    if-nez v7, :cond_1

    .line 109
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 110
    .local v0, "logger":Lorg/slf4j/Logger;
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v5, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 113
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_1
    const/4 v0, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 114
    .local v1, "rightMarginWidth":F
    :goto_0
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    .line 116
    .local v0, "leftMarginWidth":F
    :cond_3
    add-float v3, v1, v0

    return v3
.end method

.method public static getPaddingWidth(Lcom/itextpdf/layout/IPropertyContainer;)F
    .locals 8
    .param p0, "element"    # Lcom/itextpdf/layout/IPropertyContainer;

    .line 120
    const-class v0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;

    const/16 v1, 0x31

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/property/UnitValue;

    .line 121
    .local v2, "rightPadding":Lcom/itextpdf/layout/property/UnitValue;
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "Property {0} in percents is not supported"

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v6

    if-nez v6, :cond_0

    .line 122
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v6

    .line 123
    .local v6, "logger":Lorg/slf4j/Logger;
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v3

    invoke-static {v5, v7}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 125
    .end local v6    # "logger":Lorg/slf4j/Logger;
    :cond_0
    const/16 v1, 0x30

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/property/UnitValue;

    .line 126
    .local v6, "leftPadding":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v7

    if-nez v7, :cond_1

    .line 127
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 128
    .local v0, "logger":Lorg/slf4j/Logger;
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v5, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 131
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_1
    const/4 v0, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 132
    .local v1, "rightPaddingWidth":F
    :goto_0
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    .line 134
    .local v0, "leftPaddingWidth":F
    :cond_3
    add-float v3, v1, v0

    return v3
.end method

.method public static isEqual(DD)Z
    .locals 4
    .param p0, "x"    # D
    .param p2, "y"    # D

    .line 75
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f847ae140000000L    # 0.009999999776482582

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
