.class public Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;
.super Ljava/lang/Object;
.source "DottedLine.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;


# instance fields
.field private color:Lcom/itextpdf/kernel/colors/Color;

.field protected gap:F

.field private lineWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->gap:F

    .line 63
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->lineWidth:F

    .line 65
    sget-object v0, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 71
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "lineWidth"    # F

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->gap:F

    .line 63
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->lineWidth:F

    .line 65
    sget-object v0, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 90
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->lineWidth:F

    .line 91
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "lineWidth"    # F
    .param p2, "gap"    # F

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->gap:F

    .line 63
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->lineWidth:F

    .line 65
    sget-object v0, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 80
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->lineWidth:F

    .line 81
    iput p2, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->gap:F

    .line 82
    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 7
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "drawArea"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 95
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->lineWidth:F

    .line 96
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 97
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->gap:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    .line 98
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineDash(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 99
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineCapStyle(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 100
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    float-to-double v3, v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    iget v5, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->lineWidth:F

    div-float/2addr v5, v2

    add-float/2addr v1, v5

    float-to-double v5, v1

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 101
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    iget v5, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->lineWidth:F

    div-float/2addr v5, v2

    add-float/2addr v1, v5

    float-to-double v1, v1

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 104
    return-void
.end method

.method public getColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->color:Lcom/itextpdf/kernel/colors/Color;

    return-object v0
.end method

.method public getGap()F
    .locals 1

    .line 112
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->gap:F

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .line 130
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->lineWidth:F

    return v0
.end method

.method public setColor(Lcom/itextpdf/kernel/colors/Color;)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;

    .line 149
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 150
    return-void
.end method

.method public setGap(F)V
    .locals 0
    .param p1, "gap"    # F

    .line 121
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->gap:F

    .line 122
    return-void
.end method

.method public setLineWidth(F)V
    .locals 0
    .param p1, "lineWidth"    # F

    .line 139
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->lineWidth:F

    .line 140
    return-void
.end method
