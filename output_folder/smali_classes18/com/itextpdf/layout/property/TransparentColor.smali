.class public Lcom/itextpdf/layout/property/TransparentColor;
.super Ljava/lang/Object;
.source "TransparentColor.java"


# instance fields
.field private color:Lcom/itextpdf/kernel/colors/Color;

.field private opacity:F


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;)V
    .locals 1
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/itextpdf/layout/property/TransparentColor;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itextpdf/layout/property/TransparentColor;->opacity:F

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;F)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "opacity"    # F

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/itextpdf/layout/property/TransparentColor;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 60
    iput p2, p0, Lcom/itextpdf/layout/property/TransparentColor;->opacity:F

    .line 61
    return-void
.end method

.method private applyTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Z)V
    .locals 2
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "isStroke"    # Z

    .line 81
    invoke-direct {p0}, Lcom/itextpdf/layout/property/TransparentColor;->isTransparent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;-><init>()V

    .line 83
    .local v0, "extGState":Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;
    if-eqz p2, :cond_0

    .line 84
    iget v1, p0, Lcom/itextpdf/layout/property/TransparentColor;->opacity:F

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->setStrokeOpacity(F)Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    goto :goto_0

    .line 86
    :cond_0
    iget v1, p0, Lcom/itextpdf/layout/property/TransparentColor;->opacity:F

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->setFillOpacity(F)Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    .line 88
    :goto_0
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 90
    .end local v0    # "extGState":Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;
    :cond_1
    return-void
.end method

.method private isTransparent()Z
    .locals 2

    .line 93
    iget v0, p0, Lcom/itextpdf/layout/property/TransparentColor;->opacity:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public applyFillTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/property/TransparentColor;->applyTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Z)V

    .line 74
    return-void
.end method

.method public applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 77
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/property/TransparentColor;->applyTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Z)V

    .line 78
    return-void
.end method

.method public getColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/itextpdf/layout/property/TransparentColor;->color:Lcom/itextpdf/kernel/colors/Color;

    return-object v0
.end method

.method public getOpacity()F
    .locals 1

    .line 68
    iget v0, p0, Lcom/itextpdf/layout/property/TransparentColor;->opacity:F

    return v0
.end method
