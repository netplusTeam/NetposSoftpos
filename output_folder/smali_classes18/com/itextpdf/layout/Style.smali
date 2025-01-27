.class public Lcom/itextpdf/layout/Style;
.super Lcom/itextpdf/layout/ElementPropertyContainer;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/layout/ElementPropertyContainer<",
        "Lcom/itextpdf/layout/Style;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/itextpdf/layout/ElementPropertyContainer;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/Style;)V
    .locals 2
    .param p1, "style"    # Lcom/itextpdf/layout/Style;

    .line 66
    invoke-direct {p0}, Lcom/itextpdf/layout/ElementPropertyContainer;-><init>()V

    .line 67
    iget-object v0, p0, Lcom/itextpdf/layout/Style;->properties:Ljava/util/Map;

    iget-object v1, p1, Lcom/itextpdf/layout/Style;->properties:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 68
    return-void
.end method


# virtual methods
.method public getHeight()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 425
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getMarginBottom()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 139
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getMarginLeft()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 76
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getMarginRight()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 97
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getMarginTop()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 118
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getPaddingBottom()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 250
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getPaddingLeft()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 187
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getPaddingRight()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 208
    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getPaddingTop()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 229
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getWidth()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 393
    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public isKeepTogether()Ljava/lang/Boolean;
    .locals 1

    .line 327
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public setHeight(F)Lcom/itextpdf/layout/Style;
    .locals 2
    .param p1, "height"    # F

    .line 414
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 415
    .local v0, "heightAsUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x1b

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 416
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/Style;

    return-object v1
.end method

.method public setHeight(Lcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/Style;
    .locals 1
    .param p1, "height"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 403
    const/16 v0, 0x1b

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 404
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/Style;

    return-object v0
.end method

.method public setKeepTogether(Z)Lcom/itextpdf/layout/Style;
    .locals 2
    .param p1, "keepTogether"    # Z

    .line 338
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 339
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/Style;

    return-object v0
.end method

.method public setMargin(F)Lcom/itextpdf/layout/Style;
    .locals 1
    .param p1, "commonMargin"    # F

    .line 161
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/itextpdf/layout/Style;->setMargins(FFFF)Lcom/itextpdf/layout/Style;

    move-result-object v0

    return-object v0
.end method

.method public setMarginBottom(F)Lcom/itextpdf/layout/Style;
    .locals 2
    .param p1, "value"    # F

    .line 149
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 150
    .local v0, "marginUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x2b

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 151
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/Style;

    return-object v1
.end method

.method public setMarginLeft(F)Lcom/itextpdf/layout/Style;
    .locals 2
    .param p1, "value"    # F

    .line 86
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 87
    .local v0, "marginUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x2c

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 88
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/Style;

    return-object v1
.end method

.method public setMarginRight(F)Lcom/itextpdf/layout/Style;
    .locals 2
    .param p1, "value"    # F

    .line 107
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 108
    .local v0, "marginUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x2d

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 109
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/Style;

    return-object v1
.end method

.method public setMarginTop(F)Lcom/itextpdf/layout/Style;
    .locals 2
    .param p1, "value"    # F

    .line 128
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 129
    .local v0, "marginUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x2e

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 130
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/Style;

    return-object v1
.end method

.method public setMargins(FFFF)Lcom/itextpdf/layout/Style;
    .locals 1
    .param p1, "marginTop"    # F
    .param p2, "marginRight"    # F
    .param p3, "marginBottom"    # F
    .param p4, "marginLeft"    # F

    .line 174
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/Style;->setMarginTop(F)Lcom/itextpdf/layout/Style;

    .line 175
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/Style;->setMarginRight(F)Lcom/itextpdf/layout/Style;

    .line 176
    invoke-virtual {p0, p3}, Lcom/itextpdf/layout/Style;->setMarginBottom(F)Lcom/itextpdf/layout/Style;

    .line 177
    invoke-virtual {p0, p4}, Lcom/itextpdf/layout/Style;->setMarginLeft(F)Lcom/itextpdf/layout/Style;

    .line 178
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/Style;

    return-object v0
.end method

.method public setMaxHeight(F)Lcom/itextpdf/layout/Style;
    .locals 2
    .param p1, "maxHeight"    # F

    .line 435
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 436
    .local v0, "maxHeightAsUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x54

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 437
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/Style;

    return-object v1
.end method

.method public setMaxHeight(Lcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/Style;
    .locals 1
    .param p1, "maxHeight"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 447
    const/16 v0, 0x54

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 448
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/Style;

    return-object v0
.end method

.method public setMaxWidth(F)Lcom/itextpdf/layout/Style;
    .locals 2
    .param p1, "maxWidth"    # F

    .line 492
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    const/16 v1, 0x4f

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 493
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/Style;

    return-object v0
.end method

.method public setMaxWidth(Lcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/Style;
    .locals 1
    .param p1, "maxWidth"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 481
    const/16 v0, 0x4f

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 482
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/Style;

    return-object v0
.end method

.method public setMinHeight(F)Lcom/itextpdf/layout/Style;
    .locals 2
    .param p1, "minHeight"    # F

    .line 469
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 470
    .local v0, "minHeightAsUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x55

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 471
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/Style;

    return-object v1
.end method

.method public setMinHeight(Lcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/Style;
    .locals 1
    .param p1, "minHeight"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 458
    const/16 v0, 0x55

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 459
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/Style;

    return-object v0
.end method

.method public setMinWidth(F)Lcom/itextpdf/layout/Style;
    .locals 2
    .param p1, "minWidth"    # F

    .line 514
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 515
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/Style;

    return-object v0
.end method

.method public setMinWidth(Lcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/Style;
    .locals 1
    .param p1, "minWidth"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 503
    const/16 v0, 0x50

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 504
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/Style;

    return-object v0
.end method

.method public setPadding(F)Lcom/itextpdf/layout/Style;
    .locals 2
    .param p1, "commonPadding"    # F

    .line 272
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/itextpdf/layout/Style;->setPaddings(FFFF)Lcom/itextpdf/layout/Style;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/layout/Style;

    return-object v0
.end method

.method public setPaddingBottom(F)Lcom/itextpdf/layout/Style;
    .locals 2
    .param p1, "value"    # F

    .line 260
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 261
    .local v0, "paddingUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 262
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/Style;

    return-object v1
.end method

.method public setPaddingLeft(F)Lcom/itextpdf/layout/Style;
    .locals 2
    .param p1, "value"    # F

    .line 197
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 198
    .local v0, "paddingUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 199
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/Style;

    return-object v1
.end method

.method public setPaddingRight(F)Lcom/itextpdf/layout/Style;
    .locals 2
    .param p1, "value"    # F

    .line 218
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 219
    .local v0, "paddingUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x31

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 220
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/Style;

    return-object v1
.end method

.method public setPaddingTop(F)Lcom/itextpdf/layout/Style;
    .locals 2
    .param p1, "value"    # F

    .line 239
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 240
    .local v0, "paddingUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x32

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 241
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/Style;

    return-object v1
.end method

.method public setPaddings(FFFF)Lcom/itextpdf/layout/Style;
    .locals 1
    .param p1, "paddingTop"    # F
    .param p2, "paddingRight"    # F
    .param p3, "paddingBottom"    # F
    .param p4, "paddingLeft"    # F

    .line 285
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/Style;->setPaddingTop(F)Lcom/itextpdf/layout/Style;

    .line 286
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/Style;->setPaddingRight(F)Lcom/itextpdf/layout/Style;

    .line 287
    invoke-virtual {p0, p3}, Lcom/itextpdf/layout/Style;->setPaddingBottom(F)Lcom/itextpdf/layout/Style;

    .line 288
    invoke-virtual {p0, p4}, Lcom/itextpdf/layout/Style;->setPaddingLeft(F)Lcom/itextpdf/layout/Style;

    .line 289
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/Style;

    return-object v0
.end method

.method public setRotationAngle(D)Lcom/itextpdf/layout/Style;
    .locals 2
    .param p1, "angle"    # D

    .line 360
    double-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x37

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 361
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/Style;

    return-object v0
.end method

.method public setRotationAngle(F)Lcom/itextpdf/layout/Style;
    .locals 2
    .param p1, "radAngle"    # F

    .line 349
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x37

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 350
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/Style;

    return-object v0
.end method

.method public setSpacingRatio(F)Lcom/itextpdf/layout/Style;
    .locals 2
    .param p1, "ratio"    # F

    .line 316
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 317
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/Style;

    return-object v0
.end method

.method public setVerticalAlignment(Lcom/itextpdf/layout/property/VerticalAlignment;)Lcom/itextpdf/layout/Style;
    .locals 1
    .param p1, "verticalAlignment"    # Lcom/itextpdf/layout/property/VerticalAlignment;

    .line 299
    const/16 v0, 0x4b

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 300
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/Style;

    return-object v0
.end method

.method public setWidth(F)Lcom/itextpdf/layout/Style;
    .locals 2
    .param p1, "width"    # F

    .line 371
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    const/16 v1, 0x4d

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 372
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/Style;

    return-object v0
.end method

.method public setWidth(Lcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/Style;
    .locals 1
    .param p1, "width"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 382
    const/16 v0, 0x4d

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 383
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/Style;

    return-object v0
.end method
