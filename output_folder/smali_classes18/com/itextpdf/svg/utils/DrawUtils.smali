.class public Lcom/itextpdf/svg/utils/DrawUtils;
.super Ljava/lang/Object;
.source "DrawUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arc(DDDDDDLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 17
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "x2"    # D
    .param p6, "y2"    # D
    .param p8, "startAng"    # D
    .param p10, "extent"    # D
    .param p12, "cv"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 89
    invoke-static/range {p0 .. p11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->bezierArc(DDDDDD)Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, "ar":Ljava/util/List;, "Ljava/util/List<[D>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 92
    .local v2, "pt":[D
    const/4 v3, 0x2

    aget-wide v5, v2, v3

    const/4 v3, 0x3

    aget-wide v7, v2, v3

    const/4 v3, 0x4

    aget-wide v9, v2, v3

    const/4 v3, 0x5

    aget-wide v11, v2, v3

    const/4 v3, 0x6

    aget-wide v13, v2, v3

    const/4 v3, 0x7

    aget-wide v15, v2, v3

    move-object/from16 v4, p12

    invoke-virtual/range {v4 .. v16}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 93
    .end local v2    # "pt":[D
    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method public static arc(FFFFFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 16
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "startAng"    # F
    .param p5, "extent"    # F
    .param p6, "cv"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    move/from16 v0, p0

    float-to-double v1, v0

    move/from16 v14, p1

    float-to-double v3, v14

    move/from16 v15, p2

    float-to-double v5, v15

    move/from16 v13, p3

    float-to-double v7, v13

    move/from16 v11, p4

    float-to-double v9, v11

    move/from16 v12, p5

    float-to-double v13, v12

    move-wide v11, v13

    move-object/from16 v13, p6

    invoke-static/range {v1 .. v13}, Lcom/itextpdf/svg/utils/DrawUtils;->arc(DDDDDDLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 74
    return-void
.end method
