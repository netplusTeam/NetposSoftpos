.class public Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;
.super Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;
.source "EllipticalCurveTo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;
    }
.end annotation


# static fields
.field static final ARGUMENT_SIZE:I = 0x7

.field private static final EPS:D = 1.0E-5


# instance fields
.field private startPoint:Lcom/itextpdf/kernel/geom/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;-><init>(Z)V

    .line 78
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "relative"    # Z

    .line 86
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;-><init>(Z)V

    .line 87
    return-void
.end method

.method private anglesAreEquals(DD)Z
    .locals 4
    .param p1, "angle1"    # D
    .param p3, "angle2"    # D

    .line 650
    sub-double v0, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static drawCurve(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)V
    .locals 16
    .param p0, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p1, "cp1"    # Lcom/itextpdf/kernel/geom/Point;
    .param p2, "cp2"    # Lcom/itextpdf/kernel/geom/Point;
    .param p3, "end"    # Lcom/itextpdf/kernel/geom/Point;

    .line 207
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-wide v4, v0, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v6, v0, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v8, v1, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v10, v1, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v12, v2, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v14, v2, Lcom/itextpdf/kernel/geom/Point;->y:D

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 208
    return-void
.end method

.method private getAngleBetweenVectors(DD)D
    .locals 6
    .param p1, "bx"    # D
    .param p3, "by"    # D

    .line 646
    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    mul-double v2, p1, p1

    mul-double v4, p3, p3

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    rem-double/2addr v0, v2

    return-wide v0
.end method

.method private getCoordinate(I)D
    .locals 2
    .param p1, "index"    # I

    .line 386
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private getEllipseCenterCoordinates(DDDDDZZDD)[D
    .locals 24
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "rx"    # D
    .param p7, "ry"    # D
    .param p9, "phi"    # D
    .param p11, "largeArc"    # Z
    .param p12, "sweep"    # Z
    .param p13, "x2"    # D
    .param p15, "y2"    # D

    .line 511
    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sub-double v2, p1, p13

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    sub-double v6, p3, p15

    mul-double/2addr v4, v6

    div-double/2addr v4, v2

    add-double/2addr v0, v4

    .line 512
    .local v0, "x1Prime":D
    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    neg-double v4, v4

    sub-double v6, p1, p13

    mul-double/2addr v4, v6

    div-double/2addr v4, v2

    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    sub-double v8, p3, p15

    mul-double/2addr v6, v8

    div-double/2addr v6, v2

    add-double/2addr v4, v6

    .line 513
    .local v4, "y1Prime":D
    mul-double v6, p5, p5

    mul-double v6, v6, p7

    mul-double v6, v6, p7

    mul-double v8, p5, p5

    mul-double/2addr v8, v4

    mul-double/2addr v8, v4

    sub-double/2addr v6, v8

    mul-double v8, p7, p7

    mul-double/2addr v8, v0

    mul-double/2addr v8, v0

    sub-double/2addr v6, v8

    .line 514
    .local v6, "radicant":D
    mul-double v8, p5, p5

    mul-double/2addr v8, v4

    mul-double/2addr v8, v4

    mul-double v10, p7, p7

    mul-double/2addr v10, v0

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    div-double/2addr v6, v8

    .line 516
    const-wide/16 v8, 0x0

    .line 517
    .local v8, "cxPrime":D
    const-wide/16 v10, 0x0

    .line 518
    .local v10, "cyPrime":D
    const-wide/16 v12, 0x0

    cmpg-double v14, v6, v12

    if-gez v14, :cond_1

    .line 519
    div-double v14, p5, p7

    .line 520
    .local v14, "ratio":D
    mul-double v16, v4, v4

    mul-double v18, v0, v0

    mul-double v20, v14, v14

    div-double v18, v18, v20

    add-double v6, v16, v18

    .line 521
    cmpg-double v12, v6, v12

    if-gez v12, :cond_0

    .line 522
    const/4 v2, 0x0

    return-object v2

    .line 524
    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 525
    .end local p7    # "ry":D
    .local v12, "ry":D
    mul-double/2addr v14, v12

    .line 526
    .end local p5    # "rx":D
    .local v14, "rx":D
    move-wide v2, v12

    move/from16 v12, p11

    move/from16 v13, p12

    goto :goto_1

    .line 527
    .end local v12    # "ry":D
    .end local v14    # "rx":D
    .restart local p5    # "rx":D
    .restart local p7    # "ry":D
    :cond_1
    move/from16 v12, p11

    move/from16 v13, p12

    if-ne v12, v13, :cond_2

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_2
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    .line 528
    .local v14, "factor":D
    mul-double v16, v14, p5

    mul-double v16, v16, v4

    div-double v8, v16, p7

    .line 529
    neg-double v2, v14

    mul-double v2, v2, p7

    mul-double/2addr v2, v0

    div-double v10, v2, p5

    move-wide/from16 v14, p5

    move-wide/from16 v2, p7

    .line 532
    .end local p5    # "rx":D
    .end local p7    # "ry":D
    .local v2, "ry":D
    .local v14, "rx":D
    :goto_1
    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v8

    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v20, v20, v10

    sub-double v18, v18, v20

    add-double v20, p1, p13

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v20, v20, v16

    add-double v18, v18, v20

    .line 533
    .local v18, "cx":D
    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v20, v20, v8

    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v22, v22, v10

    add-double v20, v20, v22

    add-double v22, p3, p15

    div-double v22, v22, v16

    add-double v20, v20, v22

    .line 535
    .local v20, "cy":D
    move-wide/from16 v16, v0

    .end local v0    # "x1Prime":D
    .local v16, "x1Prime":D
    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide v18, v0, v1

    const/4 v1, 0x1

    aput-wide v20, v0, v1

    const/4 v1, 0x2

    aput-wide v14, v0, v1

    const/4 v1, 0x3

    aput-wide v2, v0, v1

    return-object v0
.end method

.method private getEllipticalArcMinMaxPoints(DDDDDZZDD)[D
    .locals 51
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "rx"    # D
    .param p7, "ry"    # D
    .param p9, "phi"    # D
    .param p11, "largeArc"    # Z
    .param p12, "sweep"    # Z
    .param p13, "x2"    # D
    .param p15, "y2"    # D

    .line 422
    move-object/from16 v15, p0

    move-wide/from16 v13, p1

    move-wide/from16 v11, p3

    move-wide/from16 v9, p13

    move-wide/from16 v7, p15

    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v17

    .line 423
    .end local p9    # "phi":D
    .local v17, "phi":D
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    .line 424
    .end local p5    # "rx":D
    .local v19, "rx":D
    invoke-static/range {p7 .. p8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    .line 426
    .end local p7    # "ry":D
    .local v21, "ry":D
    const-wide/16 v0, 0x0

    cmpl-double v2, v19, v0

    const/4 v5, 0x4

    const/16 v23, 0x3

    const/16 v24, 0x2

    const/16 v25, 0x1

    const/16 v26, 0x0

    if-eqz v2, :cond_9

    cmpl-double v0, v21, v0

    if-nez v0, :cond_0

    move v0, v5

    move-wide/from16 v49, v11

    move-wide v10, v13

    move-wide v14, v7

    move-wide/from16 v8, v49

    goto/16 :goto_4

    .line 430
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, v19

    move-wide/from16 v7, v21

    move-wide/from16 v9, v17

    move/from16 v11, p11

    move/from16 v12, p12

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    invoke-direct/range {v0 .. v16}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getEllipseCenterCoordinates(DDDDDZZDD)[D

    move-result-object v11

    .line 432
    .local v11, "centerCoordinatesAndRxRy":[D
    if-nez v11, :cond_1

    .line 433
    const/4 v12, 0x4

    new-array v0, v12, [D

    move-wide/from16 v13, p1

    move-wide/from16 v9, p13

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    aput-wide v1, v0, v26

    move-wide/from16 v7, p3

    move-wide/from16 v5, p15

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    aput-wide v1, v0, v25

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    aput-wide v1, v0, v24

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    aput-wide v1, v0, v23

    return-object v0

    .line 435
    :cond_1
    move-wide/from16 v13, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p13

    move-wide/from16 v5, p15

    const/4 v12, 0x4

    aget-wide v15, v11, v26

    .line 436
    .local v15, "cx":D
    aget-wide v27, v11, v25

    .line 438
    .local v27, "cy":D
    aget-wide v19, v11, v24

    .line 439
    aget-wide v21, v11, v23

    .line 441
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    move-wide/from16 v3, v21

    move-wide/from16 v5, v17

    move-wide v7, v15

    move-wide/from16 v9, v27

    invoke-direct/range {v0 .. v10}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getExtremeCoordinatesAndAngles(DDDDD)[[D

    move-result-object v8

    .line 442
    .local v8, "extremeCoordinatesAndThetas":[[D
    aget-object v9, v8, v26

    .line 443
    .local v9, "extremeCoordinates":[D
    aget-object v10, v8, v25

    .line 444
    .local v10, "angles":[D
    aget-wide v29, v9, v26

    .line 445
    .local v29, "xMin":D
    aget-wide v31, v9, v25

    .line 446
    .local v31, "yMin":D
    aget-wide v33, v9, v24

    .line 447
    .local v33, "xMax":D
    aget-wide v35, v9, v23

    .line 448
    .local v35, "yMax":D
    aget-wide v37, v10, v26

    .line 449
    .local v37, "xMinAngle":D
    aget-wide v39, v10, v25

    .line 450
    .local v39, "yMinAngle":D
    aget-wide v41, v10, v24

    .line 451
    .local v41, "xMaxAngle":D
    aget-wide v43, v10, v23

    .line 454
    .local v43, "yMaxAngle":D
    sub-double v0, v13, v15

    move-wide/from16 v5, p3

    sub-double v2, v5, v27

    move-object/from16 v7, p0

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v0

    .line 455
    .local v0, "angle1":D
    move-wide/from16 v3, p13

    sub-double v12, v3, v15

    move-wide/from16 p5, v15

    move-wide/from16 v14, p15

    .end local v15    # "cx":D
    .local p5, "cx":D
    sub-double v2, v14, v27

    invoke-direct {v7, v12, v13, v2, v3}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v2

    .line 459
    .local v2, "angle2":D
    if-nez p12, :cond_2

    .line 460
    move-wide v12, v0

    .line 461
    .local v12, "temp":D
    move-wide v0, v2

    .line 462
    move-wide v2, v12

    .line 469
    .end local v12    # "temp":D
    :cond_2
    cmpl-double v4, v0, v2

    if-lez v4, :cond_3

    move/from16 v4, v25

    goto :goto_0

    :cond_3
    move/from16 v4, v26

    :goto_0
    move v12, v4

    .line 470
    .local v12, "otherArc":Z
    if-eqz v12, :cond_4

    .line 471
    move-wide/from16 v45, v0

    .line 472
    .local v45, "temp":D
    move-wide v0, v2

    .line 473
    move-wide/from16 v2, v45

    move-wide/from16 v45, v0

    move-wide/from16 v47, v2

    goto :goto_1

    .line 470
    .end local v45    # "temp":D
    :cond_4
    move-wide/from16 v45, v0

    move-wide/from16 v47, v2

    .line 478
    .end local v0    # "angle1":D
    .end local v2    # "angle2":D
    .local v45, "angle1":D
    .local v47, "angle2":D
    :goto_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v37

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-wide/from16 v8, p13

    .end local v8    # "extremeCoordinatesAndThetas":[[D
    .end local v9    # "extremeCoordinates":[D
    .local p8, "extremeCoordinatesAndThetas":[[D
    .local p9, "extremeCoordinates":[D
    move-wide/from16 v3, v45

    move-object v13, v10

    move-object/from16 p10, v11

    move-wide v10, v5

    .end local v10    # "angles":[D
    .end local v11    # "centerCoordinatesAndRxRy":[D
    .local v13, "angles":[D
    .local p10, "centerCoordinatesAndRxRy":[D
    move-wide/from16 v5, v47

    move v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->isPointOnTheArc(DDDZ)Z

    move-result v0

    if-nez v0, :cond_5

    .line 479
    move-wide/from16 v5, p1

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v29

    goto :goto_2

    .line 478
    :cond_5
    move-wide/from16 v5, p1

    .line 481
    :goto_2
    move-object/from16 v0, p0

    move-wide/from16 v1, v41

    move-wide/from16 v3, v45

    move-wide v10, v5

    move-wide/from16 v5, v47

    move v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->isPointOnTheArc(DDDZ)Z

    move-result v0

    if-nez v0, :cond_6

    .line 482
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v33

    .line 484
    :cond_6
    move-object/from16 v0, p0

    move-wide/from16 v1, v39

    move-wide/from16 v3, v45

    move-wide/from16 v5, v47

    move v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->isPointOnTheArc(DDDZ)Z

    move-result v0

    if-nez v0, :cond_7

    .line 485
    move-wide/from16 v5, p3

    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v31

    goto :goto_3

    .line 484
    :cond_7
    move-wide/from16 v5, p3

    .line 487
    :goto_3
    move-object/from16 v0, p0

    move-wide/from16 v1, v43

    move-wide/from16 v3, v45

    move-wide v8, v5

    move-wide/from16 v5, v47

    move v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->isPointOnTheArc(DDDZ)Z

    move-result v0

    if-nez v0, :cond_8

    .line 488
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v35

    .line 490
    :cond_8
    const/4 v0, 0x4

    new-array v0, v0, [D

    aput-wide v29, v0, v26

    aput-wide v31, v0, v25

    aput-wide v33, v0, v24

    aput-wide v35, v0, v23

    return-object v0

    .line 426
    .end local v12    # "otherArc":Z
    .end local v13    # "angles":[D
    .end local v27    # "cy":D
    .end local v29    # "xMin":D
    .end local v31    # "yMin":D
    .end local v33    # "xMax":D
    .end local v35    # "yMax":D
    .end local v37    # "xMinAngle":D
    .end local v39    # "yMinAngle":D
    .end local v41    # "xMaxAngle":D
    .end local v43    # "yMaxAngle":D
    .end local v45    # "angle1":D
    .end local v47    # "angle2":D
    .end local p5    # "cx":D
    .end local p8    # "extremeCoordinatesAndThetas":[[D
    .end local p9    # "extremeCoordinates":[D
    .end local p10    # "centerCoordinatesAndRxRy":[D
    :cond_9
    move v0, v5

    move-wide/from16 v49, v11

    move-wide v10, v13

    move-wide v14, v7

    move-wide/from16 v8, v49

    .line 427
    :goto_4
    new-array v0, v0, [D

    move-wide/from16 v3, p13

    move-wide v1, v8

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    aput-wide v5, v0, v26

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    aput-wide v5, v0, v25

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    aput-wide v5, v0, v24

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    aput-wide v5, v0, v23

    return-object v0
.end method

.method private getExtremeCoordinatesAndAngles(DDDDD)[[D
    .locals 37
    .param p1, "rx"    # D
    .param p3, "ry"    # D
    .param p5, "phi"    # D
    .param p7, "cx"    # D
    .param p9, "cy"    # D

    .line 552
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    const-wide/16 v7, 0x0

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->anglesAreEquals(DD)Z

    move-result v9

    if-nez v9, :cond_5

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    invoke-direct {v0, v5, v6, v9, v10}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->anglesAreEquals(DD)Z

    move-result v11

    if-eqz v11, :cond_0

    goto/16 :goto_1

    .line 561
    :cond_0
    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-direct {v0, v5, v6, v11, v12}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->anglesAreEquals(DD)Z

    move-result v11

    if-nez v11, :cond_4

    const-wide v11, 0x4012d97c7f3321d2L    # 4.71238898038469

    invoke-direct {v0, v5, v6, v11, v12}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->anglesAreEquals(DD)Z

    move-result v11

    if-eqz v11, :cond_1

    goto/16 :goto_0

    .line 572
    :cond_1
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    div-double/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    neg-double v7, v7

    .line 573
    .local v7, "txMin":D
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    mul-double/2addr v11, v3

    div-double/2addr v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    sub-double v11, v9, v11

    .line 575
    .local v11, "txMax":D
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v1

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    add-double v13, p7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    sub-double/2addr v13, v15

    .line 576
    .local v13, "xMin":D
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v1

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    add-double v15, p7, v15

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v17, v17, v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    sub-double v15, v15, v17

    .line 577
    .local v15, "xMax":D
    cmpl-double v17, v13, v15

    if-lez v17, :cond_2

    .line 578
    move-wide/from16 v17, v13

    .line 579
    .local v17, "temp":D
    move-wide v13, v15

    .line 580
    move-wide/from16 v15, v17

    .line 581
    move-wide/from16 v17, v7

    .line 582
    move-wide v7, v11

    .line 583
    move-wide/from16 v11, v17

    .line 586
    .end local v17    # "temp":D
    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v1

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    add-double v17, p9, v17

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v19, v19, v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    add-double v17, v17, v19

    .line 587
    .local v17, "tempY":D
    sub-double v9, v13, p7

    sub-double v5, v17, p9

    invoke-direct {v0, v9, v10, v5, v6}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v5

    .line 588
    .local v5, "xMinAngle":D
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v1

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v9, v9, v21

    add-double v9, p9, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v21, v21, v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    add-double v9, v9, v21

    .line 589
    .end local v17    # "tempY":D
    .local v9, "tempY":D
    move-wide/from16 v17, v5

    .end local v5    # "xMinAngle":D
    .local v17, "xMinAngle":D
    sub-double v5, v15, p7

    move-wide/from16 v21, v7

    .end local v7    # "txMin":D
    .local v21, "txMin":D
    sub-double v7, v9, p9

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v5

    .line 592
    .local v5, "xMaxAngle":D
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    mul-double/2addr v7, v1

    div-double v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    .line 593
    .local v7, "tyMin":D
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v23

    mul-double v23, v23, v1

    div-double v23, v3, v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->atan(D)D

    move-result-wide v23

    const-wide v19, 0x400921fb54442d18L    # Math.PI

    add-double v23, v23, v19

    .line 595
    .local v23, "tyMax":D
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v1

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    mul-double v19, v19, v25

    add-double v19, p9, v19

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    mul-double v25, v25, v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    mul-double v25, v25, v27

    add-double v19, v19, v25

    .line 596
    .local v19, "yMin":D
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v25, v25, v1

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v25, v25, v27

    add-double v25, p9, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v27, v27, v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    mul-double v27, v27, v29

    add-double v25, v25, v27

    .line 597
    .local v25, "yMax":D
    cmpl-double v27, v19, v25

    if-lez v27, :cond_3

    .line 598
    move-wide/from16 v27, v19

    .line 599
    .local v27, "temp":D
    move-wide/from16 v19, v25

    .line 600
    move-wide/from16 v25, v27

    .line 601
    move-wide/from16 v27, v7

    .line 602
    move-wide/from16 v7, v23

    .line 603
    move-wide/from16 v23, v27

    .line 606
    .end local v27    # "temp":D
    :cond_3
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    mul-double v27, v27, v1

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    mul-double v27, v27, v29

    add-double v27, p7, v27

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    mul-double v29, v29, v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    mul-double v29, v29, v31

    sub-double v27, v27, v29

    .line 607
    .local v27, "tmpX":D
    move-wide/from16 v29, v5

    .end local v5    # "xMaxAngle":D
    .local v29, "xMaxAngle":D
    sub-double v5, v27, p7

    move-wide/from16 v31, v7

    .end local v7    # "tyMin":D
    .local v31, "tyMin":D
    sub-double v7, v19, p9

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v5

    .line 608
    .local v5, "yMinAngle":D
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v1

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v33

    mul-double v7, v7, v33

    add-double v7, p7, v7

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    mul-double v33, v33, v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v35

    mul-double v33, v33, v35

    sub-double v7, v7, v33

    .line 609
    .end local v27    # "tmpX":D
    .local v7, "tmpX":D
    move-wide/from16 v27, v5

    .end local v5    # "yMinAngle":D
    .local v27, "yMinAngle":D
    sub-double v5, v7, p7

    move-wide/from16 v33, v7

    .end local v7    # "tmpX":D
    .local v33, "tmpX":D
    sub-double v7, v25, p9

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v5

    move-wide v7, v5

    move-wide/from16 v5, v17

    move-wide/from16 v11, v27

    move-wide/from16 v9, v29

    .local v5, "yMaxAngle":D
    goto :goto_2

    .line 562
    .end local v5    # "yMaxAngle":D
    .end local v9    # "tempY":D
    .end local v11    # "txMax":D
    .end local v13    # "xMin":D
    .end local v15    # "xMax":D
    .end local v17    # "xMinAngle":D
    .end local v19    # "yMin":D
    .end local v21    # "txMin":D
    .end local v23    # "tyMax":D
    .end local v25    # "yMax":D
    .end local v27    # "yMinAngle":D
    .end local v29    # "xMaxAngle":D
    .end local v31    # "tyMin":D
    .end local v33    # "tmpX":D
    :cond_4
    :goto_0
    sub-double v13, p7, v3

    .line 563
    .restart local v13    # "xMin":D
    neg-double v5, v3

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v5

    .line 564
    .local v5, "xMinAngle":D
    add-double v15, p7, v3

    .line 565
    .restart local v15    # "xMax":D
    invoke-direct {v0, v3, v4, v7, v8}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v9

    .line 566
    .local v9, "xMaxAngle":D
    sub-double v19, p9, v1

    .line 567
    .restart local v19    # "yMin":D
    neg-double v11, v1

    invoke-direct {v0, v7, v8, v11, v12}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v11

    .line 568
    .local v11, "yMinAngle":D
    add-double v25, p9, v1

    .line 569
    .restart local v25    # "yMax":D
    invoke-direct {v0, v7, v8, v1, v2}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v7

    .local v7, "yMaxAngle":D
    goto :goto_2

    .line 553
    .end local v5    # "xMinAngle":D
    .end local v7    # "yMaxAngle":D
    .end local v9    # "xMaxAngle":D
    .end local v11    # "yMinAngle":D
    .end local v13    # "xMin":D
    .end local v15    # "xMax":D
    .end local v19    # "yMin":D
    .end local v25    # "yMax":D
    :cond_5
    :goto_1
    sub-double v13, p7, v1

    .line 554
    .restart local v13    # "xMin":D
    neg-double v5, v1

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v5

    .line 555
    .restart local v5    # "xMinAngle":D
    add-double v15, p7, v1

    .line 556
    .restart local v15    # "xMax":D
    invoke-direct {v0, v1, v2, v7, v8}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v9

    .line 557
    .restart local v9    # "xMaxAngle":D
    sub-double v19, p9, v3

    .line 558
    .restart local v19    # "yMin":D
    neg-double v11, v3

    invoke-direct {v0, v7, v8, v11, v12}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v11

    .line 559
    .restart local v11    # "yMinAngle":D
    add-double v25, p9, v3

    .line 560
    .restart local v25    # "yMax":D
    invoke-direct {v0, v7, v8, v3, v4}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v7

    .line 613
    .restart local v7    # "yMaxAngle":D
    :goto_2
    const/4 v0, 0x4

    new-array v1, v0, [D

    const/4 v2, 0x0

    aput-wide v13, v1, v2

    const/16 v17, 0x1

    aput-wide v19, v1, v17

    const/4 v2, 0x2

    aput-wide v15, v1, v2

    const/16 v21, 0x3

    aput-wide v25, v1, v21

    .line 615
    .local v1, "coordinates":[D
    new-array v0, v0, [D

    const/16 v18, 0x0

    aput-wide v5, v0, v18

    aput-wide v11, v0, v17

    aput-wide v9, v0, v2

    aput-wide v7, v0, v21

    .line 616
    .local v0, "angles":[D
    new-array v2, v2, [[D

    aput-object v1, v2, v18

    aput-object v0, v2, v17

    return-object v2
.end method

.method private isPointOnTheArc(DDDZ)Z
    .locals 3
    .param p1, "pointAngle"    # D
    .param p3, "angle1"    # D
    .param p5, "angle2"    # D
    .param p7, "otherArc"    # Z

    .line 630
    cmpg-double v0, p3, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    cmpl-double v0, p5, p1

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 632
    .local v0, "isThetaBetweenAngles":Z
    :goto_0
    if-eq p7, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private makePoints(Ljava/util/List;)[[Lcom/itextpdf/kernel/geom/Point;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[D>;)[[",
            "Lcom/itextpdf/kernel/geom/Point;"
        }
    .end annotation

    .line 211
    .local p1, "input":Ljava/util/List;, "Ljava/util/List<[D>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[Lcom/itextpdf/kernel/geom/Point;

    .line 212
    .local v0, "result":[[Lcom/itextpdf/kernel/geom/Point;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 213
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lcom/itextpdf/kernel/geom/Point;

    aput-object v2, v0, v1

    .line 214
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 215
    aget-object v3, v0, v1

    div-int/lit8 v4, v2, 0x2

    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    aget-wide v6, v6, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    add-int/lit8 v9, v2, 0x1

    aget-wide v8, v8, v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    aput-object v5, v3, v4

    .line 214
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 212
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method static rotate([[Lcom/itextpdf/kernel/geom/Point;DLcom/itextpdf/kernel/geom/Point;)[[Lcom/itextpdf/kernel/geom/Point;
    .locals 8
    .param p0, "list"    # [[Lcom/itextpdf/kernel/geom/Point;
    .param p1, "rotation"    # D
    .param p3, "rotator"    # Lcom/itextpdf/kernel/geom/Point;

    .line 184
    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(DD)Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    array-length v0, p0

    new-array v0, v0, [[Lcom/itextpdf/kernel/geom/Point;

    .line 186
    .local v0, "result":[[Lcom/itextpdf/kernel/geom/Point;
    iget-wide v3, p3, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v5, p3, Lcom/itextpdf/kernel/geom/Point;->y:D

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(DDD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    .line 188
    .local v1, "transRotTrans":Lcom/itextpdf/kernel/geom/AffineTransform;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 189
    aget-object v3, p0, v2

    .line 190
    .local v3, "input":[Lcom/itextpdf/kernel/geom/Point;
    array-length v4, v3

    new-array v4, v4, [Lcom/itextpdf/kernel/geom/Point;

    .line 192
    .local v4, "row":[Lcom/itextpdf/kernel/geom/Point;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 193
    aget-object v6, v3, v5

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v6

    aput-object v6, v4, v5

    .line 192
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 195
    .end local v5    # "j":I
    :cond_0
    aput-object v4, v0, v2

    .line 188
    .end local v3    # "input":[Lcom/itextpdf/kernel/geom/Point;
    .end local v4    # "row":[Lcom/itextpdf/kernel/geom/Point;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v2    # "i":I
    :cond_1
    return-object v0

    .line 199
    .end local v0    # "result":[[Lcom/itextpdf/kernel/geom/Point;
    .end local v1    # "transRotTrans":Lcom/itextpdf/kernel/geom/AffineTransform;
    :cond_2
    return-object p0
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 40
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 110
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    iget-object v3, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    iget-wide v3, v3, Lcom/itextpdf/kernel/geom/Point;->x:D

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v5

    iget-object v7, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    iget-wide v7, v7, Lcom/itextpdf/kernel/geom/Point;->y:D

    mul-double/2addr v7, v5

    invoke-direct {v2, v3, v4, v7, v8}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 111
    .local v2, "start":Lcom/itextpdf/kernel/geom/Point;
    iget-object v3, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v5, v3

    .line 112
    .local v5, "rx":D
    iget-object v3, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v3, v3, v7

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v13, v3

    .line 115
    .local v13, "ry":D
    iget-object v3, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v3, v3, v8

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    const-wide v11, 0x4076800000000000L    # 360.0

    rem-double/2addr v9, v11

    .line 117
    .local v9, "rotation":D
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .line 120
    .end local v9    # "rotation":D
    .local v11, "rotation":D
    iget-object v3, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    const/16 v25, 0x3

    aget-object v3, v3, v25

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v9, 0x0

    invoke-static {v3, v9}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result v3

    xor-int/lit8 v16, v3, 0x1

    .line 121
    .local v16, "largeArc":Z
    iget-object v3, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v10, 0x4

    aget-object v3, v3, v10

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3, v9}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result v3

    xor-int/2addr v3, v7

    .line 123
    .local v3, "sweep":Z
    new-instance v9, Lcom/itextpdf/kernel/geom/Point;

    iget-object v10, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v15, 0x5

    aget-object v10, v10, v15

    invoke-static {v10}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v10

    float-to-double v7, v10

    iget-object v10, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v15, 0x6

    aget-object v10, v10, v15

    invoke-static {v10}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v10

    move-wide/from16 v26, v5

    .end local v5    # "rx":D
    .local v26, "rx":D
    float-to-double v4, v10

    invoke-direct {v9, v7, v8, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    move-object v4, v9

    .line 125
    .local v4, "end":Lcom/itextpdf/kernel/geom/Point;
    iget-wide v5, v2, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v7, v4, Lcom/itextpdf/kernel/geom/Point;->x:D

    invoke-static {v5, v6, v7, v8}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(DD)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-wide v5, v2, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v7, v4, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-static {v5, v6, v7, v8}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(DD)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    const-wide/16 v5, 0x0

    move-wide/from16 v7, v26

    .end local v26    # "rx":D
    .local v7, "rx":D
    invoke-static {v7, v8, v5, v6}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(DD)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {v13, v14, v5, v6}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(DD)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v10, v1

    move-object/from16 v17, v2

    move-object/from16 v20, v4

    move-wide/from16 v18, v7

    move-wide v4, v11

    move-wide/from16 v26, v13

    goto/16 :goto_3

    .line 143
    :cond_1
    invoke-static {v11, v12, v5, v6}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(DD)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 144
    move-object v9, v2

    move-object v10, v4

    move-wide v5, v11

    .end local v11    # "rotation":D
    .local v5, "rotation":D
    move-wide v11, v7

    move-wide/from16 v26, v13

    .end local v13    # "ry":D
    .local v26, "ry":D
    move v15, v3

    invoke-static/range {v9 .. v16}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->getEllipse(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DDZZ)Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;

    move-result-object v9

    .local v9, "arc":Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;
    goto :goto_0

    .line 146
    .end local v5    # "rotation":D
    .end local v9    # "arc":Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;
    .end local v26    # "ry":D
    .restart local v11    # "rotation":D
    .restart local v13    # "ry":D
    :cond_2
    move-wide v5, v11

    move-wide/from16 v26, v13

    .end local v11    # "rotation":D
    .end local v13    # "ry":D
    .restart local v5    # "rotation":D
    .restart local v26    # "ry":D
    neg-double v9, v5

    invoke-static {v9, v10}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(D)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v9

    .line 147
    .local v9, "normalizer":Lcom/itextpdf/kernel/geom/AffineTransform;
    iget-wide v10, v2, Lcom/itextpdf/kernel/geom/Point;->x:D

    neg-double v10, v10

    iget-wide v12, v2, Lcom/itextpdf/kernel/geom/Point;->y:D

    neg-double v12, v12

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    .line 148
    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v10

    .line 149
    .local v10, "newArcEnd":Lcom/itextpdf/kernel/geom/Point;
    iget-wide v11, v2, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v13, v2, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/itextpdf/kernel/geom/Point;->translate(DD)V

    .line 150
    move-object/from16 v17, v2

    move-object/from16 v18, v10

    move-wide/from16 v19, v7

    move-wide/from16 v21, v26

    move/from16 v23, v3

    move/from16 v24, v16

    invoke-static/range {v17 .. v24}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->getEllipse(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DDZZ)Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;

    move-result-object v11

    move-object v9, v11

    .line 152
    .end local v10    # "newArcEnd":Lcom/itextpdf/kernel/geom/Point;
    .local v9, "arc":Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;
    :goto_0
    iget-object v10, v9, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->ll:Lcom/itextpdf/kernel/geom/Point;

    iget-wide v10, v10, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-object v12, v9, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->ll:Lcom/itextpdf/kernel/geom/Point;

    iget-wide v12, v12, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-object v14, v9, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->ur:Lcom/itextpdf/kernel/geom/Point;

    iget-wide v14, v14, Lcom/itextpdf/kernel/geom/Point;->x:D

    move-object/from16 v17, v2

    .end local v2    # "start":Lcom/itextpdf/kernel/geom/Point;
    .local v17, "start":Lcom/itextpdf/kernel/geom/Point;
    iget-object v2, v9, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->ur:Lcom/itextpdf/kernel/geom/Point;

    move-wide/from16 v18, v7

    .end local v7    # "rx":D
    .local v18, "rx":D
    iget-wide v7, v2, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v1, v9, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->startAng:D

    move-object/from16 v20, v4

    move-wide/from16 v21, v5

    .end local v4    # "end":Lcom/itextpdf/kernel/geom/Point;
    .end local v5    # "rotation":D
    .local v20, "end":Lcom/itextpdf/kernel/geom/Point;
    .local v21, "rotation":D
    iget-wide v4, v9, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->extent:D

    move-wide/from16 v28, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-wide/from16 v34, v7

    move-wide/from16 v36, v1

    move-wide/from16 v38, v4

    invoke-static/range {v28 .. v39}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->bezierArc(DDDDDD)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->makePoints(Ljava/util/List;)[[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    .line 161
    .local v1, "points":[[Lcom/itextpdf/kernel/geom/Point;
    if-eqz v3, :cond_4

    .line 162
    const/4 v2, 0x0

    aget-object v4, v1, v2

    aget-object v2, v4, v2

    move-wide/from16 v4, v21

    .end local v21    # "rotation":D
    .local v4, "rotation":D
    invoke-static {v1, v4, v5, v2}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->rotate([[Lcom/itextpdf/kernel/geom/Point;DLcom/itextpdf/kernel/geom/Point;)[[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    .line 163
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_3

    .line 164
    aget-object v6, v1, v2

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aget-object v7, v1, v2

    const/4 v8, 0x2

    aget-object v7, v7, v8

    aget-object v8, v1, v2

    aget-object v8, v8, v25

    move-object/from16 v10, p1

    invoke-static {v10, v6, v7, v8}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->drawCurve(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)V

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v10, p1

    move-object/from16 v1, v20

    .end local v2    # "i":I
    goto :goto_4

    .line 167
    .end local v4    # "rotation":D
    .restart local v21    # "rotation":D
    :cond_4
    move-object/from16 v10, p1

    move-wide/from16 v4, v21

    .end local v21    # "rotation":D
    .restart local v4    # "rotation":D
    array-length v2, v1

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    aget-object v2, v1, v2

    aget-object v2, v2, v25

    invoke-static {v1, v4, v5, v2}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->rotate([[Lcom/itextpdf/kernel/geom/Point;DLcom/itextpdf/kernel/geom/Point;)[[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    .line 168
    array-length v2, v1

    sub-int/2addr v2, v6

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_5

    .line 169
    aget-object v7, v1, v2

    const/4 v8, 0x2

    aget-object v7, v7, v8

    aget-object v11, v1, v2

    aget-object v11, v11, v6

    aget-object v12, v1, v2

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-static {v10, v7, v11, v12}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->drawCurve(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)V

    .line 168
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    move-object/from16 v1, v20

    goto :goto_4

    .line 131
    .end local v1    # "points":[[Lcom/itextpdf/kernel/geom/Point;
    .end local v9    # "arc":Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;
    .end local v17    # "start":Lcom/itextpdf/kernel/geom/Point;
    .end local v18    # "rx":D
    .end local v20    # "end":Lcom/itextpdf/kernel/geom/Point;
    .end local v26    # "ry":D
    .local v2, "start":Lcom/itextpdf/kernel/geom/Point;
    .local v4, "end":Lcom/itextpdf/kernel/geom/Point;
    .restart local v7    # "rx":D
    .restart local v11    # "rotation":D
    .restart local v13    # "ry":D
    :cond_6
    move-object v10, v1

    move-object/from16 v17, v2

    move-object/from16 v20, v4

    move-wide/from16 v18, v7

    move-wide v4, v11

    move-wide/from16 v26, v13

    .line 135
    .end local v2    # "start":Lcom/itextpdf/kernel/geom/Point;
    .end local v7    # "rx":D
    .end local v11    # "rotation":D
    .end local v13    # "ry":D
    .local v4, "rotation":D
    .restart local v17    # "start":Lcom/itextpdf/kernel/geom/Point;
    .restart local v18    # "rx":D
    .restart local v20    # "end":Lcom/itextpdf/kernel/geom/Point;
    .restart local v26    # "ry":D
    :goto_3
    move-object/from16 v1, v20

    .end local v20    # "end":Lcom/itextpdf/kernel/geom/Point;
    .local v1, "end":Lcom/itextpdf/kernel/geom/Point;
    iget-wide v6, v1, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v8, v1, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v10, v6, v7, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 173
    :goto_4
    return-void
.end method

.method getCoordinates()[Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    return-object v0
.end method

.method public getPathShapeRectangle(Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 24
    .param p1, "lastPoint"    # Lcom/itextpdf/kernel/geom/Point;

    .line 374
    move-object/from16 v12, p0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v3

    .line 375
    const/4 v11, 0x0

    invoke-direct {v12, v11}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getCoordinate(I)D

    move-result-wide v5

    const/4 v9, 0x1

    invoke-direct {v12, v9}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getCoordinate(I)D

    move-result-wide v7

    const/4 v10, 0x2

    invoke-direct {v12, v10}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getCoordinate(I)D

    move-result-wide v17

    .line 376
    const/4 v0, 0x3

    invoke-direct {v12, v0}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getCoordinate(I)D

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-eqz v13, :cond_0

    move/from16 v19, v9

    goto :goto_0

    :cond_0
    move/from16 v19, v11

    :goto_0
    const/4 v13, 0x4

    invoke-direct {v12, v13}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getCoordinate(I)D

    move-result-wide v13

    cmpl-double v13, v13, v15

    if-eqz v13, :cond_1

    move/from16 v20, v9

    goto :goto_1

    :cond_1
    move/from16 v20, v11

    :goto_1
    const/4 v13, 0x5

    .line 377
    invoke-direct {v12, v13}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getCoordinate(I)D

    move-result-wide v13

    const/4 v15, 0x6

    invoke-direct {v12, v15}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getCoordinate(I)D

    move-result-wide v15

    .line 374
    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v23, v9

    move/from16 v22, v10

    move-wide/from16 v9, v17

    move/from16 v17, v11

    move/from16 v11, v19

    move/from16 v12, v20

    invoke-direct/range {v0 .. v16}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getEllipticalArcMinMaxPoints(DDDDDZZDD)[D

    move-result-object v0

    .line 378
    .local v0, "points":[D
    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    aget-wide v2, v0, v17

    invoke-static {v2, v3}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v2

    double-to-float v2, v2

    aget-wide v3, v0, v23

    .line 379
    invoke-static {v3, v4}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v3

    double-to-float v3, v3

    aget-wide v4, v0, v22

    aget-wide v6, v0, v17

    sub-double/2addr v4, v6

    .line 380
    invoke-static {v4, v5}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v4

    double-to-float v4, v4

    aget-wide v5, v0, v21

    aget-wide v7, v0, v23

    sub-double/2addr v5, v7

    .line 381
    invoke-static {v5, v6}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 378
    return-object v1
.end method

.method public setCoordinates([Ljava/lang/String;Lcom/itextpdf/kernel/geom/Point;)V
    .locals 8
    .param p1, "inputCoordinates"    # [Ljava/lang/String;
    .param p2, "previous"    # Lcom/itextpdf/kernel/geom/Point;

    .line 91
    iput-object p2, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    .line 92
    array-length v0, p1

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 95
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    const/4 v0, 0x2

    new-array v1, v0, [D

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    aput-wide v4, v1, v3

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 100
    .local v1, "initialPoint":[D
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->isRelative()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v5, p1, v4

    aput-object v5, v0, v3

    const/4 v5, 0x6

    aget-object v6, p1, v5

    aput-object v6, v0, v2

    .line 102
    .local v0, "relativeEndPoint":[Ljava/lang/String;
    iget-object v6, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->copier:Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;

    invoke-interface {v6, v0, v1}, Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;->makeCoordinatesAbsolute([Ljava/lang/String;[D)[Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "absoluteEndPoint":[Ljava/lang/String;
    iget-object v7, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    aget-object v3, v6, v3

    aput-object v3, v7, v4

    .line 104
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    aget-object v2, v6, v2

    aput-object v2, v3, v5

    .line 106
    .end local v0    # "relativeEndPoint":[Ljava/lang/String;
    .end local v6    # "absoluteEndPoint":[Ljava/lang/String;
    :cond_0
    return-void

    .line 93
    .end local v1    # "initialPoint":[D
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "(rx ry rot largearc sweep x y)+ parameters are expected for elliptical arcs. Got: {0}"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
