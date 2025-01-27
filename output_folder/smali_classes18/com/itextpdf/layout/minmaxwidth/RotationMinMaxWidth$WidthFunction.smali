.class Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;
.super Ljava/lang/Object;
.source "RotationMinMaxWidth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WidthFunction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction$Interval;
    }
.end annotation


# instance fields
.field private area:D

.field private cos:D

.field private sin:D


# direct methods
.method public constructor <init>(DD)V
    .locals 2
    .param p1, "angle"    # D
    .param p3, "area"    # D

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-static {p1, p2}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->access$000(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->sin:D

    .line 221
    invoke-static {p1, p2}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->access$100(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->cos:D

    .line 222
    iput-wide p3, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->area:D

    .line 223
    return-void
.end method


# virtual methods
.method public getRotatedHeight(D)D
    .locals 6
    .param p1, "x"    # D

    .line 242
    iget-wide v0, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->sin:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->area:D

    iget-wide v4, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->cos:D

    mul-double/2addr v2, v4

    div-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getRotatedWidth(D)D
    .locals 6
    .param p1, "x"    # D

    .line 232
    iget-wide v0, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->cos:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->area:D

    iget-wide v4, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->sin:D

    mul-double/2addr v2, v4

    div-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getValidOriginalWidths(D)Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction$Interval;
    .locals 15
    .param p1, "availableWidth"    # D

    .line 254
    move-object v0, p0

    iget-wide v1, v0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->cos:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    .line 255
    iget-wide v1, v0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->area:D

    iget-wide v3, v0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->sin:D

    mul-double/2addr v1, v3

    div-double v1, v1, p1

    .line 256
    .local v1, "minWidth":D
    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getInfWidth()F

    move-result v3

    float-to-double v3, v3

    .local v3, "maxWidth":D
    goto :goto_0

    .line 257
    .end local v1    # "minWidth":D
    .end local v3    # "maxWidth":D
    :cond_0
    iget-wide v5, v0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->sin:D

    cmpl-double v7, v5, v3

    if-nez v7, :cond_1

    .line 258
    const-wide/16 v3, 0x0

    .line 259
    .local v3, "minWidth":D
    div-double v1, p1, v1

    move-wide v13, v1

    move-wide v1, v3

    move-wide v3, v13

    .local v1, "maxWidth":D
    goto :goto_0

    .line 261
    .end local v1    # "maxWidth":D
    .end local v3    # "minWidth":D
    :cond_1
    mul-double v7, p1, p1

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    iget-wide v11, v0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->area:D

    mul-double/2addr v11, v9

    mul-double/2addr v11, v5

    mul-double/2addr v11, v1

    sub-double/2addr v7, v11

    .line 262
    .local v7, "D":D
    cmpg-double v1, v7, v3

    if-gez v1, :cond_2

    .line 263
    const/4 v1, 0x0

    return-object v1

    .line 265
    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    sub-double v1, p1, v1

    iget-wide v3, v0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->cos:D

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    div-double/2addr v1, v3

    .line 266
    .local v1, "minWidth":D
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    add-double v3, p1, v3

    iget-wide v9, v0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->cos:D

    mul-double/2addr v9, v5

    div-double/2addr v3, v9

    .line 268
    .end local v7    # "D":D
    .local v3, "maxWidth":D
    :goto_0
    new-instance v5, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction$Interval;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction$Interval;-><init>(DD)V

    return-object v5
.end method

.method public getWidthDerivativeZeroPoint()D
    .locals 4

    .line 279
    iget-wide v0, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->area:D

    iget-wide v2, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->sin:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->cos:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method
