.class public Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;
.super Ljava/lang/Object;
.source "PageSizeCalculator.java"


# instance fields
.field private fitEachPage:Z

.field private fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

.field private heightRatio:F

.field private optimalMaxHeightPageSize:Lcom/shockwave/pdfium/util/SizeF;

.field private optimalMaxWidthPageSize:Lcom/shockwave/pdfium/util/SizeF;

.field private final originalMaxHeightPageSize:Lcom/shockwave/pdfium/util/Size;

.field private final originalMaxWidthPageSize:Lcom/shockwave/pdfium/util/Size;

.field private final viewSize:Lcom/shockwave/pdfium/util/Size;

.field private widthRatio:F


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/util/FitPolicy;Lcom/shockwave/pdfium/util/Size;Lcom/shockwave/pdfium/util/Size;Lcom/shockwave/pdfium/util/Size;Z)V
    .locals 0
    .param p1, "fitPolicy"    # Lcom/github/barteksc/pdfviewer/util/FitPolicy;
    .param p2, "originalMaxWidthPageSize"    # Lcom/shockwave/pdfium/util/Size;
    .param p3, "originalMaxHeightPageSize"    # Lcom/shockwave/pdfium/util/Size;
    .param p4, "viewSize"    # Lcom/shockwave/pdfium/util/Size;
    .param p5, "fitEachPage"    # Z

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    .line 36
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lcom/shockwave/pdfium/util/Size;

    .line 37
    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxHeightPageSize:Lcom/shockwave/pdfium/util/Size;

    .line 38
    iput-object p4, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lcom/shockwave/pdfium/util/Size;

    .line 39
    iput-boolean p5, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitEachPage:Z

    .line 40
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->calculateMaxPages()V

    .line 41
    return-void
.end method

.method private calculateMaxPages()V
    .locals 6

    .line 68
    sget-object v0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator$1;->$SwitchMap$com$github$barteksc$pdfviewer$util$FitPolicy:[I

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lcom/shockwave/pdfium/util/Size;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitWidth(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxWidthPageSize:Lcom/shockwave/pdfium/util/SizeF;

    .line 85
    invoke-virtual {v0}, Lcom/shockwave/pdfium/util/SizeF;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->widthRatio:F

    .line 86
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxHeightPageSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v0}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->widthRatio:F

    mul-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitWidth(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxHeightPageSize:Lcom/shockwave/pdfium/util/SizeF;

    goto/16 :goto_0

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lcom/shockwave/pdfium/util/Size;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v2}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitBoth(Lcom/shockwave/pdfium/util/Size;FF)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v0

    .line 76
    .local v0, "localOptimalMaxWidth":Lcom/shockwave/pdfium/util/SizeF;
    invoke-virtual {v0}, Lcom/shockwave/pdfium/util/SizeF;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v2}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 77
    .local v1, "localWidthRatio":F
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxHeightPageSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v2}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lcom/shockwave/pdfium/util/Size;

    .line 78
    invoke-virtual {v4}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 77
    invoke-direct {p0, v2, v3, v4}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitBoth(Lcom/shockwave/pdfium/util/Size;FF)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v2

    iput-object v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxHeightPageSize:Lcom/shockwave/pdfium/util/SizeF;

    .line 79
    invoke-virtual {v2}, Lcom/shockwave/pdfium/util/SizeF;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxHeightPageSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v3}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->heightRatio:F

    .line 80
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lcom/shockwave/pdfium/util/Size;

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v3}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v4}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->heightRatio:F

    mul-float/2addr v4, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitBoth(Lcom/shockwave/pdfium/util/Size;FF)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v2

    iput-object v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxWidthPageSize:Lcom/shockwave/pdfium/util/SizeF;

    .line 81
    invoke-virtual {v2}, Lcom/shockwave/pdfium/util/SizeF;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v3}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->widthRatio:F

    .line 82
    goto :goto_0

    .line 70
    .end local v0    # "localOptimalMaxWidth":Lcom/shockwave/pdfium/util/SizeF;
    .end local v1    # "localWidthRatio":F
    :pswitch_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxHeightPageSize:Lcom/shockwave/pdfium/util/Size;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v1}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitHeight(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxHeightPageSize:Lcom/shockwave/pdfium/util/SizeF;

    .line 71
    invoke-virtual {v0}, Lcom/shockwave/pdfium/util/SizeF;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxHeightPageSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v1}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->heightRatio:F

    .line 72
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v0}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->heightRatio:F

    mul-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitHeight(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxWidthPageSize:Lcom/shockwave/pdfium/util/SizeF;

    .line 73
    nop

    .line 89
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private fitBoth(Lcom/shockwave/pdfium/util/Size;FF)Lcom/shockwave/pdfium/util/SizeF;
    .locals 5
    .param p1, "pageSize"    # Lcom/shockwave/pdfium/util/Size;
    .param p2, "maxWidth"    # F
    .param p3, "maxHeight"    # F

    .line 108
    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .local v0, "w":F
    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 109
    .local v1, "h":F
    div-float v2, v0, v1

    .line 110
    .local v2, "ratio":F
    move v0, p2

    .line 111
    div-float v3, p2, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 112
    cmpl-float v3, v1, p3

    if-lez v3, :cond_0

    .line 113
    move v1, p3

    .line 114
    mul-float v3, p3, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 116
    :cond_0
    new-instance v3, Lcom/shockwave/pdfium/util/SizeF;

    invoke-direct {v3, v0, v1}, Lcom/shockwave/pdfium/util/SizeF;-><init>(FF)V

    return-object v3
.end method

.method private fitHeight(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;
    .locals 5
    .param p1, "pageSize"    # Lcom/shockwave/pdfium/util/Size;
    .param p2, "maxHeight"    # F

    .line 100
    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .local v0, "w":F
    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 101
    .local v1, "h":F
    div-float v2, v1, v0

    .line 102
    .local v2, "ratio":F
    move v1, p2

    .line 103
    div-float v3, p2, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 104
    new-instance v3, Lcom/shockwave/pdfium/util/SizeF;

    invoke-direct {v3, v0, v1}, Lcom/shockwave/pdfium/util/SizeF;-><init>(FF)V

    return-object v3
.end method

.method private fitWidth(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;
    .locals 5
    .param p1, "pageSize"    # Lcom/shockwave/pdfium/util/Size;
    .param p2, "maxWidth"    # F

    .line 92
    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .local v0, "w":F
    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 93
    .local v1, "h":F
    div-float v2, v0, v1

    .line 94
    .local v2, "ratio":F
    move v0, p2

    .line 95
    div-float v3, p2, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 96
    new-instance v3, Lcom/shockwave/pdfium/util/SizeF;

    invoke-direct {v3, v0, v1}, Lcom/shockwave/pdfium/util/SizeF;-><init>(FF)V

    return-object v3
.end method


# virtual methods
.method public calculate(Lcom/shockwave/pdfium/util/Size;)Lcom/shockwave/pdfium/util/SizeF;
    .locals 4
    .param p1, "pageSize"    # Lcom/shockwave/pdfium/util/Size;

    .line 44
    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 47
    :cond_0
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitEachPage:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v0}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->widthRatio:F

    mul-float/2addr v0, v1

    .line 48
    .local v0, "maxWidth":F
    :goto_0
    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitEachPage:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v1}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->heightRatio:F

    mul-float/2addr v1, v2

    .line 49
    .local v1, "maxHeight":F
    :goto_1
    sget-object v2, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator$1;->$SwitchMap$com$github$barteksc$pdfviewer$util$FitPolicy:[I

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitWidth(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v2

    return-object v2

    .line 53
    :pswitch_0
    invoke-direct {p0, p1, v0, v1}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitBoth(Lcom/shockwave/pdfium/util/Size;FF)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v2

    return-object v2

    .line 51
    :pswitch_1
    invoke-direct {p0, p1, v1}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitHeight(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v2

    return-object v2

    .line 45
    .end local v0    # "maxWidth":F
    .end local v1    # "maxHeight":F
    :cond_3
    :goto_2
    new-instance v0, Lcom/shockwave/pdfium/util/SizeF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/shockwave/pdfium/util/SizeF;-><init>(FF)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getOptimalMaxHeightPageSize()Lcom/shockwave/pdfium/util/SizeF;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxHeightPageSize:Lcom/shockwave/pdfium/util/SizeF;

    return-object v0
.end method

.method public getOptimalMaxWidthPageSize()Lcom/shockwave/pdfium/util/SizeF;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxWidthPageSize:Lcom/shockwave/pdfium/util/SizeF;

    return-object v0
.end method
