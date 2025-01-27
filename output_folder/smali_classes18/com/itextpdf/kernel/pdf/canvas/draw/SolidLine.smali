.class public Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;
.super Ljava/lang/Object;
.source "SolidLine.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;


# instance fields
.field private color:Lcom/itextpdf/kernel/colors/Color;

.field private lineWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->lineWidth:F

    .line 59
    sget-object v0, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 65
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "lineWidth"    # F

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->lineWidth:F

    .line 59
    sget-object v0, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 73
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->lineWidth:F

    .line 74
    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 6
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "drawArea"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 78
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 79
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->lineWidth:F

    .line 80
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 81
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    iget v4, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->lineWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 82
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    iget v4, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->lineWidth:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 85
    return-void
.end method

.method public getColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->color:Lcom/itextpdf/kernel/colors/Color;

    return-object v0
.end method

.method public getLineWidth()F
    .locals 1

    .line 94
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->lineWidth:F

    return v0
.end method

.method public setColor(Lcom/itextpdf/kernel/colors/Color;)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;

    .line 114
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 115
    return-void
.end method

.method public setLineWidth(F)V
    .locals 0
    .param p1, "lineWidth"    # F

    .line 104
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->lineWidth:F

    .line 105
    return-void
.end method
