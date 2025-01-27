.class public Lcom/itextpdf/forms/xfdf/FitObject;
.super Ljava/lang/Object;
.source "FitObject.java"


# instance fields
.field private bottom:F

.field private left:F

.field private page:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private right:F

.field private top:F

.field private zoom:F


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 2
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-eqz p1, :cond_0

    .line 91
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/FitObject;->page:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 92
    return-void

    .line 89
    :cond_0
    new-instance v0, Lcom/itextpdf/forms/xfdf/XfdfException;

    const-string v1, "Required Page attribute is missing."

    invoke-direct {v0, v1}, Lcom/itextpdf/forms/xfdf/XfdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBottom()F
    .locals 1

    .line 148
    iget v0, p0, Lcom/itextpdf/forms/xfdf/FitObject;->bottom:F

    return v0
.end method

.method public getLeft()F
    .locals 1

    .line 129
    iget v0, p0, Lcom/itextpdf/forms/xfdf/FitObject;->left:F

    return v0
.end method

.method public getPage()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/FitObject;->page:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getRight()F
    .locals 1

    .line 168
    iget v0, p0, Lcom/itextpdf/forms/xfdf/FitObject;->right:F

    return v0
.end method

.method public getTop()F
    .locals 1

    .line 110
    iget v0, p0, Lcom/itextpdf/forms/xfdf/FitObject;->top:F

    return v0
.end method

.method public getZoom()F
    .locals 1

    .line 189
    iget v0, p0, Lcom/itextpdf/forms/xfdf/FitObject;->zoom:F

    return v0
.end method

.method public setBottom(F)Lcom/itextpdf/forms/xfdf/FitObject;
    .locals 0
    .param p1, "bottom"    # F

    .line 158
    iput p1, p0, Lcom/itextpdf/forms/xfdf/FitObject;->bottom:F

    .line 159
    return-object p0
.end method

.method public setLeft(F)Lcom/itextpdf/forms/xfdf/FitObject;
    .locals 0
    .param p1, "left"    # F

    .line 138
    iput p1, p0, Lcom/itextpdf/forms/xfdf/FitObject;->left:F

    .line 139
    return-object p0
.end method

.method public setRight(F)Lcom/itextpdf/forms/xfdf/FitObject;
    .locals 0
    .param p1, "right"    # F

    .line 178
    iput p1, p0, Lcom/itextpdf/forms/xfdf/FitObject;->right:F

    .line 179
    return-object p0
.end method

.method public setTop(F)Lcom/itextpdf/forms/xfdf/FitObject;
    .locals 0
    .param p1, "top"    # F

    .line 119
    iput p1, p0, Lcom/itextpdf/forms/xfdf/FitObject;->top:F

    .line 120
    return-object p0
.end method

.method public setZoom(F)Lcom/itextpdf/forms/xfdf/FitObject;
    .locals 0
    .param p1, "zoom"    # F

    .line 200
    iput p1, p0, Lcom/itextpdf/forms/xfdf/FitObject;->zoom:F

    .line 201
    return-object p0
.end method
