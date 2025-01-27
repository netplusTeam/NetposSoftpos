.class public final Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator;
.super Ljava/lang/Object;
.source "ObjectFitCalculator.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateRenderedImageSize(Lcom/itextpdf/layout/property/ObjectFit;DDDD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;
    .locals 2
    .param p0, "objectFit"    # Lcom/itextpdf/layout/property/ObjectFit;
    .param p1, "absoluteImageWidth"    # D
    .param p3, "absoluteImageHeight"    # D
    .param p5, "imageContainerWidth"    # D
    .param p7, "imageContainerHeight"    # D

    .line 71
    sget-object v0, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator$1;->$SwitchMap$com$itextpdf$layout$property$ObjectFit:[I

    invoke-virtual {p0}, Lcom/itextpdf/layout/property/ObjectFit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object fit parameter cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :pswitch_0
    invoke-static/range {p1 .. p8}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator;->processNone(DDDD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-result-object v0

    return-object v0

    .line 81
    :pswitch_1
    invoke-static/range {p1 .. p8}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator;->processScaleDown(DDDD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-result-object v0

    return-object v0

    .line 78
    :pswitch_2
    invoke-static/range {p1 .. p8}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator;->processCover(DDDD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-result-object v0

    return-object v0

    .line 75
    :pswitch_3
    invoke-static/range {p1 .. p8}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator;->processContain(DDDD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-result-object v0

    return-object v0

    .line 73
    :pswitch_4
    invoke-static {p5, p6, p7, p8}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator;->processFill(DD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static processContain(DDDD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;
    .locals 9
    .param p0, "absoluteImageWidth"    # D
    .param p2, "absoluteImageHeight"    # D
    .param p4, "imageContainerWidth"    # D
    .param p6, "imageContainerHeight"    # D

    .line 98
    const/4 v8, 0x0

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v8}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator;->processToFitSide(DDDDZ)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-result-object v0

    return-object v0
.end method

.method private static processCover(DDDD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;
    .locals 9
    .param p0, "absoluteImageWidth"    # D
    .param p2, "absoluteImageHeight"    # D
    .param p4, "imageContainerWidth"    # D
    .param p6, "imageContainerHeight"    # D

    .line 104
    const/4 v8, 0x1

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v8}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator;->processToFitSide(DDDDZ)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-result-object v0

    return-object v0
.end method

.method private static processFill(DD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;
    .locals 7
    .param p0, "imageContainerWidth"    # D
    .param p2, "imageContainerHeight"    # D

    .line 93
    new-instance v6, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;-><init>(DDZ)V

    return-object v6
.end method

.method private static processNone(DDDD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;
    .locals 7
    .param p0, "absoluteImageWidth"    # D
    .param p2, "absoluteImageHeight"    # D
    .param p4, "imageContainerWidth"    # D
    .param p6, "imageContainerHeight"    # D

    .line 121
    cmpg-double v0, p4, p0

    if-lez v0, :cond_1

    cmpg-double v0, p6, p2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v6, v0

    .line 123
    .local v6, "doesObjectFitRequireCutting":Z
    new-instance v0, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-object v1, v0

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;-><init>(DDZ)V

    return-object v0
.end method

.method private static processScaleDown(DDDD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;
    .locals 9
    .param p0, "absoluteImageWidth"    # D
    .param p2, "absoluteImageHeight"    # D
    .param p4, "imageContainerWidth"    # D
    .param p6, "imageContainerHeight"    # D

    .line 110
    cmpl-double v0, p4, p0

    if-ltz v0, :cond_0

    cmpl-double v0, p6, p2

    if-ltz v0, :cond_0

    .line 112
    new-instance v6, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;-><init>(DDZ)V

    return-object v6

    .line 114
    :cond_0
    const/4 v8, 0x0

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v8}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator;->processToFitSide(DDDDZ)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-result-object v0

    return-object v0
.end method

.method private static processToFitSide(DDDDZ)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;
    .locals 16
    .param p0, "absoluteImageWidth"    # D
    .param p2, "absoluteImageHeight"    # D
    .param p4, "imageContainerWidth"    # D
    .param p6, "imageContainerHeight"    # D
    .param p8, "clipToFit"    # Z

    .line 130
    div-double v0, p4, p0

    .line 131
    .local v0, "widthCoeff":D
    div-double v2, p6, p2

    .line 136
    .local v2, "heightCoeff":D
    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    xor-int v4, v4, p8

    .line 138
    .local v4, "isWidthFitted":Z
    if-eqz v4, :cond_1

    .line 139
    move-wide/from16 v5, p4

    .line 140
    .local v5, "renderedImageWidth":D
    mul-double v7, p2, p4

    div-double v7, v7, p0

    move-wide v11, v5

    move-wide v13, v7

    .local v7, "renderedImageHeight":D
    goto :goto_1

    .line 142
    .end local v5    # "renderedImageWidth":D
    .end local v7    # "renderedImageHeight":D
    :cond_1
    move-wide/from16 v7, p6

    .line 143
    .restart local v7    # "renderedImageHeight":D
    mul-double v5, p0, p6

    div-double v5, v5, p2

    move-wide v11, v5

    move-wide v13, v7

    .line 146
    .end local v7    # "renderedImageHeight":D
    .local v11, "renderedImageWidth":D
    .local v13, "renderedImageHeight":D
    :goto_1
    new-instance v15, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-object v5, v15

    move-wide v6, v11

    move-wide v8, v13

    move/from16 v10, p8

    invoke-direct/range {v5 .. v10}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;-><init>(DDZ)V

    return-object v15
.end method
