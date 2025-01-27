.class public Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;
.super Ljava/lang/Object;
.source "BorderStyleAltObject.java"


# instance fields
.field private content:Ljava/lang/String;

.field private dashPattern:[F

.field private hCornerRadius:F

.field private vCornerRadius:F

.field private width:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "hCornerRadius"    # F
    .param p2, "vCornerRadius"    # F
    .param p3, "width"    # F

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;->hCornerRadius:F

    .line 95
    iput p2, p0, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;->vCornerRadius:F

    .line 96
    iput p3, p0, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;->width:F

    .line 97
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDashPattern()[F
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;->dashPattern:[F

    return-object v0
.end method

.method public getHCornerRadius()F
    .locals 1

    .line 106
    iget v0, p0, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;->hCornerRadius:F

    return v0
.end method

.method public getVCornerRadius()F
    .locals 1

    .line 116
    iget v0, p0, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;->vCornerRadius:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 126
    iget v0, p0, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;->width:F

    return v0
.end method

.method public setContent(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 167
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;->content:Ljava/lang/String;

    .line 168
    return-object p0
.end method

.method public setDashPattern([F)Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;
    .locals 0
    .param p1, "dashPattern"    # [F

    .line 147
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;->dashPattern:[F

    .line 148
    return-object p0
.end method
