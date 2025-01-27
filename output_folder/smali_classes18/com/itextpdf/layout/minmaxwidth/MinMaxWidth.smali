.class public Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
.super Ljava/lang/Object;
.source "MinMaxWidth.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x406d92875210e925L


# instance fields
.field private additionalWidth:F

.field private childrenMaxWidth:F

.field private childrenMinWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>(F)V

    .line 57
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "additionalWidth"    # F

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>(FFF)V

    .line 61
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "childrenMinWidth"    # F
    .param p2, "childrenMaxWidth"    # F
    .param p3, "additionalWidth"    # F

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->childrenMinWidth:F

    .line 65
    iput p2, p0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->childrenMaxWidth:F

    .line 66
    iput p3, p0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->additionalWidth:F

    .line 67
    return-void
.end method


# virtual methods
.method public getAdditionalWidth()F
    .locals 1

    .line 86
    iget v0, p0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->additionalWidth:F

    return v0
.end method

.method public getChildrenMaxWidth()F
    .locals 1

    .line 78
    iget v0, p0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->childrenMaxWidth:F

    return v0
.end method

.method public getChildrenMinWidth()F
    .locals 1

    .line 70
    iget v0, p0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->childrenMinWidth:F

    return v0
.end method

.method public getMaxWidth()F
    .locals 2

    .line 94
    iget v0, p0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->childrenMaxWidth:F

    iget v1, p0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->additionalWidth:F

    add-float/2addr v0, v1

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getInfWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getMinWidth()F
    .locals 2

    .line 98
    iget v0, p0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->childrenMinWidth:F

    iget v1, p0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->additionalWidth:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public setAdditionalWidth(F)V
    .locals 0
    .param p1, "additionalWidth"    # F

    .line 90
    iput p1, p0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->additionalWidth:F

    .line 91
    return-void
.end method

.method public setChildrenMaxWidth(F)V
    .locals 0
    .param p1, "childrenMaxWidth"    # F

    .line 82
    iput p1, p0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->childrenMaxWidth:F

    .line 83
    return-void
.end method

.method public setChildrenMinWidth(F)V
    .locals 0
    .param p1, "childrenMinWidth"    # F

    .line 74
    iput p1, p0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->childrenMinWidth:F

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->childrenMinWidth:F

    iget v2, p0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->additionalWidth:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->childrenMaxWidth:F

    iget v2, p0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->additionalWidth:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
