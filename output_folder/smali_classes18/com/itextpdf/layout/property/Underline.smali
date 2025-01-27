.class public Lcom/itextpdf/layout/property/Underline;
.super Ljava/lang/Object;
.source "Underline.java"


# instance fields
.field protected lineCapStyle:I

.field protected thickness:F

.field protected thicknessMul:F

.field protected transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

.field protected yPosition:F

.field protected yPositionMul:F


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;FFFFFI)V
    .locals 1
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "opacity"    # F
    .param p3, "thickness"    # F
    .param p4, "thicknessMul"    # F
    .param p5, "yPosition"    # F
    .param p6, "yPositionMul"    # F
    .param p7, "lineCapStyle"    # I

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/layout/property/Underline;->lineCapStyle:I

    .line 103
    new-instance v0, Lcom/itextpdf/layout/property/TransparentColor;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/layout/property/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    iput-object v0, p0, Lcom/itextpdf/layout/property/Underline;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 104
    iput p3, p0, Lcom/itextpdf/layout/property/Underline;->thickness:F

    .line 105
    iput p4, p0, Lcom/itextpdf/layout/property/Underline;->thicknessMul:F

    .line 106
    iput p5, p0, Lcom/itextpdf/layout/property/Underline;->yPosition:F

    .line 107
    iput p6, p0, Lcom/itextpdf/layout/property/Underline;->yPositionMul:F

    .line 108
    iput p7, p0, Lcom/itextpdf/layout/property/Underline;->lineCapStyle:I

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;FFFFI)V
    .locals 8
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "thickness"    # F
    .param p3, "thicknessMul"    # F
    .param p4, "yPosition"    # F
    .param p5, "yPositionMul"    # F
    .param p6, "lineCapStyle"    # I

    .line 82
    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/layout/property/Underline;-><init>(Lcom/itextpdf/kernel/colors/Color;FFFFFI)V

    .line 83
    return-void
.end method


# virtual methods
.method public getColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/itextpdf/layout/property/Underline;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    return-object v0
.end method

.method public getLineCapStyle()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/itextpdf/layout/property/Underline;->lineCapStyle:I

    return v0
.end method

.method public getOpacity()F
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/itextpdf/layout/property/Underline;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/TransparentColor;->getOpacity()F

    move-result v0

    return v0
.end method

.method public getThickness(F)F
    .locals 2
    .param p1, "fontSize"    # F

    .line 133
    iget v0, p0, Lcom/itextpdf/layout/property/Underline;->thickness:F

    iget v1, p0, Lcom/itextpdf/layout/property/Underline;->thicknessMul:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public getYPosition(F)F
    .locals 2
    .param p1, "fontSize"    # F

    .line 142
    iget v0, p0, Lcom/itextpdf/layout/property/Underline;->yPosition:F

    iget v1, p0, Lcom/itextpdf/layout/property/Underline;->yPositionMul:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public getYPositionMul()F
    .locals 1

    .line 150
    iget v0, p0, Lcom/itextpdf/layout/property/Underline;->yPositionMul:F

    return v0
.end method
