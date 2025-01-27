.class final Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;
.super Ljava/lang/Object;
.source "BackgroundSizeCalculationUtil.java"


# static fields
.field private static final PERCENT_100:I = 0x64

.field private static final PERCENT_VALUE_100:Lcom/itextpdf/layout/property/UnitValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lcom/itextpdf/layout/property/UnitValue;->createPercentValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->PERCENT_VALUE_100:Lcom/itextpdf/layout/property/UnitValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method private static calculateBackgroundHeight(Lcom/itextpdf/layout/property/UnitValue;FZLcom/itextpdf/layout/property/BackgroundImage;[Ljava/lang/Float;)V
    .locals 3
    .param p0, "height"    # Lcom/itextpdf/layout/property/UnitValue;
    .param p1, "areaHeight"    # F
    .param p2, "scale"    # Z
    .param p3, "image"    # Lcom/itextpdf/layout/property/BackgroundImage;
    .param p4, "widthAndHeight"    # [Ljava/lang/Float;

    .line 140
    const/high16 v0, 0x42c80000    # 100.0f

    if-eqz p2, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    invoke-static {v1, p3, p4}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->scaleHeight(FLcom/itextpdf/layout/property/BackgroundImage;[Ljava/lang/Float;)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    invoke-static {v0, p3, p4}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->scaleHeight(FLcom/itextpdf/layout/property/BackgroundImage;[Ljava/lang/Float;)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 148
    invoke-virtual {p0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p4, v2

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p4, v2

    .line 153
    :goto_0
    return-void
.end method

.method public static calculateBackgroundImageSize(Lcom/itextpdf/layout/property/BackgroundImage;FF)[F
    .locals 10
    .param p0, "image"    # Lcom/itextpdf/layout/property/BackgroundImage;
    .param p1, "areaWidth"    # F
    .param p2, "areaHeight"    # F

    .line 73
    invoke-virtual {p0}, Lcom/itextpdf/layout/property/BackgroundImage;->getLinearGradientBuilder()Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 76
    .local v0, "isGradient":Z
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/layout/property/BackgroundImage;->getBackgroundSize()Lcom/itextpdf/layout/property/BackgroundSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/BackgroundSize;->isSpecificSize()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    invoke-static {p0, p1, p2}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->calculateBackgroundSizeForArea(Lcom/itextpdf/layout/property/BackgroundImage;FF)Lcom/itextpdf/layout/property/BackgroundSize;

    move-result-object v3

    .local v3, "size":Lcom/itextpdf/layout/property/BackgroundSize;
    goto :goto_1

    .line 79
    .end local v3    # "size":Lcom/itextpdf/layout/property/BackgroundSize;
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/property/BackgroundImage;->getBackgroundSize()Lcom/itextpdf/layout/property/BackgroundSize;

    move-result-object v3

    .line 81
    .restart local v3    # "size":Lcom/itextpdf/layout/property/BackgroundSize;
    :goto_1
    invoke-virtual {v3}, Lcom/itextpdf/layout/property/BackgroundSize;->getBackgroundWidthSize()Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v4

    .line 82
    .local v4, "width":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v3}, Lcom/itextpdf/layout/property/BackgroundSize;->getBackgroundHeightSize()Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v5

    .line 84
    .local v5, "height":Lcom/itextpdf/layout/property/UnitValue;
    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Float;

    .line 86
    .local v7, "widthAndHeight":[Ljava/lang/Float;
    const/4 v8, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v9

    cmpl-float v9, v9, v8

    if-ltz v9, :cond_3

    .line 87
    if-nez v0, :cond_2

    if-nez v5, :cond_2

    move v9, v1

    goto :goto_2

    :cond_2
    move v9, v2

    .line 88
    .local v9, "needScale":Z
    :goto_2
    invoke-static {v4, p1, v9, p0, v7}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->calculateBackgroundWidth(Lcom/itextpdf/layout/property/UnitValue;FZLcom/itextpdf/layout/property/BackgroundImage;[Ljava/lang/Float;)V

    .line 90
    .end local v9    # "needScale":Z
    :cond_3
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v9

    cmpl-float v8, v9, v8

    if-ltz v8, :cond_5

    .line 91
    if-nez v0, :cond_4

    if-nez v4, :cond_4

    move v8, v1

    goto :goto_3

    :cond_4
    move v8, v2

    .line 92
    .local v8, "needScale":Z
    :goto_3
    invoke-static {v5, p2, v8, p0, v7}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->calculateBackgroundHeight(Lcom/itextpdf/layout/property/UnitValue;FZLcom/itextpdf/layout/property/BackgroundImage;[Ljava/lang/Float;)V

    .line 94
    .end local v8    # "needScale":Z
    :cond_5
    invoke-static {v7, p1, p2, p0, v0}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->setDefaultSizeIfNull([Ljava/lang/Float;FFLcom/itextpdf/layout/property/BackgroundImage;Z)V

    .line 95
    new-array v6, v6, [F

    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v6, v2

    aget-object v2, v7, v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v6, v1

    return-object v6
.end method

.method private static calculateBackgroundSizeForArea(Lcom/itextpdf/layout/property/BackgroundImage;FF)Lcom/itextpdf/layout/property/BackgroundSize;
    .locals 7
    .param p0, "image"    # Lcom/itextpdf/layout/property/BackgroundImage;
    .param p1, "areaWidth"    # F
    .param p2, "areaHeight"    # F

    .line 100
    invoke-virtual {p0}, Lcom/itextpdf/layout/property/BackgroundImage;->getImageWidth()F

    move-result v0

    div-float v0, p1, v0

    float-to-double v0, v0

    .line 101
    .local v0, "widthDifference":D
    invoke-virtual {p0}, Lcom/itextpdf/layout/property/BackgroundImage;->getImageHeight()F

    move-result v2

    div-float v2, p2, v2

    float-to-double v2, v2

    .line 102
    .local v2, "heightDifference":D
    invoke-virtual {p0}, Lcom/itextpdf/layout/property/BackgroundImage;->getBackgroundSize()Lcom/itextpdf/layout/property/BackgroundSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/property/BackgroundSize;->isCover()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 103
    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    invoke-static {v5}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->createSizeWithMaxValueSide(Z)Lcom/itextpdf/layout/property/BackgroundSize;

    move-result-object v4

    return-object v4

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/property/BackgroundImage;->getBackgroundSize()Lcom/itextpdf/layout/property/BackgroundSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/property/BackgroundSize;->isContain()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 105
    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    invoke-static {v5}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->createSizeWithMaxValueSide(Z)Lcom/itextpdf/layout/property/BackgroundSize;

    move-result-object v4

    return-object v4

    .line 107
    :cond_3
    new-instance v4, Lcom/itextpdf/layout/property/BackgroundSize;

    invoke-direct {v4}, Lcom/itextpdf/layout/property/BackgroundSize;-><init>()V

    return-object v4
.end method

.method private static calculateBackgroundWidth(Lcom/itextpdf/layout/property/UnitValue;FZLcom/itextpdf/layout/property/BackgroundImage;[Ljava/lang/Float;)V
    .locals 3
    .param p0, "width"    # Lcom/itextpdf/layout/property/UnitValue;
    .param p1, "areaWidth"    # F
    .param p2, "scale"    # Z
    .param p3, "image"    # Lcom/itextpdf/layout/property/BackgroundImage;
    .param p4, "widthAndHeight"    # [Ljava/lang/Float;

    .line 123
    const/high16 v0, 0x42c80000    # 100.0f

    if-eqz p2, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    invoke-static {v1, p3, p4}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->scaleWidth(FLcom/itextpdf/layout/property/BackgroundImage;[Ljava/lang/Float;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    invoke-static {v0, p3, p4}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->scaleWidth(FLcom/itextpdf/layout/property/BackgroundImage;[Ljava/lang/Float;)V

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p4, v2

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p4, v2

    .line 136
    :goto_0
    return-void
.end method

.method private static createSizeWithMaxValueSide(Z)Lcom/itextpdf/layout/property/BackgroundSize;
    .locals 3
    .param p0, "maxWidth"    # Z

    .line 112
    new-instance v0, Lcom/itextpdf/layout/property/BackgroundSize;

    invoke-direct {v0}, Lcom/itextpdf/layout/property/BackgroundSize;-><init>()V

    .line 113
    .local v0, "size":Lcom/itextpdf/layout/property/BackgroundSize;
    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 114
    sget-object v2, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->PERCENT_VALUE_100:Lcom/itextpdf/layout/property/UnitValue;

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/layout/property/BackgroundSize;->setBackgroundSizeToValues(Lcom/itextpdf/layout/property/UnitValue;Lcom/itextpdf/layout/property/UnitValue;)V

    goto :goto_0

    .line 116
    :cond_0
    sget-object v2, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->PERCENT_VALUE_100:Lcom/itextpdf/layout/property/UnitValue;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/property/BackgroundSize;->setBackgroundSizeToValues(Lcom/itextpdf/layout/property/UnitValue;Lcom/itextpdf/layout/property/UnitValue;)V

    .line 118
    :goto_0
    return-object v0
.end method

.method private static scaleHeight(FLcom/itextpdf/layout/property/BackgroundImage;[Ljava/lang/Float;)V
    .locals 3
    .param p0, "newHeight"    # F
    .param p1, "image"    # Lcom/itextpdf/layout/property/BackgroundImage;
    .param p2, "imageWidthAndHeight"    # [Ljava/lang/Float;

    .line 162
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getImageHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getImageHeight()F

    move-result v0

    div-float v0, p0, v0

    .line 163
    .local v0, "difference":F
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getImageWidth()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, p2, v1

    .line 164
    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, p2, v1

    .line 165
    return-void
.end method

.method private static scaleWidth(FLcom/itextpdf/layout/property/BackgroundImage;[Ljava/lang/Float;)V
    .locals 3
    .param p0, "newWidth"    # F
    .param p1, "image"    # Lcom/itextpdf/layout/property/BackgroundImage;
    .param p2, "imageWidthAndHeight"    # [Ljava/lang/Float;

    .line 156
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getImageWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getImageWidth()F

    move-result v0

    div-float v0, p0, v0

    .line 157
    .local v0, "difference":F
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, p2, v1

    .line 158
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getImageHeight()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, p2, v1

    .line 159
    return-void
.end method

.method private static setDefaultSizeIfNull([Ljava/lang/Float;FFLcom/itextpdf/layout/property/BackgroundImage;Z)V
    .locals 3
    .param p0, "widthAndHeight"    # [Ljava/lang/Float;
    .param p1, "areaWidth"    # F
    .param p2, "areaHeight"    # F
    .param p3, "image"    # Lcom/itextpdf/layout/property/BackgroundImage;
    .param p4, "isGradient"    # Z

    .line 169
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_2

    .line 170
    aget-object v2, p0, v1

    if-nez v2, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, p0, v1

    .line 171
    aget-object v1, p0, v0

    if-nez v1, :cond_1

    move v1, p2

    goto :goto_1

    :cond_1
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p0, v0

    goto :goto_4

    .line 173
    :cond_2
    aget-object v2, p0, v1

    if-nez v2, :cond_3

    invoke-virtual {p3}, Lcom/itextpdf/layout/property/BackgroundImage;->getImageWidth()F

    move-result v2

    goto :goto_2

    :cond_3
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, p0, v1

    .line 174
    aget-object v1, p0, v0

    if-nez v1, :cond_4

    invoke-virtual {p3}, Lcom/itextpdf/layout/property/BackgroundImage;->getImageHeight()F

    move-result v1

    goto :goto_3

    :cond_4
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_3
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p0, v0

    .line 176
    :goto_4
    return-void
.end method
