.class Lcom/itextpdf/layout/renderer/SumSumWidthHandler;
.super Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
.source "SumSumWidthHandler.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)V
    .locals 0
    .param p1, "minMaxWidth"    # Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    .line 50
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;-><init>(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)V

    .line 51
    return-void
.end method


# virtual methods
.method public updateMaxChildWidth(F)V
    .locals 2
    .param p1, "childMaxWidth"    # F

    .line 60
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SumSumWidthHandler;->minMaxWidth:Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/SumSumWidthHandler;->minMaxWidth:Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-virtual {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMaxWidth()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    .line 61
    return-void
.end method

.method public updateMinChildWidth(F)V
    .locals 2
    .param p1, "childMinWidth"    # F

    .line 55
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SumSumWidthHandler;->minMaxWidth:Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/SumSumWidthHandler;->minMaxWidth:Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-virtual {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMinWidth()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    .line 56
    return-void
.end method
