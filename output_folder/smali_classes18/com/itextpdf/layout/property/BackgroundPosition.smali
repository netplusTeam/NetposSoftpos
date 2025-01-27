.class public Lcom/itextpdf/layout/property/BackgroundPosition;
.super Ljava/lang/Object;
.source "BackgroundPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;,
        Lcom/itextpdf/layout/property/BackgroundPosition$PositionX;
    }
.end annotation


# static fields
.field private static final EPS:D = 9.999999747378752E-5

.field private static final FULL_VALUE:I = 0x64

.field private static final HALF_VALUE:I = 0x32


# instance fields
.field private positionX:Lcom/itextpdf/layout/property/BackgroundPosition$PositionX;

.field private positionY:Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

.field private xShift:Lcom/itextpdf/layout/property/UnitValue;

.field private yShift:Lcom/itextpdf/layout/property/UnitValue;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/itextpdf/layout/property/UnitValue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/UnitValue;-><init>(IF)V

    iput-object v0, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->xShift:Lcom/itextpdf/layout/property/UnitValue;

    .line 46
    new-instance v0, Lcom/itextpdf/layout/property/UnitValue;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/UnitValue;-><init>(IF)V

    iput-object v0, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->yShift:Lcom/itextpdf/layout/property/UnitValue;

    .line 47
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundPosition$PositionX;->LEFT:Lcom/itextpdf/layout/property/BackgroundPosition$PositionX;

    iput-object v0, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->positionX:Lcom/itextpdf/layout/property/BackgroundPosition$PositionX;

    .line 48
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;->TOP:Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    iput-object v0, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->positionY:Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    .line 49
    return-void
.end method

.method private static calculateValue(Lcom/itextpdf/layout/property/UnitValue;F)F
    .locals 2
    .param p0, "value"    # Lcom/itextpdf/layout/property/UnitValue;
    .param p1, "fullValue"    # F

    .line 236
    if-nez p0, :cond_0

    .line 237
    const/4 v0, 0x0

    return v0

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    :goto_0
    return v0
.end method

.method private parsePositionXToUnitValueAndReturnMultiplier(Lcom/itextpdf/layout/property/UnitValue;)I
    .locals 2
    .param p1, "outValue"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 196
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/property/UnitValue;->setUnitType(I)V

    .line 197
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundPosition$1;->$SwitchMap$com$itextpdf$layout$property$BackgroundPosition$PositionX:[I

    iget-object v1, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->positionX:Lcom/itextpdf/layout/property/BackgroundPosition$PositionX;

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/BackgroundPosition$PositionX;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 208
    return v1

    .line 205
    :pswitch_0
    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/property/UnitValue;->setValue(F)V

    .line 206
    return v1

    .line 202
    :pswitch_1
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/property/UnitValue;->setValue(F)V

    .line 203
    const/4 v0, -0x1

    return v0

    .line 199
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/property/UnitValue;->setValue(F)V

    .line 200
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parsePositionYToUnitValueAndReturnMultiplier(Lcom/itextpdf/layout/property/UnitValue;)I
    .locals 2
    .param p1, "outValue"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 219
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/property/UnitValue;->setUnitType(I)V

    .line 220
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundPosition$1;->$SwitchMap$com$itextpdf$layout$property$BackgroundPosition$PositionY:[I

    iget-object v1, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->positionY:Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 231
    return v1

    .line 228
    :pswitch_0
    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/property/UnitValue;->setValue(F)V

    .line 229
    return v1

    .line 225
    :pswitch_1
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/property/UnitValue;->setValue(F)V

    .line 226
    const/4 v0, -0x1

    return v0

    .line 222
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/property/UnitValue;->setValue(F)V

    .line 223
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public calculatePositionValues(FFLcom/itextpdf/layout/property/UnitValue;Lcom/itextpdf/layout/property/UnitValue;)V
    .locals 7
    .param p1, "fullWidth"    # F
    .param p2, "fullHeight"    # F
    .param p3, "outXValue"    # Lcom/itextpdf/layout/property/UnitValue;
    .param p4, "outYValue"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 60
    invoke-direct {p0, p3}, Lcom/itextpdf/layout/property/BackgroundPosition;->parsePositionXToUnitValueAndReturnMultiplier(Lcom/itextpdf/layout/property/UnitValue;)I

    move-result v0

    .line 61
    .local v0, "posMultiplier":I
    const/4 v1, 0x0

    const-wide v2, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->xShift:Lcom/itextpdf/layout/property/UnitValue;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpl-double v4, v4, v2

    if-lez v4, :cond_0

    .line 62
    invoke-virtual {p3, v1}, Lcom/itextpdf/layout/property/UnitValue;->setValue(F)V

    goto :goto_0

    .line 64
    :cond_0
    nop

    .line 65
    invoke-static {p3, p1}, Lcom/itextpdf/layout/property/BackgroundPosition;->calculateValue(Lcom/itextpdf/layout/property/UnitValue;F)F

    move-result v4

    iget-object v5, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->xShift:Lcom/itextpdf/layout/property/UnitValue;

    invoke-static {v5, p1}, Lcom/itextpdf/layout/property/BackgroundPosition;->calculateValue(Lcom/itextpdf/layout/property/UnitValue;F)F

    move-result v5

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 64
    invoke-virtual {p3, v4}, Lcom/itextpdf/layout/property/UnitValue;->setValue(F)V

    .line 67
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p3, v4}, Lcom/itextpdf/layout/property/UnitValue;->setUnitType(I)V

    .line 69
    invoke-direct {p0, p4}, Lcom/itextpdf/layout/property/BackgroundPosition;->parsePositionYToUnitValueAndReturnMultiplier(Lcom/itextpdf/layout/property/UnitValue;)I

    move-result v0

    .line 70
    if-nez v0, :cond_1

    iget-object v5, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->yShift:Lcom/itextpdf/layout/property/UnitValue;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    cmpl-double v2, v5, v2

    if-lez v2, :cond_1

    .line 71
    invoke-virtual {p4, v1}, Lcom/itextpdf/layout/property/UnitValue;->setValue(F)V

    goto :goto_1

    .line 73
    :cond_1
    nop

    .line 74
    invoke-static {p4, p2}, Lcom/itextpdf/layout/property/BackgroundPosition;->calculateValue(Lcom/itextpdf/layout/property/UnitValue;F)F

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->yShift:Lcom/itextpdf/layout/property/UnitValue;

    invoke-static {v2, p2}, Lcom/itextpdf/layout/property/BackgroundPosition;->calculateValue(Lcom/itextpdf/layout/property/UnitValue;F)F

    move-result v2

    int-to-float v3, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 73
    invoke-virtual {p4, v1}, Lcom/itextpdf/layout/property/UnitValue;->setValue(F)V

    .line 76
    :goto_1
    invoke-virtual {p4, v4}, Lcom/itextpdf/layout/property/UnitValue;->setUnitType(I)V

    .line 77
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 166
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 167
    return v0

    .line 169
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 172
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/layout/property/BackgroundPosition;

    .line 173
    .local v2, "position":Lcom/itextpdf/layout/property/BackgroundPosition;
    iget-object v3, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->positionX:Lcom/itextpdf/layout/property/BackgroundPosition$PositionX;

    iget-object v4, v2, Lcom/itextpdf/layout/property/BackgroundPosition;->positionX:Lcom/itextpdf/layout/property/BackgroundPosition$PositionX;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->positionY:Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    iget-object v4, v2, Lcom/itextpdf/layout/property/BackgroundPosition;->positionY:Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    .line 174
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->xShift:Lcom/itextpdf/layout/property/UnitValue;

    iget-object v4, v2, Lcom/itextpdf/layout/property/BackgroundPosition;->xShift:Lcom/itextpdf/layout/property/UnitValue;

    .line 175
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->yShift:Lcom/itextpdf/layout/property/UnitValue;

    iget-object v4, v2, Lcom/itextpdf/layout/property/BackgroundPosition;->yShift:Lcom/itextpdf/layout/property/UnitValue;

    .line 176
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 173
    :goto_0
    return v0

    .line 170
    .end local v2    # "position":Lcom/itextpdf/layout/property/BackgroundPosition;
    :cond_3
    :goto_1
    return v1
.end method

.method public getPositionX()Lcom/itextpdf/layout/property/BackgroundPosition$PositionX;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->positionX:Lcom/itextpdf/layout/property/BackgroundPosition$PositionX;

    return-object v0
.end method

.method public getPositionY()Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->positionY:Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    return-object v0
.end method

.method public getXShift()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->xShift:Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getYShift()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->yShift:Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 186
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->positionX:Lcom/itextpdf/layout/property/BackgroundPosition$PositionX;

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/BackgroundPosition$PositionX;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->positionY:Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->xShift:Lcom/itextpdf/layout/property/UnitValue;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->yShift:Lcom/itextpdf/layout/property/UnitValue;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setPositionX(Lcom/itextpdf/layout/property/BackgroundPosition$PositionX;)Lcom/itextpdf/layout/property/BackgroundPosition;
    .locals 0
    .param p1, "xPosition"    # Lcom/itextpdf/layout/property/BackgroundPosition$PositionX;

    .line 95
    iput-object p1, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->positionX:Lcom/itextpdf/layout/property/BackgroundPosition$PositionX;

    .line 96
    return-object p0
.end method

.method public setPositionY(Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;)Lcom/itextpdf/layout/property/BackgroundPosition;
    .locals 0
    .param p1, "yPosition"    # Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    .line 115
    iput-object p1, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->positionY:Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    .line 116
    return-object p0
.end method

.method public setXShift(Lcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/property/BackgroundPosition;
    .locals 0
    .param p1, "xShift"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 135
    iput-object p1, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->xShift:Lcom/itextpdf/layout/property/UnitValue;

    .line 136
    return-object p0
.end method

.method public setYShift(Lcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/property/BackgroundPosition;
    .locals 0
    .param p1, "yShift"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 155
    iput-object p1, p0, Lcom/itextpdf/layout/property/BackgroundPosition;->yShift:Lcom/itextpdf/layout/property/UnitValue;

    .line 156
    return-object p0
.end method
