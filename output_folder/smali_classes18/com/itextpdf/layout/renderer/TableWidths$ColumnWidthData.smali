.class Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;
.super Ljava/lang/Object;
.source "TableWidths.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/renderer/TableWidths;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColumnWidthData"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field finalWidth:F

.field isFixed:Z

.field isPercent:Z

.field max:F

.field final min:F

.field width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 763
    const-class v0, Lcom/itextpdf/layout/renderer/TableWidths;

    return-void
.end method

.method constructor <init>(FF)V
    .locals 2
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    .line 767
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    .line 768
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    .line 770
    iput-boolean v1, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    .line 773
    cmpl-float v1, p1, v0

    if-ltz v1, :cond_3

    .line 774
    cmpl-float v1, p2, v0

    if-ltz v1, :cond_2

    .line 775
    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getEps()F

    move-result v1

    add-float/2addr v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    .line 778
    cmpl-float v1, p2, v0

    if-lez v1, :cond_1

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getEps()F

    move-result v0

    add-float/2addr v0, p2

    const v1, 0x46fff000    # 32760.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_1
    iput v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->max:F

    .line 779
    return-void

    .line 774
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 773
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method addPercents(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;
    .locals 1
    .param p1, "width"    # F

    .line 813
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-eqz v0, :cond_0

    .line 814
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    .line 815
    return-object p0

    .line 813
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method addPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;
    .locals 1
    .param p1, "width"    # F

    .line 796
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez v0, :cond_0

    .line 797
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    .line 798
    return-object p0

    .line 796
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method isFlexible()Z
    .locals 1

    .line 824
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method resetPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;
    .locals 1
    .param p1, "width"    # F

    .line 789
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    .line 790
    iput p1, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    .line 791
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    .line 792
    return-object p0

    .line 789
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method setFixed(Z)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;
    .locals 0
    .param p1, "fixed"    # Z

    .line 819
    iput-boolean p1, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    .line 820
    return-object p0
.end method

.method setPercents(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;
    .locals 1
    .param p1, "percent"    # F

    .line 802
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-eqz v0, :cond_0

    .line 803
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    goto :goto_0

    .line 805
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    .line 806
    iput p1, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    .line 808
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    .line 809
    return-object p0
.end method

.method setPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;
    .locals 1
    .param p1, "width"    # F

    .line 782
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez v0, :cond_1

    .line 783
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    .line 784
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    .line 785
    return-object p0

    .line 783
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 782
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-eqz v1, :cond_0

    const-string v1, "%"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "pt"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    if-eqz v1, :cond_1

    const-string v1, " !!"

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->max:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", finalWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
