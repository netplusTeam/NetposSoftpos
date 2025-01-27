.class Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;
.super Ljava/lang/Object;
.source "EllipticalCurveTo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EllipseArc"
.end annotation


# instance fields
.field final extent:D

.field final ll:Lcom/itextpdf/kernel/geom/Point;

.field final startAng:D

.field final ur:Lcom/itextpdf/kernel/geom/Point;


# direct methods
.method constructor <init>(Lcom/itextpdf/kernel/geom/Point;DDDD)V
    .locals 5
    .param p1, "center"    # Lcom/itextpdf/kernel/geom/Point;
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "startAng"    # D
    .param p8, "extent"    # D

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    iget-wide v1, p1, Lcom/itextpdf/kernel/geom/Point;->x:D

    sub-double/2addr v1, p2

    iget-wide v3, p1, Lcom/itextpdf/kernel/geom/Point;->y:D

    sub-double/2addr v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->ll:Lcom/itextpdf/kernel/geom/Point;

    .line 236
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    iget-wide v1, p1, Lcom/itextpdf/kernel/geom/Point;->x:D

    add-double/2addr v1, p2

    iget-wide v3, p1, Lcom/itextpdf/kernel/geom/Point;->y:D

    add-double/2addr v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->ur:Lcom/itextpdf/kernel/geom/Point;

    .line 237
    iput-wide p6, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->startAng:D

    .line 238
    iput-wide p8, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->extent:D

    .line 239
    return-void
.end method

.method static calculateAngle(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DD)D
    .locals 10
    .param p0, "pt"    # Lcom/itextpdf/kernel/geom/Point;
    .param p1, "center"    # Lcom/itextpdf/kernel/geom/Point;
    .param p2, "a"    # D
    .param p4, "b"    # D

    .line 350
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v2, p1, Lcom/itextpdf/kernel/geom/Point;->x:D

    sub-double/2addr v0, v2

    div-double/2addr v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-wide v4, p0, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v6, p1, Lcom/itextpdf/kernel/geom/Point;->y:D

    sub-double/2addr v4, v6

    div-double/2addr v4, p4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 352
    .local v0, "result":D
    iget-wide v2, p0, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v4, p1, Lcom/itextpdf/kernel/geom/Point;->x:D

    sub-double/2addr v2, v4

    div-double/2addr v2, p2

    .line 353
    .local v2, "cos":D
    iget-wide v4, p0, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v6, p1, Lcom/itextpdf/kernel/geom/Point;->y:D

    sub-double/2addr v4, v6

    div-double/2addr v4, p4

    .line 355
    .local v4, "sin":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 357
    const-wide/16 v6, 0x0

    cmpl-double v8, v2, v6

    if-ltz v8, :cond_0

    cmpl-double v8, v4, v6

    if-gez v8, :cond_1

    :cond_0
    cmpg-double v8, v2, v6

    if-gez v8, :cond_2

    cmpl-double v8, v4, v6

    if-ltz v8, :cond_2

    .line 358
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->toDegrees(D)D

    move-result-wide v0

    .line 360
    :cond_2
    cmpl-double v8, v2, v6

    if-ltz v8, :cond_3

    cmpg-double v8, v4, v6

    if-ltz v8, :cond_4

    :cond_3
    cmpg-double v8, v2, v6

    if-gez v8, :cond_5

    cmpg-double v6, v4, v6

    if-gez v6, :cond_5

    .line 361
    :cond_4
    const-wide v6, 0x4076800000000000L    # 360.0

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->toDegrees(D)D

    move-result-wide v8

    sub-double v0, v6, v8

    .line 363
    :cond_5
    return-wide v0
.end method

.method static calculatePossibleMiddle(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DDDZZ)Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;
    .locals 30
    .param p0, "start"    # Lcom/itextpdf/kernel/geom/Point;
    .param p1, "end"    # Lcom/itextpdf/kernel/geom/Point;
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "startToCenterAngle"    # D
    .param p8, "sweep"    # Z
    .param p9, "largeArc"    # Z

    .line 278
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-wide v0, v6, Lcom/itextpdf/kernel/geom/Point;->x:D

    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, p2

    sub-double v14, v0, v2

    .line 279
    .local v14, "x0":D
    iget-wide v0, v6, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, p4

    sub-double v12, v0, v2

    .line 280
    .local v12, "y0":D
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v0, v14, v15, v12, v13}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    move-object v10, v0

    .line 282
    .local v10, "center":Lcom/itextpdf/kernel/geom/Point;
    iget-wide v0, v7, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v2, v10, Lcom/itextpdf/kernel/geom/Point;->x:D

    sub-double/2addr v0, v2

    div-double v0, v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-wide v4, v7, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v8, v10, Lcom/itextpdf/kernel/geom/Point;->y:D

    sub-double/2addr v4, v8

    div-double v4, v4, p4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double v8, v0, v2

    .line 288
    .local v8, "check":D
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v0, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(DD)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 290
    move-object/from16 v0, p0

    move-object v1, v10

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->calculateAngle(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DD)D

    move-result-wide v18

    .line 291
    .local v18, "theta1":D
    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->calculateAngle(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DD)D

    move-result-wide v0

    .line 292
    .local v0, "theta2":D
    const-wide/16 v2, 0x0

    .line 293
    .local v2, "startAngl":D
    const-wide/16 v4, 0x0

    .line 296
    .local v4, "extent":D
    sub-double v16, v0, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v20

    .line 298
    .local v20, "deltaTheta":J
    const-wide v16, 0x4076800000000000L    # 360.0

    const-wide/16 v22, 0xb4

    if-eqz p9, :cond_3

    .line 299
    if-eqz p8, :cond_1

    .line 301
    cmpl-double v11, v0, v18

    if-lez v11, :cond_0

    cmp-long v11, v20, v22

    if-ltz v11, :cond_0

    .line 302
    move-wide/from16 v2, v18

    .line 303
    sub-double v4, v0, v18

    .line 305
    :cond_0
    cmpl-double v11, v18, v0

    if-lez v11, :cond_7

    cmp-long v11, v20, v22

    if-gtz v11, :cond_7

    .line 306
    move-wide/from16 v2, v18

    .line 307
    sub-double v16, v16, v18

    add-double v4, v16, v0

    goto :goto_0

    .line 310
    :cond_1
    cmpl-double v11, v0, v18

    if-lez v11, :cond_2

    cmp-long v11, v20, v22

    if-gtz v11, :cond_2

    .line 311
    move-wide v2, v0

    .line 312
    sub-double v16, v16, v0

    add-double v4, v16, v18

    .line 314
    :cond_2
    cmpl-double v11, v18, v0

    if-lez v11, :cond_7

    cmp-long v11, v20, v22

    if-ltz v11, :cond_7

    .line 315
    move-wide v2, v0

    .line 316
    sub-double v4, v18, v0

    goto :goto_0

    .line 320
    :cond_3
    if-eqz p8, :cond_5

    .line 321
    cmpl-double v11, v0, v18

    if-lez v11, :cond_4

    cmp-long v11, v20, v22

    if-gtz v11, :cond_4

    .line 322
    move-wide/from16 v2, v18

    .line 323
    sub-double v4, v0, v18

    .line 325
    :cond_4
    cmpl-double v11, v18, v0

    if-lez v11, :cond_7

    cmp-long v11, v20, v22

    if-ltz v11, :cond_7

    .line 326
    move-wide/from16 v2, v18

    .line 327
    sub-double v16, v16, v18

    add-double v4, v16, v0

    goto :goto_0

    .line 331
    :cond_5
    cmpl-double v11, v0, v18

    if-lez v11, :cond_6

    cmp-long v11, v20, v22

    if-ltz v11, :cond_6

    .line 332
    move-wide v2, v0

    .line 333
    sub-double v16, v16, v0

    add-double v4, v16, v18

    .line 335
    :cond_6
    cmpl-double v11, v18, v0

    if-lez v11, :cond_7

    cmp-long v11, v20, v22

    if-gtz v11, :cond_7

    .line 336
    move-wide v2, v0

    .line 337
    sub-double v4, v18, v0

    .line 342
    :cond_7
    :goto_0
    const-wide/16 v16, 0x0

    cmpl-double v11, v2, v16

    if-ltz v11, :cond_8

    cmpl-double v11, v4, v16

    if-lez v11, :cond_8

    .line 343
    new-instance v22, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;

    move-wide/from16 v23, v8

    .end local v8    # "check":D
    .local v23, "check":D
    move-object/from16 v8, v22

    move-object v9, v10

    move-object/from16 v25, v10

    .end local v10    # "center":Lcom/itextpdf/kernel/geom/Point;
    .local v25, "center":Lcom/itextpdf/kernel/geom/Point;
    move-wide/from16 v10, p2

    move-wide/from16 v26, v12

    .end local v12    # "y0":D
    .local v26, "y0":D
    move-wide/from16 v12, p4

    move-wide/from16 v28, v14

    .end local v14    # "x0":D
    .local v28, "x0":D
    move-wide v14, v2

    move-wide/from16 v16, v4

    invoke-direct/range {v8 .. v17}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;-><init>(Lcom/itextpdf/kernel/geom/Point;DDDD)V

    return-object v22

    .line 342
    .end local v23    # "check":D
    .end local v25    # "center":Lcom/itextpdf/kernel/geom/Point;
    .end local v26    # "y0":D
    .end local v28    # "x0":D
    .restart local v8    # "check":D
    .restart local v10    # "center":Lcom/itextpdf/kernel/geom/Point;
    .restart local v12    # "y0":D
    .restart local v14    # "x0":D
    :cond_8
    move-wide/from16 v23, v8

    move-object/from16 v25, v10

    move-wide/from16 v26, v12

    move-wide/from16 v28, v14

    .end local v8    # "check":D
    .end local v10    # "center":Lcom/itextpdf/kernel/geom/Point;
    .end local v12    # "y0":D
    .end local v14    # "x0":D
    .restart local v23    # "check":D
    .restart local v25    # "center":Lcom/itextpdf/kernel/geom/Point;
    .restart local v26    # "y0":D
    .restart local v28    # "x0":D
    goto :goto_1

    .line 288
    .end local v0    # "theta2":D
    .end local v2    # "startAngl":D
    .end local v4    # "extent":D
    .end local v18    # "theta1":D
    .end local v20    # "deltaTheta":J
    .end local v23    # "check":D
    .end local v25    # "center":Lcom/itextpdf/kernel/geom/Point;
    .end local v26    # "y0":D
    .end local v28    # "x0":D
    .restart local v8    # "check":D
    .restart local v10    # "center":Lcom/itextpdf/kernel/geom/Point;
    .restart local v12    # "y0":D
    .restart local v14    # "x0":D
    :cond_9
    move-wide/from16 v23, v8

    move-object/from16 v25, v10

    move-wide/from16 v26, v12

    move-wide/from16 v28, v14

    .line 346
    .end local v8    # "check":D
    .end local v10    # "center":Lcom/itextpdf/kernel/geom/Point;
    .end local v12    # "y0":D
    .end local v14    # "x0":D
    .restart local v23    # "check":D
    .restart local v25    # "center":Lcom/itextpdf/kernel/geom/Point;
    .restart local v26    # "y0":D
    .restart local v28    # "x0":D
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static getEllipse(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DDZZ)Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;
    .locals 25
    .param p0, "start"    # Lcom/itextpdf/kernel/geom/Point;
    .param p1, "end"    # Lcom/itextpdf/kernel/geom/Point;
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "sweep"    # Z
    .param p7, "largeArc"    # Z

    .line 242
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget-wide v0, v10, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v2, v11, Lcom/itextpdf/kernel/geom/Point;->x:D

    sub-double/2addr v0, v2

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    mul-double v2, v2, p2

    div-double v12, v0, v2

    .line 243
    .local v12, "r1":D
    iget-wide v0, v10, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v2, v11, Lcom/itextpdf/kernel/geom/Point;->y:D

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v2, v2, p4

    div-double v14, v0, v2

    .line 245
    .local v14, "r2":D
    mul-double v0, v12, v12

    mul-double v2, v14, v14

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    .line 246
    .local v16, "factor":D
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v16, v0

    if-lez v0, :cond_0

    .line 251
    mul-double v2, p2, v16

    mul-double v4, p4, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->getEllipse(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DDZZ)Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;

    move-result-object v0

    return-object v0

    .line 254
    :cond_0
    div-double v0, v12, v14

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v18

    .line 255
    .local v18, "between1":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->asin(D)D

    move-result-wide v20

    .line 257
    .local v20, "between2":D
    add-double v6, v18, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->calculatePossibleMiddle(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DDDZZ)Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;

    move-result-object v22

    .line 258
    .local v22, "result":Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;
    if-eqz v22, :cond_1

    .line 259
    return-object v22

    .line 261
    :cond_1
    const-wide v23, 0x400921fb54442d18L    # Math.PI

    add-double v0, v18, v23

    sub-double v6, v0, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->calculatePossibleMiddle(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DDDZZ)Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;

    move-result-object v22

    .line 262
    if-eqz v22, :cond_2

    .line 263
    return-object v22

    .line 265
    :cond_2
    add-double v23, v18, v23

    add-double v6, v23, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->calculatePossibleMiddle(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DDDZZ)Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;

    move-result-object v22

    .line 266
    if-eqz v22, :cond_3

    .line 267
    return-object v22

    .line 269
    :cond_3
    sub-double v6, v18, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->calculatePossibleMiddle(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DDDZZ)Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;

    move-result-object v0

    .line 270
    .end local v22    # "result":Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;
    .local v0, "result":Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;
    if-eqz v0, :cond_4

    .line 271
    return-object v0

    .line 273
    :cond_4
    new-instance v1, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v2, "Could not determine the middle point of the ellipse traced by this elliptical arc"

    invoke-direct {v1, v2}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static toDegrees(D)D
    .locals 4
    .param p0, "radians"    # D

    .line 367
    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    return-wide v0
.end method
