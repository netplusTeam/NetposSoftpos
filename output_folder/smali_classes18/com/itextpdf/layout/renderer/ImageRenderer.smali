.class public Lcom/itextpdf/layout/renderer/ImageRenderer;
.super Lcom/itextpdf/layout/renderer/AbstractRenderer;
.source "ImageRenderer.java"

# interfaces
.implements Lcom/itextpdf/layout/renderer/ILeafElementRenderer;


# instance fields
.field protected deltaX:F

.field private doesObjectFitRequireCutting:Z

.field protected fixedXPosition:Ljava/lang/Float;

.field protected fixedYPosition:Ljava/lang/Float;

.field private height:Ljava/lang/Float;

.field protected imageHeight:F

.field protected imageWidth:F

.field private initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

.field matrix:[F

.field protected pivotY:F

.field private renderedImageHeight:F

.field private renderedImageWidth:F

.field private rotatedDeltaX:F

.field private rotatedDeltaY:F

.field private width:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/element/Image;)V
    .locals 1
    .param p1, "image"    # Lcom/itextpdf/layout/element/Image;

    .line 103
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;-><init>(Lcom/itextpdf/layout/element/IElement;)V

    .line 87
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->matrix:[F

    .line 104
    return-void
.end method

.method private adjustPositionAfterRotation(FFF)F
    .locals 22
    .param p1, "angle"    # F
    .param p2, "maxWidth"    # F
    .param p3, "maxHeight"    # F

    .line 532
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    const/4 v3, 0x3

    if-eqz v2, :cond_2

    .line 533
    float-to-double v4, v1

    invoke-static {v4, v5}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(D)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v2

    .line 534
    .local v2, "t":Lcom/itextpdf/kernel/geom/AffineTransform;
    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(II)V

    new-instance v6, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v6}, Lcom/itextpdf/kernel/geom/Point;-><init>()V

    invoke-virtual {v2, v4, v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v4

    .line 535
    .local v4, "p00":Lcom/itextpdf/kernel/geom/Point;
    new-instance v6, Lcom/itextpdf/kernel/geom/Point;

    iget-object v7, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    const-wide/16 v9, 0x0

    invoke-direct {v6, v9, v10, v7, v8}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v7, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v7}, Lcom/itextpdf/kernel/geom/Point;-><init>()V

    invoke-virtual {v2, v6, v7}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v6

    .line 536
    .local v6, "p01":Lcom/itextpdf/kernel/geom/Point;
    new-instance v7, Lcom/itextpdf/kernel/geom/Point;

    iget-object v8, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v11, v8

    invoke-direct {v7, v11, v12, v9, v10}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v8, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v8}, Lcom/itextpdf/kernel/geom/Point;-><init>()V

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v7

    .line 537
    .local v7, "p10":Lcom/itextpdf/kernel/geom/Point;
    new-instance v8, Lcom/itextpdf/kernel/geom/Point;

    iget-object v9, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    float-to-double v9, v9

    iget-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    float-to-double v11, v11

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v9, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v9}, Lcom/itextpdf/kernel/geom/Point;-><init>()V

    invoke-virtual {v2, v8, v9}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v8

    .line 539
    .local v8, "p11":Lcom/itextpdf/kernel/geom/Point;
    new-array v9, v3, [D

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v10

    aput-wide v10, v9, v5

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v10

    const/4 v12, 0x1

    aput-wide v10, v9, v12

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v10

    const/4 v13, 0x2

    aput-wide v10, v9, v13

    .line 540
    .local v9, "xValues":[D
    new-array v10, v3, [D

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v14

    aput-wide v14, v10, v5

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v14

    aput-wide v14, v10, v12

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v11

    aput-wide v11, v10, v13

    .line 542
    .local v10, "yValues":[D
    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v11

    .line 543
    .local v11, "minX":D
    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v13

    .line 544
    .local v13, "minY":D
    move-wide v15, v11

    .line 545
    .local v15, "maxX":D
    move-wide/from16 v17, v13

    .line 547
    .local v17, "maxY":D
    array-length v5, v9

    move-wide/from16 v20, v15

    move-object/from16 v16, v4

    move-wide/from16 v3, v20

    const/4 v15, 0x0

    .end local v4    # "p00":Lcom/itextpdf/kernel/geom/Point;
    .end local v15    # "maxX":D
    .local v3, "maxX":D
    .local v16, "p00":Lcom/itextpdf/kernel/geom/Point;
    :goto_0
    if-ge v15, v5, :cond_0

    move-object/from16 v19, v2

    .end local v2    # "t":Lcom/itextpdf/kernel/geom/AffineTransform;
    .local v19, "t":Lcom/itextpdf/kernel/geom/AffineTransform;
    aget-wide v1, v9, v15

    .line 548
    .local v1, "x":D
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    .line 549
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 547
    .end local v1    # "x":D
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    move-object/from16 v2, v19

    goto :goto_0

    .line 551
    .end local v19    # "t":Lcom/itextpdf/kernel/geom/AffineTransform;
    .restart local v2    # "t":Lcom/itextpdf/kernel/geom/AffineTransform;
    :cond_0
    move-object/from16 v19, v2

    .end local v2    # "t":Lcom/itextpdf/kernel/geom/AffineTransform;
    .restart local v19    # "t":Lcom/itextpdf/kernel/geom/AffineTransform;
    array-length v1, v10

    move-object v2, v6

    move-object v15, v7

    move-wide/from16 v6, v17

    const/4 v5, 0x0

    .end local v7    # "p10":Lcom/itextpdf/kernel/geom/Point;
    .end local v17    # "maxY":D
    .local v2, "p01":Lcom/itextpdf/kernel/geom/Point;
    .local v6, "maxY":D
    .local v15, "p10":Lcom/itextpdf/kernel/geom/Point;
    :goto_1
    if-ge v5, v1, :cond_1

    move/from16 v17, v1

    move-object/from16 v18, v2

    .end local v2    # "p01":Lcom/itextpdf/kernel/geom/Point;
    .local v18, "p01":Lcom/itextpdf/kernel/geom/Point;
    aget-wide v1, v10, v5

    .line 552
    .local v1, "y":D
    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    .line 553
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 551
    .end local v1    # "y":D
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v17

    move-object/from16 v2, v18

    goto :goto_1

    .line 556
    .end local v18    # "p01":Lcom/itextpdf/kernel/geom/Point;
    .restart local v2    # "p01":Lcom/itextpdf/kernel/geom/Point;
    :cond_1
    move-object/from16 v18, v2

    .end local v2    # "p01":Lcom/itextpdf/kernel/geom/Point;
    .restart local v18    # "p01":Lcom/itextpdf/kernel/geom/Point;
    sub-double v1, v6, v13

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    .line 557
    sub-double v1, v3, v11

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 558
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v1

    sub-double/2addr v1, v13

    double-to-float v1, v1

    iput v1, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->pivotY:F

    .line 560
    double-to-float v1, v11

    neg-float v1, v1

    iput v1, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->deltaX:F

    .line 564
    .end local v3    # "maxX":D
    .end local v6    # "maxY":D
    .end local v8    # "p11":Lcom/itextpdf/kernel/geom/Point;
    .end local v9    # "xValues":[D
    .end local v10    # "yValues":[D
    .end local v11    # "minX":D
    .end local v13    # "minY":D
    .end local v15    # "p10":Lcom/itextpdf/kernel/geom/Point;
    .end local v16    # "p00":Lcom/itextpdf/kernel/geom/Point;
    .end local v18    # "p01":Lcom/itextpdf/kernel/geom/Point;
    .end local v19    # "t":Lcom/itextpdf/kernel/geom/AffineTransform;
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 565
    .local v1, "scaleCoeff":F
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 566
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float v2, p2, v2

    iget-object v3, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float v3, p3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 567
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float v1, p2, v2

    .line 568
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float v3, p2, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    .line 569
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    goto :goto_2

    .line 571
    :cond_3
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float v1, p3, v2

    .line 572
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float v3, p3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 573
    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    goto :goto_2

    .line 575
    :cond_4
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 576
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float v1, p2, v2

    .line 577
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    .line 578
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    goto :goto_2

    .line 579
    :cond_5
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 580
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float v1, p3, v2

    .line 581
    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    .line 582
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 584
    :cond_6
    :goto_2
    iget v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->pivotY:F

    mul-float/2addr v2, v1

    iput v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->pivotY:F

    .line 585
    iget v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->deltaX:F

    mul-float/2addr v2, v1

    iput v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->deltaX:F

    .line 586
    return v1
.end method

.method private applyConcatMatrix(Lcom/itextpdf/layout/renderer/DrawContext;Ljava/lang/Float;)V
    .locals 22
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;
    .param p2, "angle"    # Ljava/lang/Float;

    .line 601
    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(D)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    .line 602
    .local v1, "rotationTransform":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getBorderAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 604
    .local v2, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/ImageRenderer;->rectangleToPointsList(Lcom/itextpdf/kernel/geom/Rectangle;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->transformPoints(Ljava/util/List;Lcom/itextpdf/kernel/geom/AffineTransform;)Ljava/util/List;

    move-result-object v3

    .line 606
    .local v3, "rotatedPoints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v4

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v5

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v0, v4, v5, v3}, Lcom/itextpdf/layout/renderer/ImageRenderer;->calculateShiftToPositionBBoxOfPointsAt(FFLjava/util/List;)[F

    move-result-object v4

    .line 608
    .local v4, "shift":[F
    const/4 v5, 0x6

    new-array v5, v5, [D

    .line 609
    .local v5, "matrix":[D
    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/geom/AffineTransform;->getMatrix([D)V

    .line 611
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v6

    const/4 v7, 0x0

    aget-wide v8, v5, v7

    const/4 v10, 0x1

    aget-wide v11, v5, v10

    const/4 v13, 0x2

    aget-wide v13, v5, v13

    const/4 v15, 0x3

    aget-wide v15, v5, v15

    aget v7, v4, v7

    move-object/from16 v19, v1

    .end local v1    # "rotationTransform":Lcom/itextpdf/kernel/geom/AffineTransform;
    .local v19, "rotationTransform":Lcom/itextpdf/kernel/geom/AffineTransform;
    float-to-double v0, v7

    aget v7, v4, v10

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    .end local v2    # "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v3    # "rotatedPoints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    .local v20, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v21, "rotatedPoints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    float-to-double v2, v7

    move-wide v7, v8

    move-wide v9, v11

    move-wide v11, v13

    move-wide v13, v15

    move-wide v15, v0

    move-wide/from16 v17, v2

    invoke-virtual/range {v6 .. v18}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 612
    return-void
.end method

.method private applyObjectFit(Lcom/itextpdf/layout/property/ObjectFit;FF)V
    .locals 9
    .param p1, "objectFit"    # Lcom/itextpdf/layout/property/ObjectFit;
    .param p2, "imageWidth"    # F
    .param p3, "imageHeight"    # F

    .line 433
    float-to-double v1, p2

    float-to-double v3, p3

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 434
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v5, v0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v7, v0

    .line 433
    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator;->calculateRenderedImageSize(Lcom/itextpdf/layout/property/ObjectFit;DDDD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-result-object v0

    .line 435
    .local v0, "result":Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;->getRenderedImageWidth()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->renderedImageWidth:F

    .line 436
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;->getRenderedImageHeight()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->renderedImageHeight:F

    .line 437
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;->isImageCuttingRequired()Z

    move-result v1

    iput-boolean v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->doesObjectFitRequireCutting:Z

    .line 438
    return-void
.end method

.method private applyRotationLayout(F)V
    .locals 15
    .param p1, "angle"    # F

    .line 615
    move-object v0, p0

    move/from16 v1, p1

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v2

    .line 616
    .local v2, "borders":[Lcom/itextpdf/layout/borders/Border;
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getBorderAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    .line 618
    .local v3, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v4, 0x3

    aget-object v5, v2, v4

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    aget-object v4, v2, v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v4

    .line 619
    .local v4, "leftBorderWidth":F
    :goto_0
    const/4 v5, 0x1

    aget-object v7, v2, v5

    if-nez v7, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    aget-object v5, v2, v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    .line 620
    .local v5, "rightBorderWidth":F
    :goto_1
    const/4 v7, 0x0

    aget-object v8, v2, v7

    if-nez v8, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    aget-object v7, v2, v7

    invoke-virtual {v7}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v7

    .line 621
    .local v7, "topBorderWidth":F
    :goto_2
    cmpl-float v8, v4, v6

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    if-eqz v8, :cond_4

    .line 622
    float-to-double v11, v7

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    float-to-double v13, v4

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v8, v11

    .line 623
    .local v8, "gip":F
    div-float v11, v7, v4

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    .line 624
    .local v11, "atan":D
    cmpg-float v13, v1, v6

    if-gez v13, :cond_3

    .line 625
    neg-double v11, v11

    .line 627
    :cond_3
    float-to-double v13, v8

    float-to-double v9, v1

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v13, v9

    float-to-double v9, v4

    sub-double/2addr v13, v9

    double-to-float v9, v13

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iput v9, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaX:F

    .line 628
    .end local v8    # "gip":F
    .end local v11    # "atan":D
    goto :goto_3

    .line 629
    :cond_4
    iput v6, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaX:F

    .line 632
    :goto_3
    iget v8, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaX:F

    invoke-virtual {v3, v8}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 633
    iget-object v8, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    iget-object v9, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v9

    iget v10, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaX:F

    add-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 635
    cmpl-float v8, v5, v6

    if-eqz v8, :cond_6

    .line 636
    float-to-double v8, v7

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v12, v4

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 637
    .restart local v8    # "gip":F
    div-float v9, v5, v7

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    .line 638
    .local v9, "atan":D
    cmpg-float v11, v1, v6

    if-gez v11, :cond_5

    .line 639
    neg-double v9, v9

    .line 641
    :cond_5
    float-to-double v11, v8

    float-to-double v13, v1

    sub-double/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    float-to-double v13, v7

    sub-double/2addr v11, v13

    double-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iput v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaY:F

    .line 642
    .end local v8    # "gip":F
    .end local v9    # "atan":D
    goto :goto_4

    .line 643
    :cond_6
    iput v6, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaY:F

    .line 646
    :goto_4
    iget v8, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaY:F

    invoke-virtual {v3, v8}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 647
    cmpg-float v6, v1, v6

    if-gez v6, :cond_7

    .line 648
    iget v6, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaY:F

    add-float/2addr v6, v5

    iput v6, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaY:F

    .line 650
    :cond_7
    iget-object v6, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    iget v8, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaY:F

    invoke-virtual {v6, v8}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 651
    return-void
.end method

.method private beginObjectFitImageClipping(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 5
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 441
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->doesObjectFitRequireCutting:Z

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 443
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    .line 444
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 445
    .local v0, "clippedArea":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 447
    .end local v0    # "clippedArea":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_0
    return-void
.end method

.method private calculateImageDimensions(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;)V
    .locals 10
    .param p1, "layoutBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "t"    # Lcom/itextpdf/kernel/geom/AffineTransform;
    .param p3, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 456
    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 457
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->retrieveHeight()Ljava/lang/Float;

    move-result-object v0

    .line 458
    .local v0, "declaredHeight":Ljava/lang/Float;
    iput-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    .line 459
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 460
    iget v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 461
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageHeight:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    goto :goto_1

    .line 462
    :cond_1
    if-nez v1, :cond_2

    .line 463
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageHeight:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    goto :goto_1

    .line 464
    :cond_2
    if-nez v0, :cond_3

    .line 465
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageHeight:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    .line 468
    :cond_3
    :goto_1
    const/16 v1, 0x1d

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsFloat(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    .line 469
    .local v1, "horizontalScaling":Ljava/lang/Float;
    const/16 v3, 0x4c

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsFloat(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    .line 472
    .local v3, "verticalScaling":Ljava/lang/Float;
    instance-of v4, p3, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v5, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    .line 473
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget v6, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 474
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget v6, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageHeight:F

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 477
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-eqz v4, :cond_6

    .line 478
    instance-of v4, p3, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v4, :cond_5

    .line 479
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v7, v4

    invoke-virtual {p2, v7, v8, v5, v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->scale(DD)V

    .line 480
    iget v4, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    mul-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    goto :goto_2

    .line 482
    :cond_5
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    mul-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 485
    :cond_6
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_8

    .line 486
    instance-of v2, p3, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v2, :cond_7

    .line 487
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v7, v2

    invoke-virtual {p2, v5, v6, v7, v8}, Lcom/itextpdf/kernel/geom/AffineTransform;->scale(DD)V

    .line 488
    iget v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageHeight:F

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    goto :goto_3

    .line 490
    :cond_7
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    .line 495
    :cond_8
    :goto_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/ImageRenderer;->retrieveMinWidth(F)Ljava/lang/Float;

    move-result-object v2

    .line 496
    .local v2, "minWidth":Ljava/lang/Float;
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/ImageRenderer;->retrieveMaxWidth(F)Ljava/lang/Float;

    move-result-object v4

    .line 497
    .local v4, "maxWidth":Ljava/lang/Float;
    if-eqz v2, :cond_9

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_9

    .line 498
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    .line 499
    iput-object v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    goto :goto_4

    .line 500
    :cond_9
    if-eqz v4, :cond_a

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    .line 501
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    .line 502
    iput-object v4, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 506
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->retrieveMinHeight()Ljava/lang/Float;

    move-result-object v5

    .line 507
    .local v5, "minHeight":Ljava/lang/Float;
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->retrieveMaxHeight()Ljava/lang/Float;

    move-result-object v6

    .line 508
    .local v6, "maxHeight":Ljava/lang/Float;
    if-eqz v5, :cond_b

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_b

    .line 509
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v9, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iput-object v7, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 510
    iput-object v5, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    goto :goto_5

    .line 511
    :cond_b
    if-eqz v6, :cond_c

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_c

    .line 512
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v9, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iput-object v7, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 513
    iput-object v6, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    goto :goto_5

    .line 514
    :cond_c
    if-eqz v0, :cond_d

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v7, v0}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 515
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v9, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iput-object v7, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 516
    iput-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    .line 518
    :cond_d
    :goto_5
    return-void
.end method

.method private endObjectFitImageClipping(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 450
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->doesObjectFitRequireCutting:Z

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 453
    :cond_0
    return-void
.end method

.method private getMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;FF)V
    .locals 4
    .param p1, "t"    # Lcom/itextpdf/kernel/geom/AffineTransform;
    .param p2, "imageItselfScaledWidth"    # F
    .param p3, "imageItselfScaledHeight"    # F

    .line 521
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->matrix:[F

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->getMatrix([F)V

    .line 522
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Image;

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/layout/element/Image;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Image;->getXObject()Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v0

    .line 523
    .local v0, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->matrix:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    mul-float/2addr v3, p2

    aput v3, v1, v2

    .line 525
    const/4 v2, 0x1

    aget v3, v1, v2

    mul-float/2addr v3, p2

    aput v3, v1, v2

    .line 526
    const/4 v2, 0x2

    aget v3, v1, v2

    mul-float/2addr v3, p3

    aput v3, v1, v2

    .line 527
    const/4 v2, 0x3

    aget v3, v1, v2

    mul-float/2addr v3, p3

    aput v3, v1, v2

    .line 529
    :cond_0
    return-void
.end method

.method private translateImage(FFLcom/itextpdf/kernel/geom/AffineTransform;)V
    .locals 4
    .param p1, "xDistance"    # F
    .param p2, "yDistance"    # F
    .param p3, "t"    # Lcom/itextpdf/kernel/geom/AffineTransform;

    .line 590
    float-to-double v0, p1

    float-to-double v2, p2

    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    .line 591
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->matrix:[F

    invoke-virtual {p3, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->getMatrix([F)V

    .line 592
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateX()D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 596
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateY()D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    .line 598
    :cond_1
    return-void
.end method


# virtual methods
.method protected applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "paddings"    # [Lcom/itextpdf/layout/property/UnitValue;
    .param p3, "reverse"    # Z

    .line 395
    return-object p1
.end method

.method protected autoScale(Lcom/itextpdf/layout/layout/LayoutArea;)Lcom/itextpdf/layout/renderer/ImageRenderer;
    .locals 4
    .param p1, "layoutArea"    # Lcom/itextpdf/layout/layout/LayoutArea;

    .line 419
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 420
    .local v0, "area":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 421
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 423
    iget v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v1, v2

    .line 424
    .local v1, "angleScaleCoef":F
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    mul-float/2addr v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 425
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageHeight:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/ImageRenderer;->updateHeight(Lcom/itextpdf/layout/property/UnitValue;)V

    .line 426
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/ImageRenderer;->updateWidth(Lcom/itextpdf/layout/property/UnitValue;)V

    .line 429
    :cond_0
    return-object p0
.end method

.method public draw(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 23
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 270
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 271
    const-class v2, Lcom/itextpdf/layout/renderer/ImageRenderer;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 272
    .local v2, "logger":Lorg/slf4j/Logger;
    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "Drawing won\'t be performed."

    aput-object v5, v3, v4

    const-string v4, "Occupied area has not been initialized. {0}"

    invoke-static {v4, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 273
    return-void

    .line 276
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->isRelativePosition()Z

    move-result v2

    .line 277
    .local v2, "isRelativePosition":Z
    if-eqz v2, :cond_1

    .line 278
    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyRelativePositioningTranslation(Z)V

    .line 281
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->isTaggingEnabled()Z

    move-result v5

    .line 282
    .local v5, "isTagged":Z
    const/4 v6, 0x0

    .line 283
    .local v6, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    const/4 v7, 0x0

    .line 284
    .local v7, "isArtifact":Z
    const/4 v8, 0x0

    .line 285
    .local v8, "tagPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    if-eqz v5, :cond_3

    .line 286
    const/16 v9, 0x6c

    invoke-virtual {v0, v9}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    check-cast v6, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    .line 287
    if-nez v6, :cond_2

    .line 288
    const/4 v7, 0x1

    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isArtifact(Lcom/itextpdf/layout/IPropertyContainer;)Z

    move-result v7

    .line 291
    if-nez v7, :cond_3

    .line 292
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->useAutoTaggingPointerAndRememberItsPosition(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v8

    .line 293
    invoke-virtual {v6, v0, v8}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->createTag(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 294
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v9

    invoke-static {v0, v8}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->getLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->addAttributes(ILcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    .line 300
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/itextpdf/layout/renderer/ImageRenderer;->beginTransformationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 302
    const/16 v9, 0x37

    invoke-virtual {v0, v9}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v9

    .line 303
    .local v9, "angle":Ljava/lang/Float;
    if-eqz v9, :cond_4

    .line 304
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 305
    invoke-direct {v0, v1, v9}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyConcatMatrix(Lcom/itextpdf/layout/renderer/DrawContext;Ljava/lang/Float;)V

    .line 308
    :cond_4
    invoke-super/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v10

    invoke-virtual {v0, v10, v4}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v10

    invoke-virtual {v0, v1, v10, v3}, Lcom/itextpdf/layout/renderer/ImageRenderer;->clipBackgroundArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;Z)Z

    move-result v10

    .line 311
    .local v10, "clipImageInAViewOfBorderRadius":Z
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v11

    invoke-virtual {v0, v11, v4}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 312
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v12

    invoke-virtual {v0, v11, v12, v4}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 314
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    if-nez v11, :cond_5

    .line 315
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v11

    iget v12, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->pivotY:F

    add-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iput-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    .line 317
    :cond_5
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    if-nez v11, :cond_6

    .line 318
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iput-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    .line 321
    :cond_6
    if-eqz v9, :cond_7

    .line 322
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iget v12, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaX:F

    add-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iput-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    .line 323
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iget v12, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaY:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iput-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    .line 324
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 326
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v11

    .line 327
    .local v11, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    if-eqz v5, :cond_9

    .line 328
    if-eqz v7, :cond_8

    .line 329
    new-instance v12, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;

    invoke-direct {v12}, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;-><init>()V

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    .line 331
    :cond_8
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getTagReference()Lcom/itextpdf/kernel/pdf/tagutils/TagReference;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/tagutils/TagReference;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 336
    :cond_9
    :goto_1
    invoke-direct {v0, v11}, Lcom/itextpdf/layout/renderer/ImageRenderer;->beginObjectFitImageClipping(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/layout/element/Image;

    move-object v13, v12

    check-cast v13, Lcom/itextpdf/layout/element/Image;

    invoke-virtual {v12}, Lcom/itextpdf/layout/element/Image;->getXObject()Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v20

    .line 339
    .local v20, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->beginElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 341
    iget-object v12, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iget v13, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->renderedImageWidth:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float v21, v12, v13

    .line 342
    .local v21, "renderedImageShiftX":F
    iget-object v12, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iget v14, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->renderedImageHeight:F

    sub-float/2addr v12, v14

    div-float v22, v12, v13

    .line 343
    .local v22, "renderedImageShiftY":F
    iget-object v12, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->matrix:[F

    aget v14, v12, v4

    aget v15, v12, v3

    const/4 v4, 0x2

    aget v16, v12, v4

    const/4 v4, 0x3

    aget v17, v12, v4

    iget-object v4, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v12, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->deltaX:F

    add-float/2addr v4, v12

    add-float v18, v4, v21

    iget-object v4, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    .line 344
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float v19, v4, v22

    .line 343
    move-object v12, v11

    move-object/from16 v13, v20

    invoke-virtual/range {v12 .. v19}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 346
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->endElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 347
    invoke-direct {v0, v11}, Lcom/itextpdf/layout/renderer/ImageRenderer;->endObjectFitImageClipping(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 348
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/renderer/ImageRenderer;->endTransformationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 350
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v12, 0x13

    invoke-virtual {v0, v12}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 351
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->flush()V

    .line 354
    :cond_a
    if-eqz v5, :cond_b

    .line 355
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closeTag()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 358
    :cond_b
    if-eqz v10, :cond_c

    .line 359
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 362
    :cond_c
    if-eqz v2, :cond_d

    .line 363
    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyRelativePositioningTranslation(Z)V

    .line 365
    :cond_d
    iget-object v4, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v12

    invoke-virtual {v0, v4, v12, v3}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 366
    iget-object v4, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 368
    if-eqz v5, :cond_e

    if-nez v7, :cond_e

    .line 369
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->finishTaggingHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    .line 370
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->restoreAutoTaggingPointerPosition(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 372
    :cond_e
    return-void
.end method

.method public getAscent()F
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    return v0
.end method

.method public getBorderAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 382
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 384
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->isRelativePosition()Z

    move-result v0

    .line 385
    .local v0, "isRelativePosition":Z
    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyRelativePositioningTranslation(Z)V

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 389
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 390
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v1
.end method

.method public getDescent()F
    .locals 1

    .line 660
    const/4 v0, 0x0

    return v0
.end method

.method public getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 5

    .line 415
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getInfWidth()F

    move-result v3

    const v4, 0x49742400    # 1000000.0f

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    return-object v0
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 376
    const/4 v0, 0x0

    return-object v0
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 41
    .param p1, "layoutContext"    # Lcom/itextpdf/layout/layout/LayoutContext;

    .line 108
    move-object/from16 v12, p0

    const-class v6, Lcom/itextpdf/layout/renderer/ImageRenderer;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v13

    .line 109
    .local v13, "area":Lcom/itextpdf/layout/layout/LayoutArea;
    invoke-virtual {v13}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v14

    .line 111
    .local v14, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    move-object v15, v0

    .line 112
    .local v15, "t":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Image;

    move-object/from16 v16, v0

    check-cast v16, Lcom/itextpdf/layout/element/Image;

    .line 113
    .local v16, "modelElement":Lcom/itextpdf/layout/element/Image;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/layout/element/Image;->getXObject()Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v11

    .line 114
    .local v11, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/layout/element/Image;->getImageWidth()F

    move-result v0

    iput v0, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    .line 115
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/layout/element/Image;->getImageHeight()F

    move-result v0

    iput v0, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageHeight:F

    .line 117
    invoke-direct {v12, v14, v15, v11}, Lcom/itextpdf/layout/renderer/ImageRenderer;->calculateImageDimensions(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;)V

    .line 119
    iget-object v0, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_0

    iget-object v0, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v1, 0x67

    .line 120
    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/OverflowPropertyValue;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itextpdf/layout/property/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    :goto_0
    move-object v5, v0

    .line 123
    .local v5, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    const/4 v0, 0x0

    .line 124
    .local v0, "nowrap":Z
    iget-object v1, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v1, v1, Lcom/itextpdf/layout/renderer/LineRenderer;

    if-eqz v1, :cond_1

    .line 125
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v3, 0x76

    invoke-interface {v2, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    move/from16 v17, v0

    goto :goto_1

    .line 124
    :cond_1
    move/from16 v17, v0

    .line 128
    .end local v0    # "nowrap":Z
    .local v17, "nowrap":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v10

    .line 129
    .local v10, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-static {v12, v10, v14}, Lcom/itextpdf/layout/renderer/FloatingHelper;->calculateClearHeightCorrection(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)F

    move-result v7

    .line 130
    .local v7, "clearHeightCorrection":F
    const/16 v0, 0x63

    invoke-virtual {v12, v0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/itextpdf/layout/property/FloatPropertyValue;

    .line 131
    .local v9, "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    invoke-static {v12, v9}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/property/FloatPropertyValue;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {v14, v7}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 133
    iget-object v2, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v3, v10

    move-object v4, v9

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustFloatedBlockLayoutBox(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Ljava/util/List;Lcom/itextpdf/layout/property/FloatPropertyValue;Lcom/itextpdf/layout/property/OverflowPropertyValue;)Ljava/lang/Float;

    move v0, v7

    goto :goto_2

    .line 135
    :cond_2
    iget-object v0, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-static {v10, v14, v0, v7, v8}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustLayoutBoxAccordingToFloats(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;FLcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;)F

    move-result v7

    move v0, v7

    .line 138
    .end local v7    # "clearHeightCorrection":F
    .local v0, "clearHeightCorrection":F
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v12, v14, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v2

    .line 140
    .local v2, "borders":[Lcom/itextpdf/layout/borders/Border;
    invoke-virtual {v12, v14, v2, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->retrieveMaxHeight()Ljava/lang/Float;

    move-result-object v3

    .line 143
    .local v3, "declaredMaxHeight":Ljava/lang/Float;
    iget-object v4, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v4, :cond_5

    if-eqz v3, :cond_3

    .line 144
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v14}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_4

    .line 145
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->isClippedHeight()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object v4, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v7, 0x68

    .line 147
    invoke-interface {v4, v7}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/property/OverflowPropertyValue;

    goto :goto_4

    .line 145
    :cond_5
    :goto_3
    sget-object v4, Lcom/itextpdf/layout/property/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    .line 147
    :goto_4
    nop

    .line 148
    .local v4, "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    invoke-static {v5}, Lcom/itextpdf/layout/renderer/ImageRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_7

    if-eqz v17, :cond_6

    goto :goto_5

    :cond_6
    move v7, v1

    goto :goto_6

    :cond_7
    :goto_5
    move v7, v8

    :goto_6
    move/from16 v19, v7

    .line 149
    .local v19, "processOverflowX":Z
    invoke-static {v4}, Lcom/itextpdf/layout/renderer/ImageRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v7

    xor-int/2addr v7, v8

    move/from16 v20, v7

    .line 150
    .local v20, "processOverflowY":Z
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->isAbsolutePosition()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 151
    invoke-virtual {v12, v14}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyAbsolutePosition(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 153
    :cond_8
    new-instance v7, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v13}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v1

    new-instance v8, Lcom/itextpdf/kernel/geom/Rectangle;

    move-object/from16 v23, v3

    .end local v3    # "declaredMaxHeight":Ljava/lang/Float;
    .local v23, "declaredMaxHeight":Ljava/lang/Float;
    invoke-virtual {v14}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v3

    invoke-virtual {v14}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v24

    invoke-virtual {v14}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v25

    move-object/from16 v26, v4

    .end local v4    # "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v26, "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    add-float v4, v24, v25

    move-object/from16 v24, v5

    .end local v5    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v24, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    const/4 v5, 0x0

    invoke-direct {v8, v3, v4, v5, v5}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v7, v1, v8}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v7, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 155
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->addPageByID(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 157
    iget-object v1, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 158
    .local v1, "imageContainerWidth":F
    iget-object v3, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 160
    .local v3, "imageContainerHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->isFixedLayout()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 161
    const/16 v4, 0x22

    invoke-virtual {v12, v4}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    .line 162
    const/16 v4, 0xe

    invoke-virtual {v12, v4}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    .line 165
    :cond_9
    const/16 v4, 0x37

    invoke-virtual {v12, v4}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v4

    .line 167
    .local v4, "angle":Ljava/lang/Float;
    if-nez v4, :cond_a

    .line 168
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 170
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v15, v7, v8}, Lcom/itextpdf/kernel/geom/AffineTransform;->rotate(D)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    iput-object v7, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 172
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v14}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v8

    invoke-virtual {v14}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    invoke-direct {v12, v7, v8, v5}, Lcom/itextpdf/layout/renderer/ImageRenderer;->adjustPositionAfterRotation(FFF)F

    move-result v5

    .line 174
    .local v5, "scaleCoef":F
    mul-float/2addr v3, v5

    .line 175
    mul-float/2addr v1, v5

    .line 177
    iget-object v7, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v7, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 178
    iget-object v7, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v7, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 179
    iget-object v7, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 180
    instance-of v7, v11, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v7, :cond_b

    .line 181
    float-to-double v7, v5

    move-object/from16 v28, v9

    move-object/from16 v27, v10

    .end local v9    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .end local v10    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v27, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v28, "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    float-to-double v9, v5

    invoke-virtual {v15, v7, v8, v9, v10}, Lcom/itextpdf/kernel/geom/AffineTransform;->scale(DD)V

    goto :goto_7

    .line 180
    .end local v27    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v28    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .restart local v9    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .restart local v10    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :cond_b
    move-object/from16 v28, v9

    move-object/from16 v27, v10

    .line 187
    .end local v9    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .end local v10    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v27    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v28    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    :goto_7
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/layout/element/Image;->getObjectFit()Lcom/itextpdf/layout/property/ObjectFit;

    move-result-object v7

    iget v8, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    iget v9, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageHeight:F

    invoke-direct {v12, v7, v8, v9}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyObjectFit(Lcom/itextpdf/layout/property/ObjectFit;FF)V

    .line 188
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/layout/element/Image;->getObjectFit()Lcom/itextpdf/layout/property/ObjectFit;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/layout/property/ObjectFit;->FILL:Lcom/itextpdf/layout/property/ObjectFit;

    if-ne v7, v8, :cond_c

    .line 189
    move v7, v1

    .line 190
    .local v7, "imageItselfWidth":F
    move v8, v3

    move v10, v7

    move v9, v8

    .local v8, "imageItselfHeight":F
    goto :goto_8

    .line 192
    .end local v7    # "imageItselfWidth":F
    .end local v8    # "imageItselfHeight":F
    :cond_c
    iget v7, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->renderedImageWidth:F

    .line 193
    .restart local v7    # "imageItselfWidth":F
    iget v8, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->renderedImageHeight:F

    move v10, v7

    move v9, v8

    .line 195
    .end local v7    # "imageItselfWidth":F
    .local v9, "imageItselfHeight":F
    .local v10, "imageItselfWidth":F
    :goto_8
    invoke-direct {v12, v15, v10, v9}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;FF)V

    .line 198
    const/16 v29, 0x0

    .line 199
    .local v29, "isPlacingForced":Z
    iget-object v7, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v14}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v8

    const v30, 0x38d1b717    # 1.0E-4f

    add-float v8, v8, v30

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_e

    iget-object v7, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v14}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    add-float v8, v8, v30

    cmpl-float v7, v7, v8

    if-lez v7, :cond_d

    goto :goto_9

    :cond_d
    move/from16 v30, v9

    move-object/from16 v32, v11

    move-object/from16 v31, v27

    move/from16 v27, v10

    goto/16 :goto_d

    .line 200
    :cond_e
    :goto_9
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v8, 0x1a

    invoke-virtual {v12, v8}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    iget-object v7, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v14}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_10

    if-nez v19, :cond_f

    goto :goto_b

    :cond_f
    :goto_a
    move/from16 v30, v9

    move-object/from16 v32, v11

    move-object/from16 v31, v27

    move/from16 v27, v10

    goto :goto_c

    :cond_10
    :goto_b
    iget-object v7, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v14}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_11

    if-eqz v20, :cond_11

    goto :goto_a

    .line 203
    :cond_11
    iget-object v6, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v7, 0x1

    invoke-virtual {v12, v6, v7}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 204
    iget-object v6, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v12, v6, v7}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 205
    iget-object v6, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    iget-object v7, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 206
    new-instance v18, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    const/4 v7, 0x3

    iget-object v8, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/16 v21, 0x0

    move-object/from16 v6, v18

    move/from16 v30, v9

    .end local v9    # "imageItselfHeight":F
    .local v30, "imageItselfHeight":F
    move-object/from16 v9, v21

    move-object/from16 v31, v27

    move/from16 v27, v10

    .end local v10    # "imageItselfWidth":F
    .local v27, "imageItselfWidth":F
    .local v31, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    move-object/from16 v10, p0

    move-object/from16 v32, v11

    .end local v11    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .local v32, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    move-object/from16 v11, p0

    invoke-direct/range {v6 .. v11}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v18

    .line 200
    .end local v30    # "imageItselfHeight":F
    .end local v31    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v32    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .restart local v9    # "imageItselfHeight":F
    .restart local v10    # "imageItselfWidth":F
    .restart local v11    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .local v27, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :cond_12
    move/from16 v30, v9

    move-object/from16 v32, v11

    move-object/from16 v31, v27

    move/from16 v27, v10

    .line 201
    .end local v9    # "imageItselfHeight":F
    .end local v10    # "imageItselfWidth":F
    .end local v11    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .local v27, "imageItselfWidth":F
    .restart local v30    # "imageItselfHeight":F
    .restart local v31    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v32    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    :goto_c
    const/16 v29, 0x1

    .line 210
    :goto_d
    iget-object v7, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    iget-object v8, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 211
    const/4 v7, 0x3

    aget-object v8, v2, v7

    if-eqz v8, :cond_13

    .line 212
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    aget-object v9, v2, v7

    invoke-virtual {v9}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v9

    mul-float/2addr v8, v9

    .line 213
    .local v8, "delta":F
    iget v9, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->renderedImageHeight:F

    iget-object v10, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    div-float/2addr v9, v10

    .line 214
    .local v9, "renderScaling":F
    iget-object v10, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iput-object v10, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    .line 215
    iget v10, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->renderedImageHeight:F

    mul-float v11, v8, v9

    add-float/2addr v10, v11

    iput v10, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->renderedImageHeight:F

    .line 217
    .end local v8    # "delta":F
    .end local v9    # "renderScaling":F
    :cond_13
    iget-object v8, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    iget-object v9, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 218
    iget-object v8, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    iget-object v9, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 220
    const/16 v8, 0x2c

    invoke-virtual {v12, v8}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v9

    .line 221
    .local v9, "leftMargin":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v9}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v10

    const-string v11, "Property {0} in percents is not supported"

    if-nez v10, :cond_14

    .line 222
    invoke-static {v6}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v10

    .line 223
    .local v10, "logger":Lorg/slf4j/Logger;
    move-object/from16 v34, v14

    const/4 v7, 0x1

    .end local v14    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v34, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    new-array v14, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v14, v8

    invoke-static {v11, v14}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_e

    .line 221
    .end local v10    # "logger":Lorg/slf4j/Logger;
    .end local v34    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v14    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_14
    move-object/from16 v34, v14

    .line 225
    .end local v14    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v34    # "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    :goto_e
    const/16 v7, 0x2e

    invoke-virtual {v12, v7}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v8

    .line 226
    .local v8, "topMargin":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v8}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v10

    if-nez v10, :cond_15

    .line 227
    invoke-static {v6}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v6

    .line 228
    .local v6, "logger":Lorg/slf4j/Logger;
    const/4 v10, 0x1

    new-array v14, v10, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v14, v10

    invoke-static {v11, v14}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 231
    .end local v6    # "logger":Lorg/slf4j/Logger;
    :cond_15
    invoke-virtual {v9}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v7, v6

    if-nez v6, :cond_16

    invoke-virtual {v8}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v6

    cmpl-float v6, v7, v6

    if-eqz v6, :cond_17

    .line 232
    :cond_16
    invoke-virtual {v9}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v6

    invoke-virtual {v8}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v7

    invoke-direct {v12, v6, v7, v15}, Lcom/itextpdf/layout/renderer/ImageRenderer;->translateImage(FFLcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 233
    invoke-direct {v12, v15, v1, v3}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;FF)V

    .line 236
    :cond_17
    iget-object v6, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v12, v6, v2, v7}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 237
    iget-object v6, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v12, v6, v7}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 239
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v10, 0x0

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_18

    .line 240
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-direct {v12, v6}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyRotationLayout(F)V

    .line 243
    :cond_18
    iget-object v6, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    div-float/2addr v6, v5

    .line 244
    .local v6, "unscaledWidth":F
    new-instance v10, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    const/4 v11, 0x0

    invoke-direct {v10, v6, v6, v11}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>(FFF)V

    .line 245
    .local v10, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    const/16 v11, 0x4d

    invoke-virtual {v12, v11}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/layout/property/UnitValue;

    .line 247
    .local v11, "rendererWidth":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v11, :cond_19

    invoke-virtual {v11}, Lcom/itextpdf/layout/property/UnitValue;->isPercentValue()Z

    move-result v14

    if-eqz v14, :cond_19

    .line 248
    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    .line 249
    iget v7, v12, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    invoke-virtual {v13}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v14

    invoke-virtual {v14}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v14

    invoke-virtual {v12, v14}, Lcom/itextpdf/layout/renderer/ImageRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    div-float/2addr v7, v14

    .line 250
    .local v7, "coeff":F
    mul-float v14, v6, v7

    invoke-virtual {v10, v14}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    .line 251
    .end local v7    # "coeff":F
    move/from16 v22, v1

    goto :goto_12

    .line 252
    :cond_19
    const/4 v14, 0x3

    invoke-virtual {v12, v14}, Lcom/itextpdf/layout/renderer/ImageRenderer;->hasProperty(I)Z

    move-result v22

    if-eqz v22, :cond_1a

    invoke-virtual {v12, v14}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_1a

    move v14, v7

    goto :goto_f

    :cond_1a
    const/4 v14, 0x0

    .line 253
    .local v14, "autoScale":Z
    :goto_f
    const/4 v7, 0x5

    invoke-virtual {v12, v7}, Lcom/itextpdf/layout/renderer/ImageRenderer;->hasProperty(I)Z

    move-result v33

    if-eqz v33, :cond_1b

    invoke-virtual {v12, v7}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1b

    const/16 v22, 0x1

    goto :goto_10

    :cond_1b
    const/16 v22, 0x0

    :goto_10
    move/from16 v7, v22

    .line 254
    .local v7, "autoScaleWidth":Z
    if-nez v14, :cond_1d

    if-eqz v7, :cond_1c

    goto :goto_11

    :cond_1c
    move/from16 v22, v1

    goto :goto_12

    .line 255
    :cond_1d
    :goto_11
    move/from16 v22, v1

    const/4 v1, 0x0

    .end local v1    # "imageContainerWidth":F
    .local v22, "imageContainerWidth":F
    invoke-virtual {v10, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    .line 259
    .end local v7    # "autoScaleWidth":Z
    .end local v14    # "autoScale":Z
    :goto_12
    move-object/from16 v1, v31

    .end local v31    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v1, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-static {v1, v12}, Lcom/itextpdf/layout/renderer/FloatingHelper;->removeFloatsAboveRendererBottom(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    const/4 v14, 0x0

    invoke-static {v12, v1, v7, v0, v14}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v7

    .line 262
    .local v7, "editedArea":Lcom/itextpdf/layout/layout/LayoutArea;
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyAbsolutePositionIfNeeded(Lcom/itextpdf/layout/layout/LayoutContext;)V

    .line 264
    new-instance v14, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    const/16 v36, 0x1

    const/16 v38, 0x0

    const/16 v39, 0x0

    if-eqz v29, :cond_1e

    move-object/from16 v40, v12

    goto :goto_13

    :cond_1e
    const/16 v40, 0x0

    :goto_13
    move-object/from16 v35, v14

    move-object/from16 v37, v7

    invoke-direct/range {v35 .. v40}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 265
    invoke-virtual {v14, v10}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->setMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    move-result-object v14

    .line 264
    return-object v14
.end method

.method public move(FF)V
    .locals 1
    .param p1, "dxRight"    # F
    .param p2, "dyUp"    # F

    .line 400
    invoke-super {p0, p1, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->move(FF)V

    .line 401
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 403
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 409
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    .line 411
    :cond_2
    return-void
.end method
