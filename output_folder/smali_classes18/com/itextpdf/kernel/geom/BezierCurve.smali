.class public Lcom/itextpdf/kernel/geom/BezierCurve;
.super Ljava/lang/Object;
.source "BezierCurve.java"

# interfaces
.implements Lcom/itextpdf/kernel/geom/IShape;


# static fields
.field public static curveCollinearityEpsilon:D = 0.0

.field public static distanceToleranceManhattan:D = 0.0

.field public static distanceToleranceSquare:D = 0.0

.field private static final serialVersionUID:J = -0x1df485308eb9d109L


# instance fields
.field private final controlPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    const-wide v0, 0x39b4484bfeebc2a0L    # 1.0E-30

    sput-wide v0, Lcom/itextpdf/kernel/geom/BezierCurve;->curveCollinearityEpsilon:D

    .line 69
    const-wide v0, 0x3f9999999999999aL    # 0.025

    sput-wide v0, Lcom/itextpdf/kernel/geom/BezierCurve;->distanceToleranceSquare:D

    .line 81
    const-wide v0, 0x3fd999999999999aL    # 0.4

    sput-wide v0, Lcom/itextpdf/kernel/geom/BezierCurve;->distanceToleranceManhattan:D

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p1, "controlPoints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    .line 92
    return-void
.end method

.method private recursiveApproximation(DDDDDDDDLjava/util/List;)V
    .locals 50
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "x2"    # D
    .param p7, "y2"    # D
    .param p9, "x3"    # D
    .param p11, "y3"    # D
    .param p13, "x4"    # D
    .param p15, "y4"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDDDDDD",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p17, "points":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    move-object/from16 v15, p17

    add-double v0, p1, p5

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v18, v0, v2

    .line 127
    .local v18, "x12":D
    add-double v0, p3, p7

    div-double v20, v0, v2

    .line 128
    .local v20, "y12":D
    add-double v0, p5, p9

    div-double v22, v0, v2

    .line 129
    .local v22, "x23":D
    add-double v0, p7, p11

    div-double v24, v0, v2

    .line 130
    .local v24, "y23":D
    add-double v0, p9, p13

    div-double v26, v0, v2

    .line 131
    .local v26, "x34":D
    add-double v0, p11, p15

    div-double v28, v0, v2

    .line 132
    .local v28, "y34":D
    add-double v0, v18, v22

    div-double v30, v0, v2

    .line 133
    .local v30, "x123":D
    add-double v0, v20, v24

    div-double v32, v0, v2

    .line 134
    .local v32, "y123":D
    add-double v0, v22, v26

    div-double v34, v0, v2

    .line 135
    .local v34, "x234":D
    add-double v0, v24, v28

    div-double v36, v0, v2

    .line 136
    .local v36, "y234":D
    add-double v0, v30, v34

    div-double v13, v0, v2

    .line 137
    .local v13, "x1234":D
    add-double v0, v32, v36

    div-double v11, v0, v2

    .line 139
    .local v11, "y1234":D
    sub-double v38, p13, p1

    .line 140
    .local v38, "dx":D
    sub-double v40, p15, p3

    .line 144
    .local v40, "dy":D
    sub-double v0, p5, p13

    mul-double v0, v0, v40

    sub-double v2, p7, p15

    mul-double v2, v2, v38

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v42

    .line 147
    .local v42, "d2":D
    sub-double v0, p9, p13

    mul-double v0, v0, v40

    sub-double v2, p11, p15

    mul-double v2, v2, v38

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v44

    .line 151
    .local v44, "d3":D
    sget-wide v0, Lcom/itextpdf/kernel/geom/BezierCurve;->curveCollinearityEpsilon:D

    cmpl-double v2, v42, v0

    if-gtz v2, :cond_1

    cmpl-double v0, v44, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    add-double v0, p1, p9

    sub-double v0, v0, p5

    sub-double v0, v0, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    add-double v2, p3, p11

    sub-double v2, v2, p7

    sub-double v2, v2, p7

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    add-double v2, p5, p13

    sub-double v2, v2, p9

    sub-double v2, v2, p9

    .line 161
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    add-double v2, p7, p15

    sub-double v2, v2, p11

    sub-double v2, v2, p11

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    sget-wide v2, Lcom/itextpdf/kernel/geom/BezierCurve;->distanceToleranceManhattan:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    .line 162
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v0, v13, v14, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-void

    .line 154
    :cond_1
    :goto_0
    add-double v0, v42, v44

    add-double v2, v42, v44

    mul-double/2addr v0, v2

    sget-wide v2, Lcom/itextpdf/kernel/geom/BezierCurve;->distanceToleranceSquare:D

    mul-double v4, v38, v38

    mul-double v6, v40, v40

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    .line 155
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v0, v13, v14, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-void

    .line 167
    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, v18

    move-wide/from16 v7, v20

    move-wide/from16 v9, v30

    move-wide/from16 v46, v11

    .end local v11    # "y1234":D
    .local v46, "y1234":D
    move-wide/from16 v11, v32

    move-wide/from16 v48, v13

    .end local v13    # "x1234":D
    .local v48, "x1234":D
    move-wide/from16 v15, v46

    move-object/from16 v17, p17

    invoke-direct/range {v0 .. v17}, Lcom/itextpdf/kernel/geom/BezierCurve;->recursiveApproximation(DDDDDDDDLjava/util/List;)V

    .line 168
    move-wide/from16 v1, v48

    move-wide/from16 v3, v46

    move-wide/from16 v5, v34

    move-wide/from16 v7, v36

    move-wide/from16 v9, v26

    move-wide/from16 v11, v28

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    invoke-direct/range {v0 .. v17}, Lcom/itextpdf/kernel/geom/BezierCurve;->recursiveApproximation(DDDDDDDDLjava/util/List;)V

    .line 169
    return-void
.end method


# virtual methods
.method public getBasePoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    return-object v0
.end method

.method public getPiecewiseLinearApproximation()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v1

    .local v13, "points":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    move-object/from16 v17, v13

    .line 111
    iget-object v1, v15, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v1, v15, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v1

    iget-object v4, v15, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v3

    iget-object v5, v15, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    .line 114
    const/4 v14, 0x1

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v5

    iget-object v7, v15, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v7

    iget-object v9, v15, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    .line 115
    const/4 v11, 0x2

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v9

    iget-object v12, v15, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v11

    iget-object v14, v15, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    .line 116
    move-object/from16 v18, v0

    const/4 v0, 0x3

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {v14}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v19

    move-object/from16 v21, v13

    const/16 v22, 0x1

    .end local v13    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    .local v21, "points":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    move-wide/from16 v13, v19

    move-wide/from16 v19, v1

    iget-object v1, v15, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v0

    move-object v2, v15

    move-wide v15, v0

    .line 113
    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-direct/range {v0 .. v17}, Lcom/itextpdf/kernel/geom/BezierCurve;->recursiveApproximation(DDDDDDDDLjava/util/List;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, v21

    .end local v21    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    .local v2, "points":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    return-object v2
.end method
